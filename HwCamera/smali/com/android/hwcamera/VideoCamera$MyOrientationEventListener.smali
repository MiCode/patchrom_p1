.class Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    .line 986
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 987
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 994
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {p1}, Lcom/android/hwcamera/VideoCamera;->roundOrientation(I)I

    move-result v3

    #setter for: Lcom/android/hwcamera/VideoCamera;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$4602(Lcom/android/hwcamera/VideoCamera;I)I

    .line 998
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4600(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int v0, v2, v3

    .line 1000
    .local v0, orientationCompensation:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2, v0}, Lcom/android/hwcamera/VideoCamera;->access$4702(Lcom/android/hwcamera/VideoCamera;I)I

    .line 1002
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1003
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    #calls: Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$4800(Lcom/android/hwcamera/VideoCamera;I)V

    .line 1004
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    #calls: Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$4900(Lcom/android/hwcamera/VideoCamera;I)V

    .line 1007
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$5000(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1008
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$5000(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(I)V

    .line 1010
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 1011
    .local v1, rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-eqz v1, :cond_4

    .line 1012
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setDegree(I)V

    .line 1015
    .end local v1           #rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    invoke-static {v2}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    goto/16 :goto_0
.end method
