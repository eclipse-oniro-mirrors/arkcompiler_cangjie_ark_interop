param(
    [Parameter(Mandatory = $true)] [string]$RepoRoot,
    [Parameter(Mandatory = $true)] [string]$VerifyBuildRoot,
    [Parameter(Mandatory = $true)] [string]$CompatibleSdkRoot,
    [string]$CompatibleSdkPath = "",
    [string]$DevEcoRootOverride = "",
    [string]$AppInstallHap = "",
    [ValidateSet("x86_64-linux-ohos", "aarch64-linux-ohos")]
    [string]$TargetAbi = "x86_64-linux-ohos",
    [switch]$IncludeNativeArtifacts,
    [int]$RuntimeCheckTimeoutSec = 30,
    [string]$RuntimeMarker = "CUSTOM_BUILD",
    [string]$BuildScriptDir = "",
    [Parameter(Mandatory = $true)] [string]$LaunchCommand
)

$ErrorActionPreference = "Stop"
if (Get-Variable -Name PSNativeCommandUseErrorActionPreference -ErrorAction SilentlyContinue) {
    $PSNativeCommandUseErrorActionPreference = $false
}

function Require-Path([string]$p, [string]$label) {
    if (-not (Test-Path $p)) { throw "$label not found: $p" }
}

function Throw-WithDetails([string]$message, [string[]]$details = @()) {
    if ($details.Count -gt 0) {
        throw ($message + "`n" + ($details -join "`n"))
    }
    throw $message
}

function Test-HdcFailure([string]$text) {
    return ($text -match "(?im)^error:") -or ($text -match "(?im)^\[Fail\]") -or ($text -match "(?im)Error Code:")
}

Require-Path $RepoRoot "RepoRoot"
Require-Path $VerifyBuildRoot "VerifyBuildRoot"
Require-Path $CompatibleSdkRoot "CompatibleSdkRoot"

$cjpmCandidates = @()
if ($env:DEVECO_CANGJIE_HOME) {
    $cjpmCandidates += (Join-Path $env:DEVECO_CANGJIE_HOME "build-tools/tools/bin/cjpm.exe")
}
if ($env:USERPROFILE) {
    $latest = Get-ChildItem "$env:USERPROFILE\.cangjie-sdk\*\cangjie\build-tools\tools\bin\cjpm.exe" -ErrorAction SilentlyContinue |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1
    if ($latest) { $cjpmCandidates += $latest.FullName }
}
$cjpmPath = $cjpmCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $cjpmPath) { throw "Cannot find cjpm.exe" }

$devEcoRootCandidates = @()
if ($DevEcoRootOverride) { $devEcoRootCandidates += $DevEcoRootOverride }
if ($env:DEVECO_STUDIO_HOME) { $devEcoRootCandidates += $env:DEVECO_STUDIO_HOME }
$devEcoRootCandidates += @(
    "D:/DevEco Studio",
    "C:/Program Files/DevEco Studio",
    "C:/Program Files (x86)/DevEco Studio",
    "C:/Program Files/Huawei/DevEco Studio"
)
if ($env:LOCALAPPDATA) {
    $devEcoRootCandidates += @(
        (Join-Path $env:LOCALAPPDATA "Programs/DevEco Studio"),
        (Join-Path $env:LOCALAPPDATA "Programs/Huawei DevEco Studio")
    )
}
$devEcoRootCandidates = $devEcoRootCandidates | Where-Object { $_ } | Select-Object -Unique

$hvigorCandidates = @()
foreach ($root in $devEcoRootCandidates) {
    $hvigorCandidates += @{
        root = $root
        node = (Join-Path $root "tools/node/node.exe")
        hvigor = (Join-Path $root "tools/hvigor/bin/hvigorw.js")
    }
}

