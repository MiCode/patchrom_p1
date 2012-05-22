.class public Lcom/android/hwcamera/hwui/FlashImageView;
.super Ljava/lang/Object;
.source "FlashImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field private static final FLASH_MODE_STATE_AUTO:I = 0x0

.field private static final FLASH_MODE_STATE_OFF:I = 0x2

.field private static final FLASH_MODE_STATE_ON:I = 0x1

.field public static final FLASH_MODE_VIDEO_ON:Ljava/lang/String; = "torch"

.field public static final FLASH_MODE__VIDEO_OFF:Ljava/lang/String; = "off"

.field private static final NONE_VALUE:Ljava/lang/String; = "none"


# instance fields
.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mFlashEnable:Z

.field private mFlashModeState:I

.field private mIsOnCamera:Z

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateImageView:Lcom/android/hwcamera/RotateImageView;

.field private mScenceDefaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V
    .locals 2
    .parameter "context"
    .parameter "rotateImageView"
    .parameter "isOnCamera"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    .line 16
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 17
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 18
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 19
    iput v1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 20
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 23
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 41
    iput-boolean p3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    .line 45
    :cond_0
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 67
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, flashModeImageResId:I
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    iput v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 77
    const v0, 0x7f020067

    .line 97
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    iput v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 80
    const v0, 0x7f020066

    goto :goto_1

    .line 82
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 83
    const v0, 0x7f020065

    goto :goto_1

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    iput v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 91
    const v0, 0x7f020067

    goto :goto_1

    .line 92
    :cond_5
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    iput v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 94
    const v0, 0x7f020066

    goto :goto_1
.end method


# virtual methods
.method public getFlashEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z
    .locals 8
    .parameter "preference"
    .parameter "shootmodeValue"

    .prologue
    const/4 v7, 0x0

    .line 152
    new-instance v3, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 153
    .local v3, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getFlashEnableByShootmode(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 154
    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v2

    .line 155
    .local v2, effectDistortionEnable:[Z
    aget-boolean v4, v2, v7

    if-eqz v4, :cond_0

    .line 156
    const-string v4, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, colorEffectValue:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 162
    .end local v0           #colorEffectValue:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    aget-boolean v4, v2, v4

    if-eqz v4, :cond_1

    .line 163
    const-string v4, "pref_camera_distortion_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c00f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, distortionValue:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 166
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 169
    .end local v1           #distortionValue:Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenceEnableByShootMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    const-string v5, "pref_camera_scenemode_key"

    iget-object v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 172
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 176
    :cond_2
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    return v4
.end method

.method public init(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FlashImageView;->update()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, flashModeImageResId:I
    const/4 v2, 0x0

    .line 114
    .local v2, value:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v3, :cond_3

    .line 115
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v4, v3, :cond_1

    .line 116
    iput v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 117
    const-string v2, "off"

    .line 118
    const v1, 0x7f020066

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 141
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v3, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, KEY:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v3, :cond_5

    .line 144
    const-string v0, "pref_camera_flashmode_key"

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v3, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v0           #KEY:Ljava/lang/String;
    :cond_0
    return-void

    .line 119
    :cond_1
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v5, v3, :cond_2

    .line 120
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 121
    const-string v2, "auto"

    .line 122
    const v1, 0x7f020065

    goto :goto_0

    .line 124
    :cond_2
    iput v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 125
    const-string v2, "on"

    .line 126
    const v1, 0x7f020067

    goto :goto_0

    .line 129
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v4, v3, :cond_4

    .line 130
    iput v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 131
    const-string v2, "off"

    .line 132
    const v1, 0x7f020066

    goto :goto_0

    .line 134
    :cond_4
    iput v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 135
    const-string v2, "torch"

    .line 136
    const v1, 0x7f020067

    goto :goto_0

    .line 146
    .restart local v0       #KEY:Ljava/lang/String;
    :cond_5
    const-string v0, "pref_camera_video_flashmode_key"

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 53
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 49
    return-void
.end method

.method public setEnableEx(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 59
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FlashImageView;->update()V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setScenceDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    .line 181
    return-void
.end method
