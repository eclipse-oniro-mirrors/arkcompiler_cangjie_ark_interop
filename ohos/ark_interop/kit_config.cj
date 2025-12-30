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

import std.collection.*

enum Decl {
    | Name(String)
    | Mapping(String, String)
}

enum ImportClause {
    | Package(String)
    | Decls(Array<Decl>)
}

type KitConfig = HashMap<String, ImportClause>
type KitConfigs = HashMap<String, KitConfig>

let kitConfigs = HashMap<String, KitConfig>(
    ("@kit.AVSessionKit", KitConfig(
        ("@ohos.multimedia.avCastPicker", Package("AVCastPicker")),
        ("@ohos.multimedia.avInputCastPicker", Decls([
            Name("AVInputCastPicker")
        ])),
        ("@ohos.multimedia.avCastPickerParam", Decls([
            Name("AVCastPickerState"),
            Name("AVCastPickerStyle"),
            Name("AVCastPickerColorMode")
        ])),
        ("@ohos.multimedia.avsession", Package("avSession")),
        ("@ohos.multimedia.avMusicTemplate", Package("avMusicTemplate")),
        ("@ohos.app.ability.MediaControlExtensionAbility", Package("MediaControlExtensionAbility")),
    )),
    ("@kit.AbilityKit", KitConfig(
        ("@ohos.ability.ability", Package("ability")),
        ("@ohos.ability.errorCode", Decls([
            Name("ErrorCode")
        ])),
        ("@ohos.ability.featureAbility", Package("featureAbility")),
        ("@ohos.ability.particleAbility", Package("particleAbility")),
        ("@ohos.abilityAccessCtrl", Package("abilityAccessCtrl")),
        ("@ohos.app.ability.Ability", Package("Ability")),
        ("@ohos.app.ability.AbilityConstant", Package("AbilityConstant")),
        ("@ohos.app.ability.AbilityLifecycleCallback", Package("AbilityLifecycleCallback")),
        ("@ohos.app.ability.InteropAbilityLifecycleCallback", Package("InteropAbilityLifecycleCallback")),
        ("@ohos.app.ability.abilityManager", Package("abilityManager")),
        ("@ohos.app.ability.AbilityStage", Package("AbilityStage")),
        ("@ohos.app.ability.ActionExtensionAbility", Package("ActionExtensionAbility")),
        ("@ohos.app.ability.ApplicationStateChangeCallback", Package("ApplicationStateChangeCallback")),
        ("@ohos.app.ability.appManager", Package("appManager")),
        ("@ohos.app.ability.appRecovery", Package("appRecovery")),
        ("@ohos.app.ability.AutoFillExtensionAbility", Package("AutoFillExtensionAbility")),
        ("@ohos.app.ability.autoFillManager", Package("autoFillManager")),
        ("@ohos.app.ability.autoStartupManager", Package("autoStartupManager")),
        ("@ohos.app.ability.ChildProcess", Package("ChildProcess")),
        ("@ohos.app.ability.childProcessManager", Package("childProcessManager")),
        ("@ohos.app.ability.ChildProcessArgs", Decls([
            Name("ChildProcessArgs")
        ])),
        ("@ohos.app.ability.ChildProcessOptions", Decls([
            Name("ChildProcessOptions")
        ])),
        ("@ohos.app.ability.common", Package("common")),
        ("@ohos.app.ability.Configuration", Decls([
            Name("Configuration")
        ])),
        ("@ohos.app.ability.ConfigurationConstant", Package("ConfigurationConstant")),
        ("@ohos.app.ability.contextConstant", Package("contextConstant")),
        ("@ohos.app.ability.dataUriUtils", Package("dataUriUtils")),
        ("@ohos.app.ability.dialogRequest", Package("dialogRequest")),
        ("@ohos.app.ability.dialogSession", Package("dialogSession")),
        ("@ohos.app.ability.EnvironmentCallback", Package("EnvironmentCallback")),
        ("@ohos.app.ability.errorManager", Package("errorManager")),
        ("@ohos.app.ability.ExtensionAbility", Package("ExtensionAbility")),
        ("@ohos.app.ability.insightIntent", Package("insightIntent")),
        ("@ohos.app.ability.InsightIntentContext", Package("InsightIntentContext")),
        ("@ohos.app.ability.insightIntentDriver", Package("insightIntentDriver")),
        ("@ohos.app.ability.insightIntentProvider", Package("insightIntentProvider")),
        ("@ohos.app.ability.verticalPanelManager", Package("verticalPanelManager")),
        ("@ohos.app.ability.InsightIntentExecutor", Package("InsightIntentExecutor")),
        ("@ohos.app.ability.InsightIntentDecorator", Decls([
            Name("InsightIntentLink"),
            Name("InsightIntentPage"),
            Name("InsightIntentFunctionMethod"),
            Name("InsightIntentFunction"),
            Name("InsightIntentEntry"),
            Name("LinkParamCategory"),
            Name("InsightIntentForm"),
            Name("InsightIntentEntity")
        ])),
        ("@ohos.app.ability.InsightIntentEntryExecutor", Package("InsightIntentEntryExecutor")),
        ("@ohos.app.ability.missionManager", Package("missionManager")),
        ("@ohos.app.ability.OpenLinkOptions", Package("OpenLinkOptions")),
        ("@ohos.app.ability.quickFixManager", Package("quickFixManager")),
        ("@ohos.app.ability.ServiceExtensionAbility", Package("ServiceExtensionAbility")),
        ("@ohos.app.ability.ShareExtensionAbility", Package("ShareExtensionAbility")),
        ("@ohos.app.ability.StartOptions", Package("StartOptions")),
        ("@ohos.app.ability.UIAbility", Package("UIAbility")),
        ("@ohos.app.ability.UIExtensionAbility", Package("UIExtensionAbility")),
        ("@ohos.app.ability.UIExtensionContentSession", Package("UIExtensionContentSession")),
        ("@ohos.app.ability.Want", Package("Want")),
        ("@ohos.app.ability.wantConstant", Package("wantConstant")),
        ("@ohos.app.ability.wantAgent", Package("wantAgent")),
        ("@ohos.app.businessAbilityRouter", Package("businessAbilityRouter")),
        ("@ohos.application.uriPermissionManager", Package("uriPermissionManager")),
        ("@ohos.bundle.appControl", Package("appControl")),
        ("@ohos.bundle.bundleManager", Package("bundleManager")),
        ("@ohos.bundle.bundleMonitor", Package("bundleMonitor")),
        ("@ohos.bundle.bundleResourceManager", Package("bundleResourceManager")),
        ("@ohos.bundle", Package("bundle")),
        ("@ohos.bundle.defaultAppManager", Package("defaultAppManager")),
        ("@ohos.bundle.distributedBundleManager", Package("distributedBundleManager")),
        ("@ohos.bundle.freeInstall", Package("freeInstall")),
        ("@ohos.bundle.innerBundleManager", Package("innerBundleManager")),
        ("@ohos.bundle.installer", Package("installer")),
        ("@ohos.bundle.launcherBundleManager", Package("launcherBundleManager")),
        ("@ohos.bundle.overlay", Package("overlay")),
        ("@ohos.continuation.continuationManager", Package("continuationManager")),
        ("@ohos.app.ability.continueManager", Package("continueManager")),
        ("@ohos.distributedBundle", Package("distributedBundle")),
        ("@ohos.distributedMissionManager", Package("distributedMissionManager")),
        ("@system.package", Package("Package")),
        ("@ohos.privacyManager", Package("privacyManager")),
        ("@ohos.app.ability.EmbeddedUIExtensionAbility", Package("EmbeddedUIExtensionAbility")),
        ("@ohos.app.appstartup.StartupConfig", Package("StartupConfig")),
        ("@ohos.app.appstartup.StartupConfigEntry", Package("StartupConfigEntry")),
        ("@ohos.app.appstartup.StartupListener", Package("StartupListener")),
        ("@ohos.app.appstartup.StartupTask", Package("StartupTask")),
        ("@ohos.app.appstartup.startupManager", Package("startupManager")),
        ("@ohos.app.ability.sendableContextManager", Package("sendableContextManager")),
        ("@ohos.ability.screenLockFileManager", Package("screenLockFileManager")),
        ("@ohos.app.ability.AtomicServiceOptions", Package("AtomicServiceOptions")),
        ("@ohos.app.ability.EmbeddableUIAbility", Package("EmbeddableUIAbility")),
        ("@ohos.app.ability.PhotoEditorExtensionAbility", Package("PhotoEditorExtensionAbility")),
        ("@ohos.app.ability.UIServiceExtensionAbility", Package("UIServiceExtensionAbility")),
        ("@ohos.bundle.shortcutManager", Package("shortcutManager")),
        ("@ohos.app.ability.application", Package("application")),
        ("@ohos.bundle.appDomainVerify", Package("appDomainVerify")),
        ("@ohos.app.ability.CompletionHandler", Package("CompletionHandler")),
        ("@ohos.app.ability.AppServiceExtensionAbility", Package("AppServiceExtensionAbility")),
        ("@ohos.app.ability.kioskManager", Package("kioskManager")),
        ("@ohos.app.ability.CompletionHandlerForAtomicService", Package("CompletionHandlerForAtomicService")),
        ("@ohos.app.ability.CompletionHandlerForAbilityStartCallback", Decls([
            Name("CompletionHandlerForAbilityStartCallback"),
            Name("AbilityStartFailureCode")
        ])),
        ("@ohos.app.ability.abilityDelegatorRegistry", Package("abilityDelegatorRegistry")),
        ("@ohos.application.testRunner", Package("TestRunner")),
    )),
    ("@kit.AccessibilityKit", KitConfig(
        ("@ohos.accessibility.config", Package("config")),
        ("@ohos.accessibility", Decls([
            Name("AccessibilityEventType"),
            Name("AccessibilityAction")
        ])),
        ("@ohos.accessibility.GesturePath", Decls([
            Name("GesturePath")
        ])),
        ("@ohos.accessibility.GesturePoint", Decls([
            Name("GesturePoint")
        ])),
        ("@ohos.application.AccessibilityExtensionAbility", Package("AccessibilityExtensionAbility")),
    )),
    ("@kit.AdsKit", KitConfig(
        ("@ohos.advertising.AdComponent", Decls([
            Name("AdComponent")
        ])),
        ("@ohos.advertising.AdsServiceExtensionAbility", Package("AdsServiceExtensionAbility")),
        ("@ohos.advertising.AutoAdComponent", Decls([
            Name("AutoAdComponent")
        ])),
        ("@ohos.advertising", Package("advertising")),
        ("@ohos.identifier.oaid", Package("identifier")),
    )),
    ("@kit.ArkData", KitConfig(
        ("@ohos.application.DataShareExtensionAbility", Package("DataShareExtensionAbility")),
        ("@ohos.data.cloudData", Package("cloudData")),
        ("@ohos.data.cloudExtension", Package("cloudExtension")),
        ("@ohos.data.commonType", Package("commonType")),
        ("@ohos.data.dataAbility", Package("dataAbility")),
        ("@ohos.data.dataShare", Package("dataShare")),
        ("@ohos.data.dataSharePredicates", Package("dataSharePredicates")),
        ("@ohos.data.DataShareResultSet", Package("DataShareResultSet")),
        ("@ohos.data.distributedDataObject", Package("distributedDataObject")),
        ("@ohos.data.distributedKVStore", Package("distributedKVStore")),
        ("@ohos.data.preferences", Package("preferences")),
        ("@ohos.data.relationalStore", Package("relationalStore")),
        ("@ohos.data.unifiedDataChannel", Package("unifiedDataChannel")),
        ("@ohos.data.uniformTypeDescriptor", Package("uniformTypeDescriptor")),
        ("@ohos.data.uniformDataStruct", Package("uniformDataStruct")),
        ("@ohos.data.ValuesBucket", Decls([
            Name("ValueType"),
            Name("ValuesBucket")
        ])),
        ("@ohos.data.sendablePreferences", Package("sendablePreferences")),
        ("@ohos.data.sendableRelationalStore", Package("sendableRelationalStore")),
        ("@ohos.data.intelligence", Package("intelligence")),
        ("@ohos.data.UdmfComponents", Decls([
            Name("ContentFormCard"),
            Name("FormType")
        ])),
    )),
    ("@kit.ArkGraphics2D", KitConfig(
        ("@ohos.effectKit", Package("effectKit")),
        ("@ohos.graphics.colorSpaceManager", Package("colorSpaceManager")),
        ("@ohos.graphics.sendableColorSpaceManager", Package("sendableColorSpaceManager")),
        ("@ohos.graphics.hdrCapability", Package("hdrCapability")),
        ("@ohos.graphics.displaySync", Package("displaySync")),
        ("@ohos.graphics.common2D", Package("common2D")),
        ("@ohos.graphics.drawing", Package("drawing")),
        ("@ohos.graphics.text", Package("text")),
        ("@ohos.graphics.uiEffect", Package("uiEffect")),
    )),
    ("@kit.ArkGraphics3D", KitConfig(
        ("@ohos.graphics.scene", Decls([
            Name("ToneMappingType"),
            Name("ToneMappingSettings"),
            Name("PostProcessSettings"),
            Name("BloomSettings"),
            Name("Vec2"),
            Name("Vec3"),
            Name("Vec4"),
            Name("Color"),
            Name("Rect"),
            Name("Quaternion"),
            Name("Aabb"),
            Name("Position3"),
            Name("Rotation3"),
            Name("Scale3"),
            Name("GeometryType"),
            Name("GeometryDefinition"),
            Name("PrimitiveTopology"),
            Name("CustomGeometry"),
            Name("CubeGeometry"),
            Name("PlaneGeometry"),
            Name("SphereGeometry"),
            Name("CylinderGeometry"),
            Name("SceneResourceType"),
            Name("SceneResource"),
            Name("Shader"),
            Name("MaterialType"),
            Name("Material"),
            Name("ShaderMaterial"),
            Name("SubMesh"),
            Name("Mesh"),
            Name("Animation"),
            Name("EnvironmentBackgroundType"),
            Name("Environment"),
            Name("Image"),
            Name("MeshResource"),
            Name("LayerMask"),
            Name("NodeType"),
            Name("Container"),
            Name("Node"),
            Name("Geometry"),
            Name("LightType"),
            Name("Light"),
            Name("SpotLight"),
            Name("DirectionalLight"),
            Name("Camera"),
            Name("SceneResourceParameters"),
            Name("SceneNodeParameters"),
            Name("SceneResourceFactory"),
            Name("Scene"),
            Name("RenderParameters"),
            Name("RaycastResult"),
            Name("RaycastParameters"),
            Name("CullMode"),
            Name("PolygonMode"),
            Name("Blend"),
            Name("RenderSort"),
            Name("MaterialProperty"),
            Name("MetallicRoughnessMaterial"),
            Name("UnlitMaterial"),
            Name("Morpher"),
            Name("Sampler"),
            Name("SamplerFilter"),
            Name("SamplerAddressMode"),
            Name("RenderResourceFactory"),
            Name("SceneComponent"),
            Name("RenderContext"),
            Name("RenderingPipelineType"),
            Name("CameraParameters"),
            Name("EffectParameters"),
            Name("Effect"),
            Name("VignetteSettings"),
            Name("ColorFringeSettings"),
            Name("UnlitShadowAlphaMaterial"),
            Name("OcclusionMaterial"),
            Name("Mat4x4")
        ])),
    )),
    ("@kit.ArkTS", KitConfig(
        ("@ohos.buffer", Package("buffer")),
        ("@ohos.uri", Package("uri")),
        ("@ohos.url", Package("url")),
        ("@ohos.util.ArrayList", Decls([
            Name("ArrayListReplaceCb")
        ])),
        ("@ohos.util", Package("util")),
        ("@ohos.util.Deque", Decls([
            Name("DequeForEachCb")
        ])),
        ("@ohos.util.HashMap", Decls([
            Name("HashMapCbFn")
        ])),
        ("@ohos.util.HashSet", Decls([
            Name("HashSetCbFn")
        ])),
        ("@ohos.util.LightWeightMap", Decls([
            Name("LightWeightMapCbFn")
        ])),
        ("@ohos.util.LightWeightSet", Decls([
            Name("LightWeightSetForEachCb")
        ])),
        ("@ohos.util.LinkedList", Decls([
            Name("LinkedListForEachCb")
        ])),
        ("@ohos.util.List", Decls([
            Name("ListReplaceCb")
        ])),
        ("@ohos.util.PlainArray", Decls([
            Name("PlainArrayForEachCb")
        ])),
        ("@ohos.util.Queue", Decls([
            Name("QueueForEachCb")
        ])),
        ("@ohos.util.Stack", Decls([
            Name("StackForEachCb")
        ])),
        ("@ohos.util.TreeMap", Decls([
            Name("TreeMapComparator")
        ])),
        ("@ohos.util.TreeSet", Decls([
            Name("TreeSetComparator")
        ])),
        ("@ohos.xml", Package("xml")),
        ("@arkts.collections", Package("collections")),
        ("@ohos.util.stream", Package("stream")),
        ("@arkts.math.Decimal", Package("Decimal")),
        ("@ohos.convertxml", Package("convertxml")),
        ("@ohos.process", Package("process")),
        ("@ohos.taskpool", Package("taskpool")),
        ("@ohos.util.Vector", Package("Vector")),
        ("@ohos.fastbuffer", Package("fastbuffer")),
        ("@ohos.worker", Package("worker")),
        ("@ohos.util.json", Package("JSON")),
        ("@arkts.lang", Package("lang")),
        ("@arkts.utils", Package("ArkTSUtils")),
        ("@ohos.transfer", Package("transfer")),
    )),
    ("@kit.ArkUI", KitConfig(
        ("@ohos.animation.windowAnimationManager", Package("windowAnimationManager")),
        ("@ohos.animator", Package("Animator")),
        ("@ohos.application.WindowExtensionAbility", Package("WindowExtensionAbility")),
        ("@ohos.atomicservice.AtomicServiceNavigation", Decls([
            Name("AtomicServiceNavigation"),
            Name("NavDestinationBuilder"),
            Name("MixMode"),
            Name("GradientAlpha"),
            Name("BackgroundTheme"),
            Name("TitleBarType"),
            Name("SideBarOptions"),
            Name("TitleOptions"),
            Name("GradientBackground")
        ])),
        ("@ohos.atomicservice.AtomicServiceSearch", Decls([
            Name("AtomicServiceSearch"),
            Name("InputFilterParams"),
            Name("SearchButtonParams"),
            Name("MenuAlignParams"),
            Name("SearchParams"),
            Name("SelectParams"),
            Name("OperationParams")
        ])),
        ("@ohos.arkui.advanced.ArcButton", Decls([
            Name("ArcButton"),
            Name("ArcButtonOptions"),
            Name("ArcButtonProgressConfig"),
            Name("ArcButtonPosition"),
            Name("ArcButtonStyleMode"),
            Name("ArcButtonStatus")
        ])),
        ("@ohos.arkui.advanced.Chip", Decls([
            Name("Chip"),
            Name("ChipOptions"),
            Name("ChipSize"),
            Name("IconCommonOptions"),
            Name("LabelMarginOptions"),
            Name("LabelOptions"),
            Name("PrefixIconOptions"),
            Name("SuffixIconOptions"),
            Name("ChipSymbolGlyphOptions"),
            Name("AccessibilitySelectedType"),
            Name("AccessibilityOptions"),
            Name("CloseOptions"),
            Name("ChipSuffixSymbolGlyphOptions")
        ])),
        ("@ohos.atomicservice.NavPushPathHelper", Decls([
            Name("NavPushPathHelper")
        ])),
        ("@ohos.atomicservice.AtomicServiceMenuBar", Decls([
            Name("AtomicServiceMenuBar")
        ])),
        ("@ohos.arkui.advanced.ChipGroup", Decls([
            Name("IconOptions"),
            Mapping("ChipItemLabelOptions", "LabelOptions"),
            Name("ChipGroupItemOptions"),
            Name("ChipItemStyle"),
            Name("ChipGroupSpaceOptions"),
            Name("IconItemOptions"),
            Name("IconGroupSuffix"),
            Name("ChipGroup"),
            Name("SuffixImageIconOptions"),
            Name("SymbolItemOptions")
        ])),
        ("@ohos.arkui.advanced.ComposeListItem", Decls([
            Name("ComposeListItem"),
            Name("ContentItem"),
            Name("IconType"),
            Name("OperateButton"),
            Name("OperateCheck"),
            Name("OperateIcon"),
            Name("OperateItem")
        ])),
        ("@ohos.arkui.advanced.ComposeTitleBar", Decls([
            Name("ComposeTitleBar"),
            Name("ComposeTitleBarMenuItem")
        ])),
        ("@ohos.arkui.advanced.Counter", Decls([
            Name("CounterComponent"),
            Name("CounterOptions"),
            Name("CounterType"),
            Name("DateData")
        ])),
        ("@ohos.arkui.advanced.Dialog", Decls([
            Name("AlertDialog"),
            Name("ButtonOptions"),
            Name("ConfirmDialog"),
            Name("LoadingDialog"),
            Name("SelectDialog"),
            Name("TipsDialog"),
            Name("CustomContentDialog"),
            Name("PopoverDialog"),
            Name("PopoverOptions")
        ])),
        ("@ohos.arkui.advanced.DialogV2", Decls([
            Name("AlertDialogV2"),
            Name("AdvancedDialogV2Button"),
            Name("AdvancedDialogV2ButtonOptions"),
            Name("AdvancedDialogV2ButtonAction"),
            Name("AdvancedDialogV2OnCheckedChange"),
            Name("ConfirmDialogV2"),
            Name("LoadingDialogV2"),
            Name("SelectDialogV2"),
            Name("TipsDialogV2"),
            Name("CustomContentDialogV2"),
            Name("PopoverDialogV2"),
            Name("PopoverDialogV2OnVisibleChange"),
            Name("PopoverDialogV2Options")
        ])),
        ("@ohos.arkui.advanced.EditableTitleBar", Decls([
            Name("EditableLeftIconType"),
            Name("EditableTitleBar"),
            Name("EditableTitleBarMenuItem"),
            Name("EditableTitleBarItem"),
            Name("EditableTitleBarOptions")
        ])),
        ("@ohos.arkui.advanced.ExceptionPrompt", Decls([
            Name("MarginType"),
            Name("PromptOptions"),
            Name("ExceptionPrompt")
        ])),
        ("@ohos.arkui.advanced.Filter", Decls([
            Name("Filter"),
            Name("FilterParams"),
            Name("FilterResult"),
            Name("FilterType")
        ])),
        ("@ohos.arkui.advanced.FormMenu", Decls([
            Name("AddFormMenuItem"),
            Name("FormMenuItemStyle"),
            Name("AddFormOptions")
        ])),
        ("@ohos.arkui.advanced.GridObjectSortComponent", Decls([
            Name("GridObjectSortComponentType"),
            Name("GridObjectSortComponentItem"),
            Name("GridObjectSortComponentOptions"),
            Name("GridObjectSortComponent")
        ])),
        ("@ohos.arkui.advanced.Popup", Decls([
            Name("Popup"),
            Name("PopupButtonOptions"),
            Name("PopupIconOptions"),
            Name("PopupOptions"),
            Name("PopupTextOptions")
        ])),
        ("@ohos.arkui.advanced.ProgressButton", Decls([
            Name("ProgressButton")
        ])),
        ("@ohos.arkui.advanced.ProgressButtonV2", Decls([
            Name("ProgressButtonV2"),
            Name("ProgressButtonV2Color"),
            Name("ProgressButtonV2ColorOptions")
        ])),
        ("@ohos.arkui.advanced.SegmentButton", Decls([
            Name("SegmentButton"),
            Name("SegmentButtonOptions"),
            Name("SegmentButtonItemOptionsArray"),
            Name("TabSegmentButtonOptions"),
            Name("TabSegmentButtonConstructionOptions"),
            Name("CapsuleSegmentButtonOptions"),
            Name("CapsuleSegmentButtonConstructionOptions"),
            Name("SegmentButtonTextItem"),
            Name("SegmentButtonIconItem"),
            Name("SegmentButtonIconTextItem"),
            Name("DimensionNoPercentage"),
            Name("CommonSegmentButtonOptions"),
            Name("ItemRestriction"),
            Name("SegmentButtonItemTuple"),
            Name("SegmentButtonItemArray"),
            Name("SegmentButtonItemOptionsConstructorOptions"),
            Name("SegmentButtonItemOptions"),
            Name("BorderRadiusMode")
        ])),
        ("@ohos.arkui.advanced.SelectionMenu", Decls([
            Name("EditorEventInfo"),
            Name("EditorMenuOptions"),
            Name("ExpandedMenuOptions"),
            Name("SelectionMenu"),
            Name("SelectionMenuOptions")
        ])),
        ("@ohos.arkui.advanced.SelectTitleBar", Decls([
            Name("SelectTitleBar"),
            Name("SelectTitleBarMenuItem")
        ])),
        ("@ohos.arkui.advanced.SplitLayout", Decls([
            Name("SplitLayout")
        ])),
        ("@ohos.arkui.advanced.SubHeader", Decls([
            Name("OperationOption"),
            Name("OperationType"),
            Name("SelectOptions"),
            Name("SubHeader"),
            Name("SymbolOptions")
        ])),
        ("@ohos.arkui.advanced.SwipeRefresher", Decls([
            Name("SwipeRefresher")
        ])),
        ("@ohos.arkui.advanced.TabTitleBar", Decls([
            Name("TabTitleBar"),
            Name("TabTitleBarMenuItem"),
            Name("TabTitleBarTabItem")
        ])),
        ("@ohos.arkui.advanced.ToolBar", Decls([
            Name("ItemState"),
            Name("ToolBar"),
            Name("ToolBarOption"),
            Name("ToolBarOptions"),
            Name("ToolBarModifier")
        ])),
        ("@ohos.arkui.advanced.ToolBarV2", Decls([
            Name("ToolBarV2ItemState"),
            Name("ToolBarV2SymbolGlyph"),
            Name("ToolBarV2SymbolGlyphOptions"),
            Name("ToolBarV2ItemText"),
            Name("ToolBarV2ItemTextOptions"),
            Name("ToolBarV2ItemIconType"),
            Name("ToolBarV2ItemImage"),
            Name("ToolBarV2ItemImageOptions"),
            Name("ToolBarV2"),
            Name("ToolBarV2Item"),
            Name("ToolBarV2ItemOptions"),
            Name("ToolBarV2Modifier"),
            Name("ToolBarV2ItemAction")
        ])),
        ("@ohos.arkui.advanced.TreeView", Decls([
            Name("CallbackParam"),
            Name("NodeParam"),
            Name("TreeController"),
            Name("TreeListenType"),
            Name("TreeListener"),
            Name("TreeListenerManager"),
            Name("TreeView")
        ])),
        ("@ohos.atomicservice.InterstitialDialogAction", Decls([
            Name("InterstitialDialogAction"),
            Name("IconStyle"),
            Name("TitlePosition"),
            Name("BottomOffset")
        ])),
        ("@ohos.arkui.componentSnapshot", Package("componentSnapshot")),
        ("@ohos.arkui.componentUtils", Package("componentUtils")),
        ("@ohos.arkui.dragController", Package("dragController")),
        ("@ohos.arkui.drawableDescriptor", Decls([
            Name("DrawableDescriptor"),
            Name("LayeredDrawableDescriptor"),
            Name("PixelMapDrawableDescriptor"),
            Name("AnimationOptions"),
            Name("AnimatedDrawableDescriptor"),
            Name("AnimationController"),
            Name("DrawableDescriptorLoadedResult")
        ])),
        ("@ohos.arkui.inspector", Package("inspector")),
        ("@ohos.arkui.node", Decls([
            Name("NodeRenderType"),
            Name("RenderOptions"),
            Name("BuilderNode"),
            Name("ReactiveBuilderNode"),
            Name("BuildOptions"),
            Name("NodeController"),
            Name("FrameNode"),
            Name("DrawContext"),
            Name("Size"),
            Name("Offset"),
            Name("Position"),
            Name("Pivot"),
            Name("Scale"),
            Name("Translation"),
            Name("Matrix4"),
            Name("Rotation"),
            Name("Frame"),
            Name("RenderNode"),
            Name("XComponentNode"),
            Name("LengthMetrics"),
            Name("ColorMetrics"),
            Name("LengthUnit"),
            Name("LengthMetricsUnit"),
            Name("LayoutConstraint"),
            Name("ComponentContent"),
            Name("ReactiveComponentContent"),
            Name("NodeContent"),
            Name("Content"),
            Name("typeNode"),
            Name("NodeAdapter"),
            Name("ShapeMask"),
            Name("ShapeClip"),
            Name("Rect"),
            Name("RoundRect"),
            Name("edgeColors"),
            Name("edgeWidths"),
            Name("borderStyles"),
            Name("borderRadiuses"),
            Name("ExpandMode"),
            Name("UIState"),
            Name("InputEventType")
        ])),
        ("@ohos.arkui.observer", Package("uiObserver")),
        ("@ohos.arkui.performanceMonitor", Package("performanceMonitor")),
        ("@ohos.arkui.StateManagement", Decls([
            Name("AppStorageV2"),
            Name("PersistenceV2"),
            Name("Type"),
            Name("UIUtils"),
            Name("ConnectOptions"),
            Name("Binding"),
            Name("MutableBinding"),
            Name("CustomComponentLifecycle"),
            Name("CustomComponentLifecycleObserver"),
            Name("CustomComponentLifecycleState"),
            Name("ComponentInit"),
            Name("ComponentAppear"),
            Name("ComponentBuilt"),
            Name("ComponentAttach"),
            Name("ComponentDetach"),
            Name("ComponentReuse"),
            Name("ComponentRecycle"),
            Name("ComponentDisappear"),
            Name("CollectionType"),
            Name("ConnectOptionsCollections")
        ])),
        ("@ohos.arkui.shape", Decls([
            Name("RectShape"),
            Name("CircleShape"),
            Name("EllipseShape"),
            Name("PathShape")
        ])),
        ("@ohos.arkui.UIContext", Decls([
            Name("SwiperContentInfo"),
            Name("SwiperItemInfo")
        ])),
        ("@ohos.curves", Package("curves")),
        ("@ohos.atomicservice.AtomicServiceWeb", Decls([
            Name("AtomicServiceWeb"),
            Name("OnMessageEvent"),
            Name("OnErrorReceiveEvent"),
            Name("OnHttpErrorReceiveEvent"),
            Name("OnPageBeginEvent"),
            Name("OnPageEndEvent"),
            Name("AtomicServiceWebController"),
            Name("OnLoadInterceptEvent"),
            Name("OnProgressChangeEvent"),
            Name("OnLoadInterceptCallback"),
            Name("WebHeader")
        ])),
        ("@ohos.deviceStatus.dragInteraction", Package("dragInteraction")),
        ("@ohos.display", Package("display")),
        ("@ohos.font", Package("font")),
        ("@ohos.matrix4", Package("matrix4")),
        ("@ohos.measure", Package("MeasureText")),
        ("@ohos.mediaquery", Package("mediaquery")),
        ("@ohos.PiPWindow", Package("PiPWindow")),
        ("@ohos.window.floatingBall", Package("floatingBall")),
        ("@ohos.pluginComponent", Package("pluginComponentManager")),
        ("@ohos.prompt", Package("prompt")),
        ("@ohos.promptAction", Package("promptAction")),
        ("@ohos.router", Package("router")),
        ("@ohos.screen", Package("screen")),
        ("@ohos.screenshot", Package("screenshot")),
        ("@ohos.uiAppearance", Package("uiAppearance")),
        ("@ohos.uiExtensionHost", Package("uiExtensionHost")),
        ("@ohos.window", Package("window")),
        ("@system.app", Package("App")),
        ("@system.configuration", Package("Configuration")),
        ("@system.mediaquery", Package("SystemMediaQuery")),
        ("@system.prompt", Package("Prompt")),
        ("@system.router", Package("SystemRouter")),
        ("@ohos.arkui.ArcList", Decls([
            Name("ArcList"),
            Name("ArcListItem"),
            Name("ArcListAttribute"),
            Name("ArcListItemAttribute")
        ])),
        ("@ohos.arkui.ArcAlphabetIndexer", Decls([
            Name("ArcAlphabetIndexer"),
            Name("ArcAlphabetIndexerAttribute")
        ])),
        ("@ohos.arkui.ArcScrollBar", Decls([
            Name("ArcScrollBar"),
            Name("ArcScrollBarAttribute")
        ])),
        ("@ohos.arkui.theme", Decls([
            Name("Colors"),
            Name("CustomColors"),
            Name("Theme"),
            Name("ThemeControl"),
            Name("CustomTheme"),
            Name("CustomDarkColors")
        ])),
        ("@ohos.arkui.advanced.FoldSplitContainer", Decls([
            Name("ExtraRegionPosition"),
            Name("ExpandedRegionLayoutOptions"),
            Name("HoverModeRegionLayoutOptions"),
            Name("FoldedRegionLayoutOptions"),
            Name("PresetSplitRatio"),
            Name("FoldSplitContainer"),
            Name("HoverModeStatus"),
            Name("OnHoverStatusChangeHandler")
        ])),
        ("@ohos.arkui.uiExtension", Package("uiExtension")),
        ("@ohos.arkui.advanced.FullScreenLaunchComponent", Decls([
            Name("FullScreenLaunchComponent")
        ])),
        ("@ohos.atomicservice.AtomicServiceTabs", Decls([
            Name("AtomicServiceTabs"),
            Name("TabBarOptions"),
            Name("TabBarPosition"),
            Name("TabContentBuilder"),
            Name("OnContentWillChangeCallback")
        ])),
        ("@ohos.arkui.modifier", Decls([
            Name("CommonModifier"),
            Name("ColumnModifier"),
            Name("ColumnSplitModifier"),
            Name("RowModifier"),
            Name("RowSplitModifier"),
            Name("SideBarContainerModifier"),
            Name("BlankModifier"),
            Name("DividerModifier"),
            Name("GridColModifier"),
            Name("GridRowModifier"),
            Name("NavDestinationModifier"),
            Name("NavigatorModifier"),
            Name("StackModifier"),
            Name("NavigationModifier"),
            Name("NavRouterModifier"),
            Name("StepperItemModifier"),
            Name("TabsModifier"),
            Name("GridModifier"),
            Name("GridItemModifier"),
            Name("ListModifier"),
            Name("ListItemModifier"),
            Name("ListItemGroupModifier"),
            Name("ScrollModifier"),
            Name("SwiperModifier"),
            Name("WaterFlowModifier"),
            Name("ButtonModifier"),
            Name("CounterModifier"),
            Name("TextPickerModifier"),
            Name("TimePickerModifier"),
            Name("ToggleModifier"),
            Name("CalendarPickerModifier"),
            Name("CheckboxModifier"),
            Name("CheckboxGroupModifier"),
            Name("DatePickerModifier"),
            Name("RadioModifier"),
            Name("RatingModifier"),
            Name("SelectModifier"),
            Name("SliderModifier"),
            Name("PatternLockModifier"),
            Name("SpanModifier"),
            Name("RichEditorModifier"),
            Name("RefreshModifier"),
            Name("SearchModifier"),
            Name("TextAreaModifier"),
            Name("TextModifier"),
            Name("TextInputModifier"),
            Name("ImageSpanModifier"),
            Name("ImageAnimatorModifier"),
            Name("ImageModifier"),
            Name("VideoModifier"),
            Name("DataPanelModifier"),
            Name("GaugeModifier"),
            Name("LoadingProgressModifier"),
            Name("MarqueeModifier"),
            Name("ProgressModifier"),
            Name("QRCodeModifier"),
            Name("TextClockModifier"),
            Name("TextTimerModifier"),
            Name("LineModifier"),
            Name("PathModifier"),
            Name("PolygonModifier"),
            Name("PolylineModifier"),
            Name("RectModifier"),
            Name("ShapeModifier"),
            Name("AlphabetIndexerModifier"),
            Name("HyperlinkModifier"),
            Name("MenuModifier"),
            Name("MenuItemModifier"),
            Name("PanelModifier"),
            Name("SymbolGlyphModifier"),
            Name("AttributeUpdater"),
            Name("ContainerSpanModifier"),
            Name("SymbolSpanModifier"),
            Name("ParticleModifier"),
            Name("StepperModifier"),
            Name("PickerModifier")
        ])),
        ("@ohos.arkui.Prefetcher", Decls([
            Name("IDataSourcePrefetching"),
            Name("IPrefetcher"),
            Name("BasicPrefetcher")
        ])),
        ("@ohos.arkui.advanced.DownloadFileButton", Decls([
            Name("DownloadFileButton"),
            Name("DownloadLayoutDirection"),
            Name("DownloadIconStyle"),
            Name("DownloadDescription"),
            Name("DownloadContentOptions"),
            Name("DownloadStyleOptions")
        ])),
        ("@ohos.arkui.advanced.InnerFullScreenLaunchComponent", Decls([
            Name("InnerFullScreenLaunchComponent"),
            Name("LaunchController")
        ])),
        ("@ohos.arkui.advanced.MultiNavigation", Decls([
            Name("SplitPolicy"),
            Name("MultiNavigation"),
            Name("MultiNavPathStack")
        ])),
        ("@ohos.arkui.advanced.ArcSlider", Decls([
            Name("ArcSlider"),
            Name("ArcSliderPosition"),
            Name("ArcSliderOptions"),
            Name("ArcSliderOptionsConstructorOptions"),
            Name("ArcSliderLayoutOptions"),
            Name("ArcSliderLayoutOptionsConstructorOptions"),
            Name("ArcSliderStyleOptions"),
            Name("ArcSliderStyleOptionsConstructorOptions"),
            Name("ArcSliderValueOptions"),
            Name("ArcSliderValueOptionsConstructorOptions")
        ])),
        ("@ohos.arkui.ArcSwiper", Decls([
            Name("ArcSwiper"),
            Name("ArcSwiperAttribute"),
            Name("ArcDotIndicator"),
            Name("ArcDirection"),
            Name("ArcSwiperController")
        ])),
        ("@ohos.arkui.advanced.SubHeaderV2", Decls([
            Name("SubHeaderV2IconType"),
            Name("SubHeaderV2Title"),
            Name("SubHeaderV2Select"),
            Name("SubHeaderV2"),
            Name("SubHeaderV2OperationType"),
            Name("SubHeaderV2OperationItem"),
            Name("SubHeaderV2OperationItemType")
        ])),
        ("@ohos.arkui.advanced.SegmentButtonV2", Decls([
            Name("SegmentButtonV2ItemOptions"),
            Name("OnSelectedIndexChange"),
            Name("OnSelectedIndexesChange"),
            Name("SegmentButtonV2Item"),
            Name("SegmentButtonV2Items"),
            Name("TabSegmentButtonV2"),
            Name("CapsuleSegmentButtonV2"),
            Name("MultiCapsuleSegmentButtonV2")
        ])),
        ("@ohos.atomicservice.HalfScreenLaunchComponent", Decls([
            Name("HalfScreenLaunchComponent")
        ])),
        ("@ohos.arkui.intelligence.imageGeneration", Package("imageGeneration")),
    )),
    ("@kit.ArkWeb", KitConfig(
        ("@ohos.web.netErrorList", Decls([
            Name("WebNetErrorList")
        ])),
        ("@ohos.web.WebNativeMessagingExtensionAbility", Package("WebNativeMessagingExtensionAbility")),
        ("@ohos.web.webNativeMessagingExtensionManager", Package("webNativeMessagingExtensionManager")),
        ("@ohos.web.webview", Package("webview")),
    )),
    ("@kit.AssetStoreKit", KitConfig(
        ("@ohos.security.asset", Package("asset")),
    )),
    ("@kit.AudioKit", KitConfig(
        ("@ohos.multimedia.audio", Package("audio")),
        ("@ohos.multimedia.audioHaptic", Package("audioHaptic")),
        ("@ohos.multimedia.systemSoundManager", Package("systemSoundManager")),
        ("@ohos.multimedia.avVolumePanel", Decls([
            Name("AVVolumePanel"),
            Name("AVVolumePanelParameter")
        ])),
    )),
    ("@kit.BackgroundTasksKit", KitConfig(
        ("@ohos.resourceschedule.backgroundTaskManager", Package("backgroundTaskManager")),
        ("@ohos.resourceschedule.backgroundProcessManager", Package("backgroundProcessManager")),
        ("@ohos.bundleState", Package("bundleState")),
        ("@ohos.reminderAgent", Package("reminderAgent")),
        ("@ohos.reminderAgentManager", Package("reminderAgentManager")),
        ("@ohos.resourceschedule.deviceStandby", Package("deviceStandby")),
        ("@ohos.resourceschedule.usageStatistics", Package("usageStatistics")),
        ("@ohos.resourceschedule.workScheduler", Package("workScheduler")),
        ("@ohos.WorkSchedulerExtensionAbility", Package("WorkSchedulerExtensionAbility")),
    )),
    ("@kit.BasicServicesKit", KitConfig(
        ("@ohos.account.appAccount", Package("appAccount")),
        ("@ohos.configPolicy", Package("configPolicy")),
        ("@ohos.customization.customConfig", Package("customConfig")),
        ("@ohos.account.distributedAccount", Package("distributedAccount")),
        ("@ohos.account.osAccount", Package("osAccount")),
        ("@ohos.app.ability.PrintExtensionAbility", Package("PrintExtensionAbility")),
        ("@ohos.base", Decls([
            Name("AsyncCallback"),
            Name("BusinessError"),
            Name("Callback"),
            Name("ErrorCallback"),
            Name("RecordData")
        ])),
        ("@ohos.batteryInfo", Package("batteryInfo")),
        ("@ohos.batteryStatistics", Package("batteryStats")),
        ("@ohos.brightness", Package("brightness")),
        ("@ohos.charger", Package("charger")),
        ("@ohos.deviceAttest", Package("deviceAttest")),
        ("@ohos.deviceInfo", Package("deviceInfo")),
        ("@ohos.pasteboard", Package("pasteboard")),
        ("@ohos.power", Package("power")),
        ("@ohos.print", Package("print")),
        ("@ohos.scan", Package("scan")),
        ("@ohos.request", Package("request")),
        ("@ohos.request.cacheDownload", Package("cacheDownload")),
        ("@ohos.runningLock", Package("runningLock")),
        ("@ohos.screenLock", Package("screenLock")),
        ("@ohos.settings", Package("settings")),
        ("@ohos.systemCapability", Package("systemCapability")),
        ("@ohos.systemDateTime", Package("systemDateTime")),
        ("@ohos.systemparameter", Package("systemParameter")),
        ("@ohos.systemParameterEnhance", Package("systemParameterEnhance")),
        ("@ohos.systemTime", Package("systemTime")),
        ("@ohos.systemTimer", Package("systemTimer")),
        ("@ohos.thermal", Package("thermal")),
        ("@ohos.update", Package("update")),
        ("@ohos.usb", Package("usb")),
        ("@ohos.usbManager", Package("usbManager")),
        ("@ohos.usbManager.serial", Package("serialManager")),
        ("@ohos.wallpaper", Package("wallpaper")),
        ("@ohos.WallpaperExtensionAbility", Package("WallpaperExtensionAbility")),
        ("@ohos.zlib", Package("zlib")),
        ("@ohos.commonEventManager", Package("commonEventManager")),
        ("@ohos.events.emitter", Package("emitter")),
        ("@ohos.application.StaticSubscriberExtensionAbility", Package("StaticSubscriberExtensionAbility")),
        ("@ohos.application.StaticSubscriberExtensionContext", Package("StaticSubscriberExtensionContext")),
        ("@system.battery", Package("Battery")),
        ("@system.brightness", Package("Brightness")),
        ("@system.device", Package("Device")),
        ("@system.request", Package("Request")),
        ("@ohos.resourceschedule.systemload", Package("systemLoad")),
        ("@ohos.ai.intelligentVoice", Package("intelligentVoice")),
        ("@ohos.selectionInput.SelectionExtensionAbility", Package("SelectionExtensionAbility")),
        ("@ohos.selectionInput.SelectionPanel", Decls([
            Name("PanelInfo"),
            Name("PanelType")
        ])),
        ("@ohos.selectionInput.selectionManager", Package("selectionManager")),
        ("@ohos.selectionInput.SelectionExtensionContext", Package("SelectionExtensionContext")),
        ("@ohos.annotation", Decls([
            Name("Available"),
            Name("SuppressWarnings"),
            Name("SuppressWarningsType")
        ])),
    )),
    ("@kit.CalendarKit", KitConfig(
        ("@ohos.calendarManager", Package("calendarManager")),
    )),
    ("@kit.CameraKit", KitConfig(
        ("@ohos.multimedia.camera", Package("camera")),
        ("@ohos.multimedia.cameraPicker", Package("cameraPicker")),
    )),
    ("@kit.ConnectivityKit", KitConfig(
        ("@ohos.bluetooth.a2dp", Package("a2dp")),
        ("@ohos.bluetooth.access", Package("access")),
        ("@ohos.bluetooth.baseProfile", Package("baseProfile")),
        ("@ohos.bluetooth.ble", Package("ble")),
        ("@ohos.bluetooth.connection", Package("connection")),
        ("@ohos.bluetooth.constant", Package("constant")),
        ("@ohos.bluetooth.hfp", Package("hfp")),
        ("@ohos.bluetooth.hid", Package("hid")),
        ("@ohos.bluetooth.common", Package("common")),
        ("@ohos.bluetooth", Package("bluetooth")),
        ("@ohos.bluetooth.map", Package("map")),
        ("@ohos.bluetooth.pan", Package("pan")),
        ("@ohos.bluetooth.pbap", Package("pbap")),
        ("@ohos.bluetooth.opp", Package("opp")),
        ("@ohos.bluetooth.socket", Package("socket")),
        ("@ohos.bluetooth.wearDetection", Package("wearDetection")),
        ("@ohos.bluetoothManager", Package("bluetoothManager")),
        ("@ohos.connectedTag", Package("connectedTag")),
        ("@ohos.nfc.cardEmulation", Package("cardEmulation")),
        ("@ohos.nfc.controller", Package("nfcController")),
        ("@ohos.nfc.tag", Package("tag")),
        ("@ohos.secureElement", Package("omapi")),
        ("@ohos.wifi", Package("wifi")),
        ("@ohos.wifiext", Package("wifiext")),
        ("@ohos.wifiManager", Package("wifiManager")),
        ("@ohos.wifiManagerExt", Package("wifiManagerExt")),
        ("@system.bluetooth", Package("Bluetooth")),
    )),
    ("@kit.ContactsKit", KitConfig(
        ("@ohos.contact", Package("contact")),
    )),
    ("@kit.CoreFileKit", KitConfig(
        ("@ohos.application.BackupExtensionAbility", Decls([
            Name("BundleVersion")
        ])),
        ("@ohos.file.BackupExtensionContext", Package("BackupExtensionContext")),
        ("@ohos.file.backup", Package("backup")),
        ("@ohos.file.cloudSync", Package("cloudSync")),
        ("@ohos.file.cloudSyncManager", Package("cloudSyncManager")),
        ("@ohos.file.cloudDiskManager", Package("cloudDiskManager")),
        ("@ohos.file.environment", Package("Environment")),
        ("@ohos.file.fileAccess", Package("fileAccess")),
        ("@ohos.file.fileExtensionInfo", Package("fileExtensionInfo")),
        ("@ohos.file.fileuri", Package("fileUri")),
        ("@ohos.file.fs", Decls([
            Name("ConflictFiles"),
            Name("Filter"),
            Name("Options"),
            Name("ReaderIteratorResult"),
            Name("WatchEvent"),
            Name("WatchEventListener"),
            Name("Watcher"),
            Name("ReadOptions"),
            Name("ReadTextOptions"),
            Name("WriteOptions"),
            Name("ListFileOptions"),
            Name("TaskSignal")
        ])),
        ("@ohos.file.hash", Package("hash")),
        ("@ohos.file.picker", Package("picker")),
        ("@ohos.file.recent", Package("recent")),
        ("@ohos.file.securityLabel", Package("securityLabel")),
        ("@ohos.file.statvfs", Package("statfs")),
        ("@ohos.file.storageStatistics", Package("storageStatistics")),
        ("@ohos.file.trash", Package("trash")),
        ("@ohos.file.volumeManager", Package("volumeManager")),
        ("@ohos.file.keyManager", Package("keyManager")),
        ("@ohos.filemanagement.userFileManager", Package("userFileManager")),
        ("@ohos.fileshare", Package("fileShare")),
    )),
    ("@kit.CryptoArchitectureKit", KitConfig(
        ("@ohos.security.cryptoFramework", Package("cryptoFramework")),
        ("@system.cipher", Package("Cipher")),
    )),
    ("@kit.DataLossPreventionKit", KitConfig(
        ("@ohos.dlpPermission", Package("dlpPermission")),
    )),
    ("@kit.DataProtectionKit", KitConfig(
        ("@ohos.dlpPermission", Package("dlpPermission")),
        ("@ohos.security.identifySensitiveContent", Package("identifySensitiveContent")),
    )),
    ("@kit.DeviceCertificateKit", KitConfig(
        ("@ohos.security.cert", Package("cert")),
        ("@ohos.security.certManager", Package("certificateManager")),
        ("@ohos.security.certManagerDialog", Package("certificateManagerDialog")),
    )),
    ("@kit.DistributedServiceKit", KitConfig(
        ("@ohos.cooperate", Package("cooperate")),
        ("@ohos.distributedDeviceManager", Package("distributedDeviceManager")),
        ("@ohos.distributedHardware.deviceManager", Package("deviceManager")),
        ("@ohos.distributedHardware.hardwareManager", Package("hardwareManager")),
        ("@ohos.distributedsched.abilityConnectionManager", Package("abilityConnectionManager")),
        ("@ohos.distributedsched.linkEnhance", Package("linkEnhance")),
        ("@ohos.application.DistributedExtensionAbility", Package("DistributedExtensionAbility")),
        ("@ohos.application.DistributedExtensionContext", Package("DistributedExtensionContext")),
        ("@ohos.distributedsched.proxyChannelManager", Package("proxyChannelManager")),
    )),
    ("@kit.DriverDevelopmentKit", KitConfig(
        ("@ohos.app.ability.DriverExtensionAbility", Package("DriverExtensionAbility")),
        ("@ohos.driver.deviceManager", Package("deviceManager")),
    )),
    ("@kit.DrmKit", KitConfig(
        ("@ohos.multimedia.drm", Package("drm")),
    )),
    ("@kit.FormKit", KitConfig(
        ("@ohos.app.form.formAgent", Package("formAgent")),
        ("@ohos.app.form.formBindingData", Package("formBindingData")),
        ("@ohos.app.form.FormExtensionAbility", Package("FormExtensionAbility")),
        ("@ohos.app.form.formHost", Package("formHost")),
        ("@ohos.app.form.formInfo", Package("formInfo")),
        ("@ohos.app.form.formObserver", Package("formObserver")),
        ("@ohos.app.form.formProvider", Package("formProvider")),
        ("@ohos.application.formError", Package("formError")),
        ("@ohos.app.form.FormEditExtensionAbility", Package("FormEditExtensionAbility")),
        ("@ohos.app.form.LiveFormExtensionAbility", Package("LiveFormExtensionAbility")),
    )),
    ("@kit.IMEKit", KitConfig(
        ("@ohos.inputMethod", Package("inputMethod")),
        ("@ohos.inputMethodEngine", Package("inputMethodEngine")),
        ("@ohos.InputMethodExtensionAbility", Package("InputMethodExtensionAbility")),
        ("@ohos.InputMethodExtensionContext", Package("InputMethodExtensionContext")),
        ("@ohos.InputMethodSubtype", Package("InputMethodSubtype")),
        ("@ohos.inputMethodList", Decls([
            Name("InputMethodListDialog"),
            Name("PatternOptions"),
            Name("Pattern")
        ])),
        ("@ohos.inputMethod.Panel", Decls([
            Name("PanelInfo"),
            Name("PanelType"),
            Name("PanelFlag")
        ])),
        ("@ohos.inputMethod.ExtraConfig", Decls([
            Name("InputMethodExtraConfig")
        ])),
    )),
    ("@kit.IPCKit", KitConfig(
        ("@ohos.rpc", Package("rpc")),
    )),
    ("@kit.ImageKit", KitConfig(
        ("@ohos.multimedia.image", Package("image")),
        ("@ohos.multimedia.sendableImage", Package("sendableImage")),
        ("@ohos.multimedia.videoProcessingEngine", Package("videoProcessingEngine")),
    )),
    ("@kit.InputKit", KitConfig(
        ("@ohos.multimodalInput.gestureEvent", Decls([
            Name("ActionType"),
            Name("FourFingersSwipe"),
            Name("Pinch"),
            Name("Rotate"),
            Name("ThreeFingersSwipe"),
            Name("ThreeFingersTap"),
            Name("SwipeInward"),
            Name("TouchGestureEvent")
        ])),
        ("@ohos.multimodalInput.inputConsumer", Package("inputConsumer")),
        ("@ohos.multimodalInput.inputDevice", Package("inputDevice")),
        ("@ohos.multimodalInput.inputEvent", Decls([
            Name("InputEvent")
        ])),
        ("@ohos.multimodalInput.intentionCode", Decls([
            Name("IntentionCode")
        ])),
        ("@ohos.multimodalInput.keyCode", Decls([
            Name("KeyCode")
        ])),
        ("@ohos.multimodalInput.keyEvent", Decls([
            Name("Action"),
            Name("Key"),
            Name("KeyEvent")
        ])),
        ("@ohos.multimodalInput.mouseEvent", Decls([
            Mapping("MouseAction", "Action"),
            Name("Axis"),
            Name("AxisValue"),
            Name("Button"),
            Name("MouseEvent"),
            Mapping("MouseToolType", "ToolType")
        ])),
        ("@ohos.multimodalInput.pointer", Package("pointer")),
        ("@ohos.multimodalInput.touchEvent", Decls([
            Mapping("KeyAction", "Action"),
            Name("SourceType"),
            Name("ToolType"),
            Name("Touch"),
            Name("TouchEvent")
        ])),
        ("@ohos.multimodalInput.infraredEmitter", Package("infraredEmitter")),
        ("@ohos.multimodalInput.inputEventClient", Package("inputEventClient")),
        ("@ohos.multimodalInput.inputMonitor", Package("inputMonitor")),
        ("@ohos.multimodalInput.shortKey", Decls([
            Name("FingerprintEvent")
        ])),
        ("@ohos.multimodalInput.inputDeviceCooperate", Package("inputDeviceCooperate")),
    )),
    ("@kit.LocalizationKit", KitConfig(
        ("@ohos.fontManager", Package("fontManager")),
        ("@ohos.i18n", Package("i18n")),
        ("@ohos.intl", Package("intl")),
        ("@ohos.resourceManager", Package("resourceManager")),
        ("@ohos.sendableResourceManager", Package("sendableResourceManager")),
    )),
    ("@kit.LocationKit", KitConfig(
        ("@ohos.geolocation", Package("geolocation")),
        ("@ohos.geoLocationManager", Package("geoLocationManager")),
        ("@ohos.app.ability.FenceExtensionAbility", Package("FenceExtensionAbility")),
        ("@ohos.app.ability.FenceExtensionContext", Package("FenceExtensionContext")),
        ("@system.geolocation", Package("Geolocation")),
    )),
    ("@kit.MDMKit", KitConfig(
        ("@ohos.enterprise.accountManager", Package("accountManager")),
        ("@ohos.enterprise.adminManager", Package("adminManager")),
        ("@ohos.enterprise.applicationManager", Package("applicationManager")),
        ("@ohos.enterprise.bluetoothManager", Package("bluetoothManager")),
        ("@ohos.enterprise.browser", Package("browser")),
        ("@ohos.enterprise.bundleManager", Package("bundleManager")),
        ("@ohos.enterprise.common", Package("common")),
        ("@ohos.enterprise.dateTimeManager", Package("dateTimeManager")),
        ("@ohos.enterprise.deviceControl", Package("deviceControl")),
        ("@ohos.enterprise.deviceInfo", Package("deviceInfo")),
        ("@ohos.enterprise.deviceSettings", Package("deviceSettings")),
        ("@ohos.enterprise.EnterpriseAdminExtensionAbility", Package("EnterpriseAdminExtensionAbility")),
        ("@ohos.enterprise.locationManager", Package("locationManager")),
        ("@ohos.enterprise.networkManager", Package("networkManager")),
        ("@ohos.enterprise.restrictions", Package("restrictions")),
        ("@ohos.enterprise.securityManager", Package("securityManager")),
        ("@ohos.enterprise.systemManager", Package("systemManager")),
        ("@ohos.enterprise.usbManager", Package("usbManager")),
        ("@ohos.enterprise.wifiManager", Package("wifiManager")),
        ("@ohos.enterprise.telephonyManager", Package("telephonyManager")),
    )),
    ("@kit.MechanicKit", KitConfig(
        ("@ohos.distributedHardware.mechanicManager", Package("mechanicManager")),
    )),
    ("@kit.MediaKit", KitConfig(
        ("@ohos.multimedia.media", Package("media")),
    )),
    ("@kit.MediaLibraryKit", KitConfig(
        ("@ohos.file.photoAccessHelper", Package("photoAccessHelper")),
        ("@ohos.file.sendablePhotoAccessHelper", Package("sendablePhotoAccessHelper")),
        ("@ohos.multimedia.movingphotoview", Decls([
            Name("MovingPhotoView"),
            Name("MovingPhotoViewController"),
            Name("MovingPhotoViewAttribute")
        ])),
        ("@ohos.file.AlbumPickerComponent", Decls([
            Name("AlbumPickerComponent"),
            Name("AlbumPickerOptions"),
            Name("AlbumInfo"),
            Name("EmptyAreaClickCallback"),
            Name("AlbumPickerController")
        ])),
        ("@ohos.file.PhotoPickerComponent", Decls([
            Name("PhotoPickerComponent"),
            Name("PickerController"),
            Name("PickerOptions"),
            Name("DataType"),
            Name("BaseItemInfo"),
            Name("ItemInfo"),
            Name("PhotoBrowserInfo"),
            Name("AnimatorParams"),
            Name("MaxSelected"),
            Name("ItemType"),
            Name("ClickType"),
            Name("PickerOrientation"),
            Name("SelectMode"),
            Name("PickerColorMode"),
            Name("ReminderMode"),
            Name("MaxCountType"),
            Name("PhotoBrowserRange"),
            Name("PhotoBrowserUIElement"),
            Name("ItemsDeletedCallback"),
            Name("ExceedMaxSelectedCallback"),
            Name("CurrentAlbumDeletedCallback"),
            Name("videoPlayStateChangedCallback"),
            Name("MovingPhotoBadgeStateChangedCallback"),
            Name("UpdatablePickerConfigs"),
            Name("SingleLineConfig"),
            Name("BadgeConfig"),
            Name("PreselectedInfo"),
            Name("SaveMode"),
            Name("BadgeType"),
            Name("VideoPlayerState"),
            Name("ItemDisplayRatio")
        ])),
        ("@ohos.file.RecentPhotoComponent", Decls([
            Name("RecentPhotoComponent"),
            Name("RecentPhotoCheckResultCallback"),
            Name("RecentPhotoInfo"),
            Name("RecentPhotoCheckInfoCallback"),
            Name("RecentPhotoClickCallback"),
            Name("RecentPhotoOptions"),
            Name("PhotoSource")
        ])),
    )),
    ("@kit.MindSporeLiteKit", KitConfig(
        ("@ohos.ai.mindSporeLite", Package("mindSporeLite")),
    )),
    ("@kit.MultimodalAwarenessKit", KitConfig(
        ("@ohos.multimodalAwareness.deviceStatus", Package("deviceStatus")),
        ("@ohos.multimodalAwareness.metadataBinding", Package("metadataBinding")),
        ("@ohos.multimodalAwareness.motion", Package("motion")),
        ("@ohos.multimodalAwareness.onScreen", Package("onScreen")),
        ("@ohos.stationary", Package("stationary")),
        ("@ohos.multimodalAwareness.userStatus", Package("userStatus")),
        ("@ohos.multimodalAwareness.spatialAwareness", Package("spatialAwareness")),
    )),
    ("@kit.NetworkKit", KitConfig(
        ("@ohos.net.connection", Package("connection")),
        ("@ohos.net.http", Package("http")),
        ("@ohos.net.sharing", Package("sharing")),
        ("@ohos.net.webSocket", Package("webSocket")),
        ("@ohos.net.statistics", Package("statistics")),
        ("@ohos.net.networkSecurity", Package("networkSecurity")),
        ("@ohos.net.ethernet", Package("ethernet")),
        ("@ohos.net.mdns", Package("mdns")),
        ("@ohos.net.policy", Package("policy")),
        ("@ohos.net.socket", Package("socket")),
        ("@ohos.net.vpn", Package("vpn")),
        ("@ohos.net.vpnExtension", Package("VpnExtensionContext")),
        ("@ohos.app.ability.VpnExtensionAbility", Package("VpnExtensionAbility")),
        ("@ohos.net.eap", Package("eap")),
        ("@ohos.net.netFirewall", Package("netFirewall")),
    )),
    ("@kit.NotificationKit", KitConfig(
        ("@ohos.notificationManager", Package("notificationManager")),
        ("@ohos.notificationSubscribe", Package("notificationSubscribe")),
        ("@ohos.notificationExtensionSubscription", Package("notificationExtensionSubscription")),
        ("@ohos.application.NotificationSubscriberExtensionAbility", Package("NotificationSubscriberExtensionAbility")),
        ("@ohos.application.NotificationSubscriberExtensionContext", Package("NotificationSubscriberExtensionContext")),
        ("@system.notification", Package("Notification")),
    )),
    ("@kit.PerformanceAnalysisKit", KitConfig(
        ("@ohos.hiviewdfx.hiAppEvent", Package("hiAppEvent")),
        ("@ohos.hichecker", Package("hichecker")),
        ("@ohos.hidebug", Package("hidebug")),
        ("@ohos.hilog", Package("hilog")),
        ("@ohos.hiSysEvent", Package("hiSysEvent")),
        ("@ohos.hiTraceChain", Package("hiTraceChain")),
        ("@ohos.hiTraceMeter", Package("hiTraceMeter")),
        ("@ohos.logLibrary", Package("logLibrary")),
        ("@ohos.hiviewdfx.FaultLogExtensionAbility", Package("FaultLogExtensionAbility")),
        ("@ohos.hiviewdfx.FaultLogExtensionContext", Package("FaultLogExtensionContext")),
        ("@ohos.faultLogger", Package("FaultLogger")),
        ("@ohos.hiviewdfx.jsLeakWatcher", Package("jsLeakWatcher")),
    )),
    ("@kit.SecurityGuardKit", KitConfig(
        ("@ohos.security.securityGuard", Package("securityGuard")),
    )),
    ("@kit.SensorServiceKit", KitConfig(
        ("@ohos.sensor", Package("sensor")),
        ("@ohos.vibrator", Package("vibrator")),
        ("@system.sensor", Package("Sensor")),
        ("@system.vibrator", Package("Vibrator")),
    )),
    ("@kit.TelephonyKit", KitConfig(
        ("@ohos.telephony.data", Package("data")),
        ("@ohos.telephony.observer", Package("observer")),
        ("@ohos.telephony.radio", Package("radio")),
        ("@ohos.telephony.sim", Package("sim")),
        ("@ohos.telephony.sms", Package("sms")),
        ("@ohos.telephony.call", Package("call")),
        ("@ohos.telephony.esim", Package("eSIM")),
        ("@ohos.telephony.vcard", Package("vcard")),
    )),
    ("@kit.TestKit", KitConfig(
        ("@ohos.app.ability.abilityDelegatorRegistry", Package("abilityDelegatorRegistry")),
        ("@ohos.application.testRunner", Package("TestRunner")),
        ("@ohos.UiTest", Decls([
            Name("UiComponent"),
            Name("UiDriver"),
            Name("BY"),
            Name("By")
        ])),
        ("@ohos.test.PerfTest", Decls([
            Name("PerfMetric"),
            Name("PerfTestStrategy"),
            Name("PerfMeasureResult"),
            Name("PerfTest")
        ])),
    )),
    ("@kit.UniversalKeystoreKit", KitConfig(
        ("@ohos.security.huks", Package("huks")),
        ("@ohos.security.huksExternalCrypto", Package("huksExternalCrypto")),
        ("@ohos.security.CryptoExtensionAbility", Package("CryptoExtensionAbility")),
    )),
    ("@kit.UserAuthenticationKit", KitConfig(
        ("@ohos.userIAM.faceAuth", Package("faceAuth")),
        ("@ohos.userIAM.userAccessCtrl", Package("userAccessCtrl")),
        ("@ohos.userIAM.userAuth", Package("userAuth")),
        ("@ohos.userIAM.userAuthIcon", Package("UserAuthIcon")),
        ("@ohos.app.ability.UserAuthExtensionAbility", Package("UserAuthExtensionAbility")),
    )),
)