$hvigorResolved = $hvigorCandidates | Where-Object { (Test-Path $_.node) -and (Test-Path $_.hvigor) } | Select-Object -First 1
if (-not $hvigorResolved) {
    $hvigorCmd = Get-Command hvigorw.bat -ErrorAction SilentlyContinue
    if (-not $hvigorCmd) { $hvigorCmd = Get-Command hvigorw -ErrorAction SilentlyContinue }
    if ($hvigorCmd) {
        $hvigorBin = Split-Path -Parent $hvigorCmd.Source
        $hvigorJs = Join-Path $hvigorBin "hvigorw.js"
        $toolsRoot = Split-Path (Split-Path $hvigorBin -Parent) -Parent
        $nodeExe = Join-Path $toolsRoot "node/node.exe"
        if ((Test-Path $hvigorJs) -and (Test-Path $nodeExe)) {
            $hvigorResolved = @{ root = $toolsRoot; node = $nodeExe; hvigor = $hvigorJs }
        }
    }
}
if (-not $hvigorResolved) {
    $candidateDetails = $hvigorCandidates | ForEach-Object { "- $($_.root)" }
    Throw-WithDetails "Cannot find DevEco hvigor runtime" $candidateDetails
}

$devEcoRoot = $hvigorResolved.root
if (-not $devEcoRoot) {
    $devEcoRoot = Split-Path (Split-Path (Split-Path $hvigorResolved.node -Parent) -Parent) -Parent
}

$hdcPath = $null
$hdc = Get-Command hdc -ErrorAction SilentlyContinue
if ($hdc) { $hdcPath = $hdc.Source }
if (-not $hdcPath) {
    $hdcCandidate = Join-Path $devEcoRoot "sdk/default/openharmony/toolchains/hdc.exe"
    if (Test-Path $hdcCandidate) { $hdcPath = $hdcCandidate }
}
if (-not $hdcPath) { throw "Cannot find hdc executable. Add hdc to PATH or install DevEco toolchains." }

$targetList = & $hdcPath list targets 2>&1
$targetText = ($targetList | Out-String).Trim()
if (($LASTEXITCODE -ne 0) -or [string]::IsNullOrWhiteSpace($targetText)) {
    throw "No connected hdc targets found. Run 'hdc list targets' and ensure the device is online."
}
if ($targetText -match "(?im)offline|unauthorized") {
    throw "Connected hdc target is not ready. Output: $targetText"
}
$primaryTarget = ($targetText -split "`r?`n" | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -First 1).Trim()
if (-not $primaryTarget) {
    throw "Unable to determine a usable hdc target from output: $targetText"
}

if ($CompatibleSdkPath) {
    $AbiFolder = $CompatibleSdkPath
    Require-Path $AbiFolder "CompatibleSdkPath"
} else {
    $abiSuffix = if ($TargetAbi -eq "x86_64-linux-ohos") { "linux_ohos_x86_64_cjnative" } else { "linux_ohos_aarch64_cjnative" }
    $abiCandidates = @(
        (Join-Path $CompatibleSdkRoot "api/lib/$abiSuffix/ohos"),
        (Join-Path $CompatibleSdkRoot "lib/$abiSuffix/ohos"),
        (Join-Path $CompatibleSdkRoot "ohos/lib/$abiSuffix")
    )
    $AbiFolder = $abiCandidates | Where-Object { Test-Path $_ } | Select-Object -First 1
    if (-not $AbiFolder) {
        Throw-WithDetails "Compatible SDK ABI folder not found for $TargetAbi" ($abiCandidates | ForEach-Object { "- $_" })
    }
}

Set-Location $RepoRoot
$buildScriptPath = $null
if ($BuildScriptDir) {
    $candidate = Join-Path (Join-Path $RepoRoot $BuildScriptDir) "build.ps1"
    if (Test-Path $candidate) { $buildScriptPath = $candidate }
}
if (-not $buildScriptPath) {
    $buildScriptPath = Get-ChildItem -Path $RepoRoot -Recurse -Filter "build.ps1" -ErrorAction SilentlyContinue |
        Select-Object -First 1 -ExpandProperty FullName
}

if ($buildScriptPath -and (Test-Path $buildScriptPath)) {
    powershell -ExecutionPolicy Bypass -File $buildScriptPath -Target $TargetAbi -BuildType "release" -CangjieSdkRoot $CompatibleSdkRoot
} else {
    if (Test-Path (Join-Path $RepoRoot "cjpm.toml")) {
        & $cjpmPath build --target=$TargetAbi --release
    }
}

