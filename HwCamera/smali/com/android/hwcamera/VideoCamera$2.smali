.class Lcom/android/hwcamera/VideoCamera$2;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;

.field tlatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2500(Lcom/android/hwcamera/VideoCamera;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera$2;->tlatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 575
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v5, 0x0

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v4, v5}, Lcom/android/hwcamera/VideoCamera;->access$2602(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 576
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$2700(Lcom/android/hwcamera/VideoCamera;)V

    .line 578
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    #setter for: Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z
    invoke-static {v4, v2}, Lcom/android/hwcamera/VideoCamera;->access$2802(Lcom/android/hwcamera/VideoCamera;Z)Z
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$2;->tlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    :goto_1
    :try_start_2
    const-string v2, "videocamera"

    const-string v4, "[Flow] onCreate start preview"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->startPreview()V
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$3000(Lcom/android/hwcamera/VideoCamera;)V

    .line 597
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 578
    goto :goto_0

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, ie:Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v4}, Lcom/android/hwcamera/VideoCamera;->access$2602(Lcom/android/hwcamera/VideoCamera;Z)Z
    :try_end_2
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 589
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 592
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$2;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$2602(Lcom/android/hwcamera/VideoCamera;Z)Z

    goto :goto_2
.end method
