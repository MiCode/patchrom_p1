.class public Lcom/android/hwcamera/hwui/Review;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;


# static fields
.field public static final REVIEW_HIDE_MSG:I = 0xe

.field private static final REVIEW_PLAY_MSG:I = 0x13

.field public static final REVIEW_SWITCH_MSG:I = 0x10

.field private static final SWITCH_TIME:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideo:Z

.field private mOrientation:I

.field private mPlayButton:Landroid/widget/Button;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

.field private mReviewRootView:Landroid/view/ViewGroup;

.field private mReviewTime:I

.field private mSetasButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/Button;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "rootView"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    .line 30
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/Review;->mIsVideo:Z

    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    .line 41
    iput-object p3, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->initReview()V

    .line 43
    return-void
.end method

.method private initReviewPopup(Ljava/lang/String;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    new-instance v0, Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/hwui/ReviewPopup;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    .line 129
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ReviewPopup;->initReviewPopup(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget v1, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setOrientationEx(I)V

    .line 131
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setUri(Landroid/net/Uri;)V

    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 133
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ReviewPopup;->getPopupWindow()Lcom/android/hwcamera/hwui/PopupWindowEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOnDismissListener(Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public dismissReview()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ReviewPopup;->getPopupWindow()Lcom/android/hwcamera/hwui/PopupWindowEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->dismiss()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->hideReviewButtons()V

    .line 209
    return-void
.end method

.method public getReviewPopup()Lcom/android/hwcamera/hwui/ReviewPopup;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    return-object v0
.end method

.method public hideReviewButtons()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public initReview()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mShareButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mSetasButton:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mDeleteButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mPlayButton:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mSetasButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xe

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const-string v0, "android.intent.action.SEND"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/Review;->initReviewPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/Review;->initReviewPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 104
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Review;->mIsVideo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7f080070
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    return-void
.end method

.method public setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Review;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 68
    return-void
.end method

.method public setIntervalReviewDisplay(ILandroid/net/Uri;)V
    .locals 4
    .parameter "time"
    .parameter "uri"

    .prologue
    .line 46
    iput-object p2, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    .line 47
    iput p1, p0, Lcom/android/hwcamera/hwui/Review;->mReviewTime:I

    .line 48
    iget v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewTime:I

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->showReviewButtons()V

    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/hwcamera/hwui/Review;->mReviewTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    :cond_0
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/16 v4, 0x5a

    .line 142
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    .line 146
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 147
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 148
    .local v1, height:I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 149
    .local v2, width:I
    sparse-switch p1, :sswitch_data_0

    .line 182
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setOrientationEx(I)V

    goto :goto_0

    .line 152
    :sswitch_0
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v1, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 155
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 163
    :sswitch_1
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v1, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 167
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 174
    :sswitch_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 175
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    .line 65
    return-void
.end method

.method public setVideoState(Z)V
    .locals 2
    .parameter "isVideo"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/Review;->mIsVideo:Z

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mSetasButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mPlayButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public showReviewButtons()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public switchVisible()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 188
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
