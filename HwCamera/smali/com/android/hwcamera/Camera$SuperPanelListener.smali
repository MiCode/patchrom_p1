.class Lcom/android/hwcamera/Camera$SuperPanelListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/SuperPanel$Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperPanelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5006
    iput-object p1, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5006
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$SuperPanelListener;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public gallerExEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "entryKey"

    .prologue
    .line 5136
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExStart(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$12700(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    .line 5137
    return-void
.end method

.method public onPanelStateChange(Z)V
    .locals 3
    .parameter "isPanelOpen"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 5140
    if-eqz p1, :cond_0

    .line 5141
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$12800(Lcom/android/hwcamera/Camera;I)V

    .line 5142
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$12900(Lcom/android/hwcamera/Camera;I)V

    .line 5151
    :goto_0
    return-void

    .line 5144
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 5145
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExInit()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 5148
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$12800(Lcom/android/hwcamera/Camera;I)V

    .line 5149
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$12900(Lcom/android/hwcamera/Camera;I)V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$12600(Lcom/android/hwcamera/Camera;)V

    .line 5133
    return-void
.end method

.method public onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "KEY"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5008
    if-nez p1, :cond_0

    .line 5009
    const-string v4, "Camera"

    const-string v5, "onSharedPreferencesChanged err,KEY is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :goto_0
    return-void

    .line 5013
    :cond_0
    const-string v4, "pref_camera_save_location_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5014
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/hwcamera/CameraSettings;->writPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 5015
    const-string v4, "phone"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5016
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 5020
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 5018
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_1

    .line 5022
    :cond_2
    const-string v4, "pref_camera_gps_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5023
    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5025
    const-string v4, "ro.camera.show.eula"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5026
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11500(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->getFirstTime(Landroid/content/SharedPreferences;)Z

    move-result v1

    .line 5027
    .local v1, isFirstTime:Z
    if-eqz v1, :cond_3

    .line 5028
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showEulaDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11800(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 5031
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$9100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8300(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 5032
    .local v3, state:Z
    if-nez v3, :cond_5

    .line 5033
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11600(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 5038
    .end local v1           #isFirstTime:Z
    .end local v3           #state:Z
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$9100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$8300(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 5039
    .restart local v3       #state:Z
    if-nez v3, :cond_5

    .line 5040
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11600(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 5049
    .end local v3           #state:Z
    :cond_5
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5050
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5051
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 5081
    :cond_6
    :goto_2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5082
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5083
    const-string v4, "pref_camera_shootmode_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5084
    const-string v4, "panorama"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5085
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$12102(Lcom/android/hwcamera/Camera;Z)Z

    .line 5087
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$11002(Lcom/android/hwcamera/Camera;Z)Z

    .line 5088
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    .line 5089
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    const-string v5, "pref_camera_shootmode_key"

    const v6, 0x7f08003d

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5090
    const-string v4, "panorama"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/hwcamera/Util;->isPanoramaSupportedByScalado()Z

    move-result v4

    if-nez v4, :cond_10

    .line 5091
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 5092
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->goToPanoromaMode()Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$12200(Lcom/android/hwcamera/Camera;)Z

    goto/16 :goto_0

    .line 5052
    :cond_8
    const-string v4, "pref_camera_brightness_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5053
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 5054
    :cond_9
    const-string v4, "pref_camera_saturation_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5055
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 5056
    :cond_a
    const-string v4, "pref_camera_contrast_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5057
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 5058
    :cond_b
    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5059
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 5061
    const-string v4, "pref_camera_distortion_key"

    const-string v5, "none"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5063
    :cond_c
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$12000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_distortion_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_6

    .line 5064
    const/4 v3, 0x1

    .line 5066
    .restart local v3       #state:Z
    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    iget-object v6, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$11900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 5070
    :cond_d
    const/4 v3, 0x0

    .line 5073
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto/16 :goto_2

    .line 5075
    .end local v3           #state:Z
    :cond_f
    const-string v4, "pref_camera_distortion_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5076
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 5078
    const-string v4, "pref_camera_coloreffect_key"

    const-string v5, "none"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 5095
    :cond_10
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/android/hwcamera/Camera;->access$12300(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    .line 5098
    :cond_11
    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5099
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;)V

    .line 5128
    :cond_12
    :goto_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11400(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 5100
    :cond_13
    const-string v4, "pref_camera_picture_widescreen_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 5101
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;)V

    goto :goto_3

    .line 5102
    :cond_14
    const-string v4, "pref_camera_grid_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5103
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f08000b

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/GridLines;

    .line 5104
    .local v2, mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 5105
    invoke-virtual {v2, v8}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto/16 :goto_0

    .line 5107
    :cond_15
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto/16 :goto_0

    .line 5110
    .end local v2           #mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    :cond_16
    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "pref_camera_distortion_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5112
    :cond_17
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashModeEnable()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$12400(Lcom/android/hwcamera/Camera;)V

    goto :goto_3

    .line 5113
    :cond_18
    const-string v4, "pref_camera_auto_focusmode_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 5114
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setAutoFocus(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/android/hwcamera/Camera;->access$12500(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    goto :goto_3

    .line 5115
    :cond_19
    const-string v4, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 5116
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$12000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_distortion_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_12

    .line 5117
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    const v5, 0x7f08003b

    invoke-virtual {v4, p2, p1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 5119
    :cond_1a
    const-string v4, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 5120
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$11700(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_3

    .line 5121
    :cond_1b
    const-string v4, "pref_camera_scenemode_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5122
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashModeEnable()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$12400(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_3

    .line 5123
    :cond_1c
    const-string v4, "pref_camera_widescreen_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5124
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$11002(Lcom/android/hwcamera/Camera;Z)Z

    .line 5125
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In sharepreference, mRestartPreviewNeed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$11000(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSubPanelClosed()V
    .locals 2

    .prologue
    .line 5154
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5155
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5156
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->initPanorama()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$13100(Lcom/android/hwcamera/Camera;)V

    .line 5158
    :cond_0
    return-void
.end method
