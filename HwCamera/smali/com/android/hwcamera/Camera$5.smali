.class Lcom/android/hwcamera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8500(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1835
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8700(Lcom/android/hwcamera/Camera;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1843
    :cond_1
    :goto_0
    return-void

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8800(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1839
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExClose()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8900(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 1840
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$7500(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1841
    iget-object v0, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$7400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1845
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1848
    return-void
.end method
