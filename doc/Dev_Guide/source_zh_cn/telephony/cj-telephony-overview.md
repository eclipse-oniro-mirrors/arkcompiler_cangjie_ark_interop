# Telephony Kit简介

Telephony Kit（蜂窝通信服务）提供一系列API帮助开发者开发通讯类应用，包括：

- call模块（拨打电话）：系统应用可以直接拨打电话，在应用界面显示通话；三方应用可以拉起系统电话应用，跳转至拨号界面，从而实现拨打电话的功能。除此之外，应用还可以通过call模块，实现格式化电话号码、判断是否紧急号码等功能，详情请参见[ohos.telephony.call API参考](../../../API_Reference/source_zh_cn/apis/TelephonyKit/cj-apis-telephony_call.md)。
- data模块（蜂窝数据）：蜂窝数据是无线通讯技术标准的一种，从数据的传输到交换都采用分组技术（Packet Switch），能够为移动设备提供话音、数据、视频图像等业务，经常用于支持用户在智能设备上使用应用程序，以及在移动网络上浏览网页，详情请参见ohos.telephony.data API参考。
- sim模块（SIM卡管理）：应用可以调用API获取SIM卡相关信息，如服务提供商、ISO（International Organization for Standardization，国际标准化组织）国家码、归属PLMN（Public Land Mobile Network，公共陆地移动网络）号等，详情请参见 ohos.telephony.sim API参考。

## 约束与限制

在调用电话服务API前，请确保使用的硬件设备有可以独立蜂窝通信的Modem和SIM卡。
