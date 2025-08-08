# 会话管理（仓颉）

相机使用预览、拍照、录像、元数据功能前，均需要创建相机会话。

在会话中，可以完成以下功能：

- 配置相机的输入流和输出流。相机在拍摄前，必须完成输入输出流的配置。
  配置输入流即添加设备输入，对用户而言，相当于选择设备的某一摄像头拍摄；配置输出流，即选择数据将以什么形式输出。当应用需要实现拍照时，输出流应配置为预览流和拍照流，预览流的数据将显示在XComponent组件上，拍照流的数据将通过ImageReceiver接口的能力保存到相册中。

- 添加闪光灯、调整焦距等配置。具体支持的配置及接口说明请参见[Camera API参考](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md)。

- 会话切换控制。应用可以通过移除和添加输出流的方式，切换相机模式。如当前会话的输出流为拍照流，应用可以将拍照流移除，然后添加视频流作为输出流，即完成了拍照到录像的切换。

完成会话配置后，应用提交和开启会话，可以开始调用相机相关功能。

## 开发步骤

1. 导入相关接口，导入方法如下。

    <!-- compile -->

    ```cangjie
    import kit.CameraKit.*
    import kit.BasicServicesKit.*
    import ohos.base.BussinessException
    ```

2. 调用cameraManager类中的[createSession](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-createsessionscenemode)方法创建一个会话。

    <!-- compile -->

    ```cangjie
    func getSession(cameraManager: CameraManager): Session {
        let session = cameraManager.createSession(SceneMode.NORMAL_PHOTO) as PhotoSession
        return session.getOrThrow()
    }
    ```

3. 调用PhotoSession类中的[beginConfig](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-beginconfig)方法配置会话。

    <!-- compile -->

    ```cangjie
    func beginConfig(photoSession: PhotoSession): Unit {
        try {
            photoSession.beginConfig()
        } catch (error: BusinessException) {
            AppLog.error("Failed to beginConfig. error: ${error.message}")
        }
    }
    ```

4. 使能。向会话中添加相机的输入流和输出流，调用[addInput](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-addinputcamerainput)添加相机的输入流；调用[addOutput](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-addoutputcameraoutput)添加相机的输出流。以下示例代码以添加预览流previewOutput和拍照流photoOutput为例，即当前模式支持拍照和预览。

    调用PhotoSession类中的[commitConfig](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-commitconfig)和[start](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-start)方法提交相关配置，并启动会话。

    <!-- compile -->

    ```cangjie
    func startSession(photoSession: PhotoSession, cameraInput: CameraInput, previewOutput: PreviewOutput, photoOutput: PhotoOutput): Unit {
        try {
            photoSession.addInput(cameraInput)
        } catch (error: BusinessException) {
            AppLog.error("Failed to addInput. error: ${error.message}")
        }
        try {
            photoSession.addOutput(previewOutput)
        } catch (error: BusinessException) {
            AppLog.error("Failed to add previewOutput. error: ${error.message}")
        }
        try {
            photoSession.addOutput(photoOutput)
        } catch (error: BusinessException) {
            AppLog.error("Failed to add photoOutput. error: ${error.message}")
        }
        try {
            photoSession.commitConfig()
        } catch (error: BusinessException) {
            AppLog.error("Failed to commitConfig. error: ${error.message}")
        }

        try {
            photoSession.start()
        } catch (error: BusinessException) {
            AppLog.error("Failed to start. error: ${error.message}")
        }
    }
    ```

5. 会话控制。调用PhotoSession类中的[stop](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-stop)方法可以停止当前会话。调用[removeOutput](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-removeoutputcameraoutput)和[addOutput](../../../../API_Reference/source_zh_cn/apis/CameraKit/cj-apis-multimedia-camera.md#func-addoutputcameraoutput)方法可以完成会话切换控制。以下示例代码以移除拍照流photoOutput，添加视频流videoOutput为例，完成了拍照到录像的切换。

    <!-- compile -->

    ```cangjie
    func switchOutput(photoSession: PhotoSession, videoOutput: VideoOutput, photoOutput: PhotoOutput): Unit {
        try {
            photoSession.stop()
        } catch (error: BusinessException) {
            AppLog.error("Failed to stop. error: ${error.message}")
        }

        try {
            photoSession.beginConfig()
        } catch (error: BusinessException) {
            AppLog.error("Failed to beginConfig. error: ${error.message}")
        }
        // 从会话中移除拍照输出流。
        try {
            photoSession.removeOutput(photoOutput)
        } catch (error: BusinessException) {
            AppLog.error("Failed to remove photoOutput. error: ${error.message}")
        }
        // 向会话中添加视频输出流。
        try {
            photoSession.addOutput(videoOutput)
        } catch (error: BusinessException) {
            AppLog.error("Failed to add videoOutput. error: ${error.message}")
        }
    }
    ```
