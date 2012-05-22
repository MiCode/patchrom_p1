.class Lcom/android/hwcamera/VideoCamera$SuperPanelListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/SuperPanel$Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperPanelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2799
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2799
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public gallerExEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "entryKey"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExStart(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoCamera;->access$6400(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V

    .line 2883
    return-void
.end method

.method public onPanelStateChange(Z)V
    .locals 4
    .parameter "isPanelOpen"

    .prologue
    const v3, 0x7f08002f

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2886
    if-eqz p1, :cond_0

    .line 2887
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$6500(Lcom/android/hwcamera/VideoCamera;I)V

    .line 2888
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2896
    :goto_0
    return-void

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3600(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2890
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExInit()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6600(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 2893
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6500(Lcom/android/hwcamera/VideoCamera;I)V

    .line 2894
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6300(Lcom/android/hwcamera/VideoCamera;)V

    .line 2879
    return-void
.end method

.method public onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "KEY"
    .parameter "value"

    .prologue
    .line 2801
    if-nez p1, :cond_0

    .line 2802
    const-string v5, "videocamera"

    const-string v6, " KEY is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :goto_0
    return-void

    .line 2806
    :cond_0
    const-string v5, "pref_camera_save_location_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2807
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/hwcamera/CameraSettings;->writPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2808
    const-string v5, "phone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2809
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 2813
    :goto_1
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5200(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 2811
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_1

    .line 2815
    :cond_2
    const-string v5, "pref_video_gps_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2816
    const-string v5, "on"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2818
    const-string v5, "ro.camera.show.eula"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2819
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5700(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/CameraSettings;->getFirstTime(Landroid/content/SharedPreferences;)Z

    move-result v3

    .line 2820
    .local v3, isFirstTime:Z
    if-eqz v3, :cond_3

    .line 2821
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$6100(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 2824
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$5800(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 2825
    .local v4, state:Z
    if-nez v4, :cond_4

    .line 2826
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;)V

    .line 2839
    .end local v3           #isFirstTime:Z
    .end local v4           #state:Z
    :cond_4
    const-string v5, "pref_video_shutter_sound_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2840
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 2842
    :cond_5
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2843
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_video_coloreffect_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2844
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_video_coloreffect_key"

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v8, 0x7f0c0050

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, colorvalue:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "none"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2848
    const-string v5, "pref_video_distortion_key"

    const-string v6, "none"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2850
    :cond_6
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$6200(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v5

    const-string v6, "pref_video_distortion_key"

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v5

    if-nez v5, :cond_7

    .line 2851
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "none"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 2862
    .end local v0           #colorvalue:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2863
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2864
    const-string v5, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2865
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2874
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5500(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 2830
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_9
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$5800(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 2831
    .restart local v4       #state:Z
    if-nez v4, :cond_4

    .line 2832
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 2854
    .end local v4           #state:Z
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_a
    const-string v5, "pref_video_distortion_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2855
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_video_distortion_key"

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v8, 0x7f0c00f0

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2857
    .local v1, distortion:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "none"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2859
    const-string v5, "pref_video_coloreffect_key"

    const-string v6, "none"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 2866
    .end local v1           #distortion:Ljava/lang/String;
    :cond_b
    const-string v5, "pref_video_quality_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2867
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2868
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v5

    const-string v6, "pref_video_quality_key"

    const v7, 0x7f08003d

    invoke-virtual {v5, p2, v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 2871
    :cond_c
    const-string v5, "pref_video_whitebalance_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2872
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    goto/16 :goto_3
.end method

.method public onSubPanelClosed()V
    .locals 0

    .prologue
    .line 2898
    return-void
.end method
