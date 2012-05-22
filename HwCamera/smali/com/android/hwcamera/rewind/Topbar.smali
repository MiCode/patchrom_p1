.class public Lcom/android/hwcamera/rewind/Topbar;
.super Landroid/widget/RelativeLayout;
.source "Topbar.java"

# interfaces
.implements Lcom/scalado/app/rewind/ExtWidget;
.implements Lcom/android/hwcamera/rewind/Timeoutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/rewind/Topbar$1;,
        Lcom/android/hwcamera/rewind/Topbar$MyHandler;,
        Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;,
        Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;,
        Lcom/android/hwcamera/rewind/Topbar$TopbarListener;
    }
.end annotation


# static fields
.field private static final FADING_IN:I = 0x1

.field private static final FADING_OUT:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final MSG_FADE_IN:I = 0x9

.field private static final MSG_FADE_OUT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Topbar"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadeOutRequest:Z

.field private mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

.field private mListener:Lcom/android/hwcamera/rewind/Topbar$TopbarListener;

.field private mLoadButton:Landroid/widget/ImageView;

.field private mState:I

.field private mTimeout:J

.field private mXy:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v4, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    .line 37
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mTimeout:J

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mXy:[I

    .line 44
    new-instance v1, Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;-><init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    .line 49
    iput v4, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    .line 60
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/Topbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    const v1, 0x7f040012

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 66
    const v1, 0x7f040013

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 68
    iget-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$302(Lcom/android/hwcamera/rewind/Topbar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/rewind/Topbar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/rewind/Topbar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/Topbar;->fadeOut()V

    return-void
.end method

.method private delayedFadeOut(J)V
    .locals 3
    .parameter "t"

    .prologue
    const/16 v2, 0xa

    .line 123
    iget-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 124
    iget-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    return-void
.end method

.method private doFadeOut()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    return-void
.end method

.method private fadeIn()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-wide v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/rewind/Topbar;->delayedFadeOut(J)V

    .line 115
    return-void
.end method

.method private fadeOut()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    if-nez v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/Topbar;->doFadeOut()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    if-ne v0, v1, :cond_0

    .line 106
    iput-boolean v1, p0, Lcom/android/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingTimeout()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mHandler:Lcom/android/hwcamera/rewind/Topbar$MyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 99
    return-void
.end method

.method public getRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "dst"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mXy:[I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/Topbar;->getLocationOnScreen([I)V

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 140
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/Topbar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 141
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/Topbar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 142
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/Topbar;->fadeOut()V

    .line 134
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/hwcamera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 145
    const-string v0, "Topbar"

    const-string v1, "PreviewBarLayout: onVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-ne p1, p0, :cond_0

    .line 147
    sparse-switch p2, :sswitch_data_0

    .line 158
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 159
    return-void

    .line 154
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/Topbar;->fadeIn()V

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public scheduleTimeout()V
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/hwcamera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/rewind/Topbar;->delayedFadeOut(J)V

    .line 95
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Topbar;->mActivity:Landroid/app/Activity;

    .line 79
    return-void
.end method

.method public setListener(Lcom/android/hwcamera/rewind/Topbar$TopbarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Topbar;->mListener:Lcom/android/hwcamera/rewind/Topbar$TopbarListener;

    .line 83
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/android/hwcamera/rewind/Topbar;->mTimeout:J

    .line 87
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/Topbar;->setVisibility(I)V

    .line 130
    return-void
.end method