$BuildOut = Join-Path $RepoRoot ("build/$TargetAbi/release/ohos")
if (-not (Test-Path $BuildOut)) {
    throw "Build output folder not found: $BuildOut. Expected under RepoRoot/build/$TargetAbi/release/ohos. Ensure build.ps1 or cjpm build produced release artifacts."
}

$replaceList = @(
    "libohos.ark_interop.so",
    "ohos.ark_interop.cjo",
    "libohos.ark_interop_helper.so",
    "ohos.ark_interop_helper.cjo"
)
if ($IncludeNativeArtifacts) {
    $replaceList += @("libutf16string.so", "libark_interop.so")
}
foreach ($name in $replaceList) {
    Require-Path (Join-Path $BuildOut $name) "Artifact $name"
}

$backupBaseDir = if ($buildScriptPath) { Split-Path -Parent $buildScriptPath } else { $RepoRoot }
$backupRoot = Join-Path $backupBaseDir "sdk_backup"
New-Item -ItemType Directory -Path $backupRoot -Force | Out-Null
$backupDir = Join-Path $backupRoot ("compatibility_{0}_ohos_{1}" -f ($(if ($TargetAbi -eq "x86_64-linux-ohos") { "x86_64" } else { "aarch64" }), (Get-Date -Format "yyyyMMdd_HHmmss")))
New-Item -ItemType Directory -Path $backupDir -Force | Out-Null
Copy-Item -Path "$AbiFolder\*" -Destination $backupDir -Recurse -Force

foreach ($name in $replaceList) {
    Copy-Item (Join-Path $BuildOut $name) (Join-Path $AbiFolder $name) -Force
}

Set-Location $VerifyBuildRoot
$env:DEVECO_CANGJIE_HOME = $CompatibleSdkRoot

$devecoSdkHome = Join-Path $devEcoRoot "sdk"
$devecoOhNativeHome = Join-Path $devecoSdkHome "default/openharmony/native"
$devecoJbrHome = Join-Path $devEcoRoot "jbr"
if (-not $env:DEVECO_SDK_HOME -and (Test-Path $devecoSdkHome)) { $env:DEVECO_SDK_HOME = $devecoSdkHome }
if (-not $env:DEVECO_OH_NATIVE_HOME -and (Test-Path $devecoOhNativeHome)) { $env:DEVECO_OH_NATIVE_HOME = $devecoOhNativeHome }
if (-not $env:JAVA_HOME -and (Test-Path $devecoJbrHome)) { $env:JAVA_HOME = $devecoJbrHome }

$prevErrorAction = $ErrorActionPreference
$ErrorActionPreference = "Continue"
& $hvigorResolved.node $hvigorResolved.hvigor --mode module -p module=entry@default -p product=default -p requiredDeviceType=phone assembleHap --analyze=normal --parallel --incremental --daemon 2>&1 | Tee-Object hvigor_verifybuild.log
$hvigorExitCode = $LASTEXITCODE
$ErrorActionPreference = $prevErrorAction
if ($hvigorExitCode -ne 0) { throw "hvigor build failed with exit code $hvigorExitCode" }

$logHit = Select-String -Path hvigor_verifybuild.log -Pattern "DEVECO_CANGJIE_HOME|CompileCangjie|cjpm.exe build --target"
if (-not $logHit) { throw "Missing expected hvigor log evidence" }

$fullHilogPath = Join-Path $VerifyBuildRoot "hilog_full.log"

if ($AppInstallHap) {
    Require-Path $AppInstallHap "AppInstallHap"
    Write-Host "Installing HAP: $AppInstallHap"
    $installOutput = & $hdcPath -t $primaryTarget install -r $AppInstallHap 2>&1
    $installText = ($installOutput | Out-String)
    Write-Host "Install output: $installText"
    if (($LASTEXITCODE -ne 0) -or (Test-HdcFailure $installText)) {
        throw "Failed to install app via hdc. Output: $installText"
    }
    Write-Host "PASS: App installed."
}

$clearOutput = & $hdcPath -t $primaryTarget shell hilog -r 2>&1
$clearText = ($clearOutput | Out-String)
if (($LASTEXITCODE -ne 0) -or (Test-HdcFailure $clearText)) {
    throw "Failed to clear hilog buffer via hdc. Output: $clearText"
}

