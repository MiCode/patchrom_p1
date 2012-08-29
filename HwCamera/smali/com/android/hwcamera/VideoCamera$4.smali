.class Lcom/android/hwcamera/VideoCamera$4;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->switchCameraInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraId:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$4000(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4100(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    rem-int/2addr v1, v2

    #calls: Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$4200(Lcom/android/hwcamera/VideoCamera;I)V

    .line 876
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4300(Lcom/android/hwcamera/VideoCamera;)V

    .line 877
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4400(Lcom/android/hwcamera/VideoCamera;)V

    .line 878
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraId:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4000(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 884
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$4;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method
