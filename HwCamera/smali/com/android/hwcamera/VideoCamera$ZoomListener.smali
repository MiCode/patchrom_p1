.class final Lcom/android/hwcamera/VideoCamera$ZoomListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$ZoomListener;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 792
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoCamera;->access$3202(Lcom/android/hwcamera/VideoCamera;I)I

    .line 794
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 795
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZooming:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$3402(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 796
    :cond_0
    return-void
.end method