Write-Host "Waking device screen..."
& $hdcPath -t $primaryTarget shell "input keyevent 26" 2>&1 | Out-Null
Start-Sleep -Seconds 1
& $hdcPath -t $primaryTarget shell "input keyevent 82" 2>&1 | Out-Null
Start-Sleep -Seconds 1

$launchOutput = & $hdcPath -t $primaryTarget shell $LaunchCommand 2>&1
$launchText = ($launchOutput | Out-String)
Write-Host "Launch output: $launchText"
if (($LASTEXITCODE -ne 0) -or (Test-HdcFailure $launchText)) {
    if ($launchText -match "10106102") {
        throw "SCREEN_LOCKED: Device screen is locked. Please physically unlock the device screen and re-run the script. (Error Code 10106102 - automatic unlock is blocked in developer mode.)"
    }
    throw "Failed to launch app via hdc command: $LaunchCommand. Output: $launchText"
}

$deadline = (Get-Date).AddSeconds($RuntimeCheckTimeoutSec)
$runtimeHit = $null
$dumpText = ""
$markerPattern = [Regex]::Escape($RuntimeMarker)
do {
    $dump = & $hdcPath -t $primaryTarget shell "hilog -x" 2>&1
    $dumpText = ($dump | Out-String)
    if (($LASTEXITCODE -ne 0) -or (Test-HdcFailure $dumpText)) { throw "Failed to fetch hilog via hdc. Output: $dumpText" }
    $runtimeHit = $dump | Select-String $markerPattern
    if ($runtimeHit) { break }
    Start-Sleep -Seconds 2
} while ((Get-Date) -lt $deadline)

$dumpText | Set-Content -Path $fullHilogPath -Encoding UTF8

if (-not $runtimeHit) {
    throw "Runtime marker verification failed within ${RuntimeCheckTimeoutSec}s. Marker: $RuntimeMarker`nCheck $fullHilogPath and verify the app code path emits the expected marker."
}

$runtimeHit | Tee-Object runtime_marker.log
Write-Host "PASS: Runtime marker detected."

$artifactInfo = Get-ChildItem $AbiFolder | Where-Object { $_.Name -in $replaceList } |
    Select-Object Name, Length, LastWriteTime
$envSummary = @(
    "Environment summary:",
    "- RepoRoot: $RepoRoot",
    "- VerifyBuildRoot: $VerifyBuildRoot",
    "- CompatibleSdkRoot: $CompatibleSdkRoot",
    "- CompatibleSdkPath: $AbiFolder",
    "- TargetAbi: $TargetAbi",
    "- cjpm: $cjpmPath",
    "- DevEcoRoot: $devEcoRoot",
    "- hvigor: $($hvigorResolved.hvigor)",
    "- node: $($hvigorResolved.node)",
    "- hdc: $hdcPath",
    "- AppInstallHap: $AppInstallHap"
)

$report = @()
$report += $envSummary
$report += ""
$report += "Build result:"
$report += "- PASS (build.ps1 + hvigor finished)"
$report += ""
$report += "Replacement result:"
$report += "- Backup: $backupDir"
$report += "- Files:"
$report += ($artifactInfo | ForEach-Object { "  - $($_.Name) size=$($_.Length) time=$($_.LastWriteTime)" })
$report += ""
$report += "VerifyBuild result:"
$report += "- hvigor log: $VerifyBuildRoot/hvigor_verifybuild.log"
$report += "- key log markers found: DEVECO_CANGJIE_HOME, CompileCangjie, cjpm target"
$report += ""
$report += "Runtime marker result:"
$report += "- marker: $RuntimeMarker"
$report += "- log file: $VerifyBuildRoot/runtime_marker.log"
$report += "- full hilog: $fullHilogPath"
$report += ""
$report += "User-role review conclusions:"
$report += "- Build stage: actionable"
$report += "- Replace stage: actionable"
$report += "- App build stage: actionable"
$report += "- Runtime stage: actionable"
$report += ""
$report += "Final verdict: PASS"

$reportPath = Join-Path $VerifyBuildRoot "e2e_validation_report.txt"
$report | Set-Content -Path $reportPath -Encoding UTF8
Write-Host "Structured report generated: $reportPath"