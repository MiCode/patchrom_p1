.class Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;
.super Ljava/lang/Object;
.source "Topbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/Topbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFadeInListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/android/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v0, "Topbar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    #setter for: Lcom/android/hwcamera/rewind/Topbar;->mState:I
    invoke-static {v0, v2}, Lcom/android/hwcamera/rewind/Topbar;->access$302(Lcom/android/hwcamera/rewind/Topbar;I)I

    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    #getter for: Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0}, Lcom/android/hwcamera/rewind/Topbar;->access$400(Lcom/android/hwcamera/rewind/Topbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    #setter for: Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/rewind/Topbar;->access$402(Lcom/android/hwcamera/rewind/Topbar;Z)Z

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    #calls: Lcom/android/hwcamera/rewind/Topbar;->fadeOut()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/Topbar;->access$500(Lcom/android/hwcamera/rewind/Topbar;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 174
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 177
    const-string v0, "Topbar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method
