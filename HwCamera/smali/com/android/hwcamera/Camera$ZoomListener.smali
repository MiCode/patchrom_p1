.class final Lcom/android/hwcamera/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1594
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ZoomListener;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 1597
    const-string v0, "Camera3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoomListener onZoomChange: value="

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

    .line 1598
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$7802(Lcom/android/hwcamera/Camera;I)I

    .line 1601
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1604
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$7900(Lcom/android/hwcamera/Camera;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 1607
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$7902(Lcom/android/hwcamera/Camera;I)I

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomListener;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$7902(Lcom/android/hwcamera/Camera;I)I

    goto :goto_0
.end method
