.class Lcom/android/hwcamera/hwui/SubPopupWindows$5;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/SubPopupWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$5;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$5;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$400(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$5;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 291
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 293
    return-void
.end method
