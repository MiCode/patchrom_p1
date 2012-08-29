.class Lcom/android/hwcamera/VideoCamera$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
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
    .line 799
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3600(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3700(Lcom/android/hwcamera/VideoCamera;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3800(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExClose()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3900(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 811
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 814
    return-void
.end method
