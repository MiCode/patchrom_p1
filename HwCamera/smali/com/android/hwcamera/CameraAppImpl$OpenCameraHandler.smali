.class Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;
.super Landroid/os/Handler;
.source "CameraAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCameraHandler"
.end annotation


# static fields
.field public static final CANCEL_AUTO_FOCUS:I = 0x10

.field public static final CANCEL_TAKE_PANORAMA:I = 0x13

.field public static final CAPTURE_PICTURE:I = 0x7

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final INIT_ZOOM:I = 0x5

.field public static final OPEN_CAMERA:I = 0x1

.field public static final PREAPARE_GOTO_VIDEO:I = 0x14

.field public static final PREPARE_QUIT_CAMERA:I = 0x6

.field public static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0xf

.field public static final SET_CAMERA_PARAMRTERS:I = 0xd

.field public static final SET_DISPLAY_ORIENTATION:I = 0x9

.field public static final SET_FACE_AREAS:I = 0x12

.field public static final SET_FACE_ORIENTATION:I = 0x17

.field public static final SET_PREVIEW_DISPLAY:I = 0x8

.field public static final SET_SHOOTMODE:I = 0xa

.field public static final START_AUTO_FOCUS:I = 0x11

.field public static final START_CONTINIOUSAUTOFOCUS:I = 0x16

.field public static final START_FACE_DETECTION:I = 0xb

.field public static final START_PREVIEW:I = 0x3

.field public static final STOP_FACE_DETECTION:I = 0xc

.field public static final STOP_PANORAMA:I = 0x15

.field public static final STOP_PREVIEW:I = 0x4

.field public static final SWITCH_CAMERA:I = 0xe


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraAppImpl;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    const-string v3, "CameraAppImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---handleMessage msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v3}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v3

    if-nez v3, :cond_1

    .line 101
    const-string v1, "CameraAppImpl"

    const-string v2, "Can\'t reach here!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v3}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/Camera;->isCameraReleased()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/Camera;->openCameraDevice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    .line 115
    const-string v1, "CameraAppImpl"

    const-string v2, "Open Camera failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->stopPreview()V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->closeCamera()V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->prepareQuitCamera()V

    .line 129
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 132
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->doCancelPanorama()V

    goto :goto_0

    .line 135
    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/android/hwcamera/Util;->stopPanorama(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 138
    :pswitch_7
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    goto/16 :goto_0

    .line 143
    :pswitch_8
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->doCapture()V

    goto/16 :goto_0

    .line 146
    :pswitch_9
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 149
    :pswitch_a
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->setDisplayOrientation()V

    goto/16 :goto_0

    .line 152
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->setShootingMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 155
    :pswitch_c
    iget-object v3, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v3}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 158
    :pswitch_d
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 161
    :pswitch_e
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/Camera;->doSetFaceOrientation(I)V

    goto/16 :goto_0

    .line 164
    :pswitch_f
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->doSwitchCamera()V

    goto/16 :goto_0

    .line 167
    :pswitch_10
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/Camera;->doSetCameraParameters(II)V

    goto/16 :goto_0

    .line 170
    :pswitch_11
    iget-object v3, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v3}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/hwcamera/Camera;->cancelSensorAutoFocus(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_3

    .line 173
    :pswitch_12
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/Camera;->doStartAutoFocus(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    :pswitch_13
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->startContiniousAutoFocus()V

    goto/16 :goto_0

    .line 179
    :pswitch_14
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/Camera;->setFaceArea(Ljava/util/List;)V

    goto/16 :goto_0

    .line 182
    :pswitch_15
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_16
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #setter for: Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z
    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraAppImpl;->access$202(Lcom/android/hwcamera/CameraAppImpl;Z)Z

    .line 186
    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraAppImpl;->access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->resetParametersCompensation()V

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_15
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_5
        :pswitch_16
        :pswitch_6
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method
