/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ohos.ark_interop

import std.regex.*
import std.collection.*

import ohos.business_exception.*

class ArkModuleHelper {
    private static let idReg = Regex("^[A-Za-z][A-Za-z0-9_]*$")
    private static func isIdentifier(name: String): Bool {
        return idReg.find(name).isSome()
    }
    // normalize kitConfigs to api set.
    private static let apiSets = LazyInit {
        let result = HashSet<String>()
        for ((_, kitConfig) in KIT_CONFIGS) {
            for ((apiName, _) in kitConfig) {
                result.add(apiName)
            }
        }
        return result
    }

    /**
     * check src is valid.
     *
     *  valid src formats:
     *  1. app native module, like: libentry.so, libohos_app_default_entry.so
     *  2. system apis(whitelist), like: @ohos.hilog, @hms.core.AAID, @kit.ArkUI
     *  3. ets source file, like: entry/src/main/ets/Index, localhar/Index, @ohos/lottie/src/main/js/main
     */
    static func checkSpecifier(src: String): Bool {
        let parts = src.split("/")
        let fileName = parts.last.getOrThrow {
            moduleNotExist(src)
        }
        // check is path
        if (parts.size == 1) {
            // check app native module
            if (fileName.startsWith("lib") && fileName.endsWith(".so")) {
                let reg = Regex("^lib[A-Za-z0-9_\\.]+\\.so$")
                return reg.find(fileName).isSome()
            }
            // check kit with whitelist
            if (fileName.startsWith("@kit.")) {
                return KIT_CONFIGS.contains(src)
            }
            // check system apis with whitelist
            return apiSets.data.contains(src);
        }
        // check path valid
        let head = parts[0]
        if (head.startsWith("@")) {
            if (!isIdentifier(head[1..head.size])) {
                return false
            }
        } else {
            if (!isIdentifier(head)) {
                return false
            }
        }
        for (part in parts[1..parts.size]) {
            if (!isIdentifier(part)) {
                return false
            }
        }
        return true
    }

    // Those are not standard napi modules, but special apis provide by libace_compatible.z.so.
    // need to fix the url prefix to "@native:" or loading may fail.
    private static let nativeSet = HashSet<String>(
        "system.app",
        "ohos.app",
        "system.router",
        "system.curves",
        "ohos.curves",
        "system.matrix4",
        "ohos.matrix4"
    )
    /**
     * Decide which api to call, get the final url to runtime.
     */
    static func resolveUrl(src: String): (String, Int32) {
        // expect src.size > 0
        // process native url
        if (src.startsWith("@") && nativeSet.contains(src[1..src.size])) {
            let url = "@native:" + src[1..src.size]
            return (url, 0)
        }
        // process bundle
        if (let Some(bundle) <- BUNDLE_MAP.get(src)) {
            let url = "@bundle:" + bundle
            return (url, 1)
        }
        return (src, 1)
    }
}