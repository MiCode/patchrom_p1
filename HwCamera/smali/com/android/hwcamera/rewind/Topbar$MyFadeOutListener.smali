.class Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;
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
    name = "MyFadeOutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/android/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 184
    const-string v0, "Topbar"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Topbar;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/rewind/Topbar;->mState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/Topbar;->access$302(Lcom/android/hwcamera/rewind/Topbar;I)I

    .line 188
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 191
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 194
    const-string v0, "Topbar"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method
