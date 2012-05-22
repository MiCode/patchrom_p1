.class Lcom/android/hwcamera/CameraAppImpl$1;
.super Landroid/os/HandlerThread;
.source "CameraAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraAppImpl;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraAppImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl$1;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$1;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    new-instance v1, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;

    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$1;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    iget-object v3, p0, Lcom/android/hwcamera/CameraAppImpl$1;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    iget-object v3, v3, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;-><init>(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Looper;)V

    #setter for: Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraAppImpl;->access$002(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Handler;)Landroid/os/Handler;

    .line 48
    return-void
.end method
