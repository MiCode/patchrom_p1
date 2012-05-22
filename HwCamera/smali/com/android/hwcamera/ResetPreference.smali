.class public Lcom/android/hwcamera/ResetPreference;
.super Ljava/lang/Object;
.source "ResetPreference.java"


# static fields
.field public static final CAMERA_TAG:Ljava/lang/String; = "cameratag"

.field public static final KEY_CAMERA_TAG:Ljava/lang/String; = "pref_camera_tag"

.field public static final KEY_RESET_TAG:Ljava/lang/String; = "pref_camera_reset_tag"

.field public static final NO_PRESS_BACK_MENU_TAG:Ljava/lang/String; = "1"

.field public static final NO_RESET_PREFERENCE_TAG:Ljava/lang/String; = "noreset"

.field public static final PRESS_BACK_MENU:Ljava/lang/String; = "press_back_menu"

.field public static final PRESS_BACK_MENU_TAG:Ljava/lang/String; = "0"

.field public static final RESET_PREFERENCE_TAG:Ljava/lang/String; = "reset"

.field private static final SYSTEM_PROPERTY_RESET_VERIZON:Ljava/lang/String; = "ro.camera.resetOption.verizon"

.field public static final VIDEO_TAG:Ljava/lang/String; = "videotag"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p1}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 30
    return-void
.end method

.method private resetBackValues()V
    .locals 13

    .prologue
    const v12, 0x7f0c00f0

    const v11, 0x7f0c0050

    .line 67
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0c00cd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, timerValue:Ljava/lang/String;
    const-string v9, "pref_camera_timer_key"

    invoke-direct {p0, v9, v5}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, colorValue:Ljava/lang/String;
    const-string v9, "pref_camera_coloreffect_key"

    invoke-direct {p0, v9, v1}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, distorValue:Ljava/lang/String;
    const-string v9, "pref_camera_distortion_key"

    invoke-direct {p0, v9, v3}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v9, "ro.camera.resetOption.verizon"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0c00d6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, shootValue:Ljava/lang/String;
    const-string v9, "pref_camera_shootmode_key"

    invoke-direct {p0, v9, v4}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v4           #shootValue:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, videoColorValue:Ljava/lang/String;
    const-string v9, "pref_video_coloreffect_key"

    invoke-direct {p0, v9, v6}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, videoDistortionValue:Ljava/lang/String;
    const-string v9, "pref_video_distortion_key"

    invoke-direct {p0, v9, v7}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v9, "ro.camera.resetOption.verizon"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 86
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0049

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, whiteBalanceValue:Ljava/lang/String;
    const-string v9, "pref_camera_whitebalance_key"

    invoke-direct {p0, v9, v8}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v9, "pref_video_whitebalance_key"

    invoke-direct {p0, v9, v8}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0c0080

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, brightnessValue:Ljava/lang/String;
    const-string v9, "pref_camera_brightness_key"

    invoke-direct {p0, v9, v0}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v9, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v10, 0x7f0c007a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, contrastValue:Ljava/lang/String;
    const-string v9, "pref_camera_contrast_key"

    invoke-direct {p0, v9, v2}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0           #brightnessValue:Ljava/lang/String;
    .end local v2           #contrastValue:Ljava/lang/String;
    .end local v8           #whiteBalanceValue:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "KEY"
    .parameter "defaultvalue"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetFrontValues()V
    .locals 9

    .prologue
    const v8, 0x7f0c00f0

    const v7, 0x7f0c0050

    .line 102
    iget-object v5, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, colorValue:Ljava/lang/String;
    const-string v5, "pref_camera_coloreffect_key"

    invoke-direct {p0, v5, v0}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, distorValue:Ljava/lang/String;
    const-string v5, "pref_camera_distortion_key"

    invoke-direct {p0, v5, v1}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "ro.camera.resetOption.verizon"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, shootValue:Ljava/lang/String;
    const-string v5, "pref_camera_shootmode_key"

    invoke-direct {p0, v5, v2}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v2           #shootValue:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, videoColorValue:Ljava/lang/String;
    const-string v5, "pref_video_coloreffect_key"

    invoke-direct {p0, v5, v3}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, videoDistortionValue:Ljava/lang/String;
    const-string v5, "pref_video_distortion_key"

    invoke-direct {p0, v5, v4}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method


# virtual methods
.method public resetCameraPreference()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 33
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 36
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 37
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 38
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 39
    invoke-direct {p0}, Lcom/android/hwcamera/ResetPreference;->resetBackValues()V

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 42
    .local v2, frontCameraId:I
    if-eq v2, v5, :cond_1

    .line 43
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 44
    invoke-direct {p0}, Lcom/android/hwcamera/ResetPreference;->resetFrontValues()V

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 51
    return-void
.end method
