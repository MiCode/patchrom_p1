.class public Lcom/android/hwcamera/hwui/SuperPanel;
.super Lcom/android/hwcamera/hwui/Panel;
.source "SuperPanel.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    }
.end annotation


# static fields
.field private static final CLOSE_ALL_SUBMENU_MSG:I = 0x2

.field private static final CLOSE_SUB_MENU_MSG:I = 0x4

.field private static final CLOSE_SUB_MENU_STEP_PX:I = 0x3c

.field public static final COLOR_EFFECT_MENU_INDEX:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFALTNUM:I = -0x1

.field public static final DISTORTION_MENU_INDEX:I = 0x1

.field private static final IDLE_TIME_OUT_MSG:I = 0x3

.field private static final ID_ADVANCESETTINGS:I = 0x0

.field private static final ID_COLOR_EFFECT:I = 0x2

.field private static final ID_FIRSTVIEW:I = 0x0

.field private static final ID_FOURTHVIEW:I = 0x3

.field private static final ID_IMAGEADJUSTMENT:I = 0x2

.field private static final ID_SECONDVIEW:I = 0x1

.field private static final ID_SHOOTINGMODE:I = 0x3

.field private static final ID_THIRDVIEW:I = 0x2

.field private static final ID_VIDEO_DISTORTION:I = 0x1

.field private static final ID_VIDEO_RESOLUTION:I = 0x4

.field private static final ID_VIDEO_WHITEBALANCE:I = 0x2

.field private static final ID_WHITE_BALANCE:I = 0x1

.field public static final IMAGE_ADJUSTMENT_MENU_INDEX:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final MAXIDLETIME:I = 0x0

.field private static final OPEN_SUB_MENU_MSG:I = 0x1

.field private static final PANELNUMER:I = 0x4

.field public static final SETTING_MENU_INDEX:I = 0x0

.field public static final SHOOTIGN_MODE_MENU_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "superpanel"

.field public static final VIDEO_SIZE_MENU_INDEX:I = 0x3

.field public static final WHITE_BALANCE_MENU_INDEX:I = 0x1


# instance fields
.field private mCameraId:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mGPSstatus:Z

.field private mHandleTouchEvnt:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraCaptureIntent:Z

.field private mIsLowVideoRecord:Z

.field private mIsSubMenuClosing:Z

.field private mIsVideo:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastDisplayID:I

.field private mLastSubPanel:Landroid/view/View;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mMessageOffset:I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mSeekBarView:Landroid/view/View;

.field private mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

.field private mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mSubAnimLength:I

.field private mSubMenuContent:Landroid/view/View;

.field private mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

.field private mSubMenuContentSub:Landroid/view/View;

.field private mSubMenuState:Z

.field private mSubPanel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSupperPanelLength_Landscape:I

.field private mSupperPanelLength_Portrait:I

.field private mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private subViewParam:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDelayTime(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/hwui/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 94
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 96
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 98
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 101
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    .line 275
    new-instance v0, Lcom/android/hwcamera/hwui/SuperPanel$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/SuperPanel$1;-><init>(Lcom/android/hwcamera/hwui/SuperPanel;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initMenuCommon()V

    .line 113
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOnPanelListener(Lcom/android/hwcamera/hwui/Panel$OnPanelListener;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SuperPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SuperPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object p1
.end method

.method private closePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 526
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method private initSecondLevelMenu(Z)Z
    .locals 3
    .parameter "isVideo"

    .prologue
    .line 499
    const-string v0, "pref_camera_distortion_key"

    .line 500
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_camera_whitebalance_key"

    .line 501
    .local v1, whitebalanceKey:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 502
    const-string v1, "pref_video_whitebalance_key"

    .line 503
    const-string v0, "pref_video_distortion_key"

    .line 505
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    .line 508
    const/4 v2, 0x0

    .line 512
    :goto_0
    return v2

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 511
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v2, v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    .line 512
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z
    .locals 1
    .parameter "listView"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 518
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 519
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 520
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->initModeView()Z

    move-result v0

    return v0
.end method

.method private initThirdLevelMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 476
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v2, :cond_2

    .line 477
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p0, v4, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 479
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const-string v2, "pref_video_whitebalance_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    .line 494
    :goto_0
    return v0

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_video_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 484
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 485
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_video_distortion_key"

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 489
    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p0, v4, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_1

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 493
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    move v0, v1

    .line 494
    goto :goto_0
.end method

.method private setCameraStateMenu(ZZ)V
    .locals 3
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const/4 v2, 0x0

    .line 767
    if-eqz p2, :cond_0

    .line 768
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_distortion_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 773
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_front_camera_support_coloreffect"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 777
    :cond_2
    return-void
.end method

.method private setCaptureIntentMenu(Z)V
    .locals 5
    .parameter "isOnCameraState"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f08003d

    .line 783
    if-eqz p1, :cond_0

    .line 784
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 786
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 798
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 789
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    if-eqz v1, :cond_1

    .line 790
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 793
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, defalutValue:Ljava/lang/String;
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSubPanelOriginParam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    .line 196
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 206
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 214
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setVideoStateMeun(ZZ)V
    .locals 6
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const v5, 0x7f08003d

    const v4, 0x7f08003c

    .line 743
    if-eqz p2, :cond_1

    .line 744
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_video_distortion_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 753
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 754
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 760
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 761
    return-void

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_quality_key"

    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, vidosizeValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 749
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 756
    .end local v0           #vidosizeValue:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private startChangePanel(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 370
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 371
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 372
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method


# virtual methods
.method public closeAllMenu()Z
    .locals 2

    .prologue
    .line 715
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 716
    .local v0, closemenu:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 717
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    const/4 v1, 0x1

    return v1
.end method

.method public closePopWindowNoAni()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 708
    :cond_0
    return-void
.end method

.method public closePopWindowOnly()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method public closeSubPanelOnly()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 695
    return-void
.end method

.method public collapseAllPanelsControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowNoAni()V

    .line 950
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 951
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 954
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 955
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method public collapsePanelsControls()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 936
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 945
    :cond_0
    :goto_0
    return v0

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 940
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 942
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 945
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->updatePanelIdleState()Z

    .line 544
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/hwui/Panel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displaySeekbar()V
    .locals 3

    .prologue
    .line 681
    const/4 v0, 0x2

    .line 682
    .local v0, SelectID:I
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 683
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 684
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 685
    return-void
.end method

.method public dissmissPopWindowNoAni()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 877
    :cond_0
    return-void
.end method

.method public getSeekBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 690
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingmenu()Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method public getSupperPanelHeight(FII)I
    .locals 5
    .parameter "ration"
    .parameter "step"
    .parameter "screenHeight"

    .prologue
    .line 929
    int-to-float v4, p3

    mul-float v3, v4, p1

    .line 930
    .local v3, superPanelHeightTemp:F
    int-to-float v4, p2

    div-float v0, v3, v4

    .line 931
    .local v0, fSupperStepBy:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 932
    .local v1, iSupperStepBy:I
    mul-int v2, v1, p2

    .line 933
    .local v2, superPanelHeight:I
    return v2
.end method

.method public getTouchAble()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    return v0
.end method

.method public initImageSubPanel()V
    .locals 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    return-void
.end method

.method public initMenuCommon()V
    .locals 12

    .prologue
    const/16 v11, 0xb4

    const/high16 v10, 0x43a5

    const/high16 v9, 0x4387

    const/16 v8, 0x3c

    .line 118
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 119
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .line 121
    .local v5, screenWidth:I
    const/4 v4, 0x0

    .line 124
    .local v4, screenHeight:I
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_0

    .line 125
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 126
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 134
    :goto_0
    const/high16 v2, 0x3f10

    .line 135
    .local v2, ratio_portrait:F
    const/high16 v1, 0x3f20

    .line 136
    .local v1, ratio_landscape:F
    invoke-virtual {p0, v2, v8, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 137
    invoke-virtual {p0, v1, v8, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 138
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 141
    invoke-static {v11}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 142
    invoke-static {v11}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 143
    const/16 v6, 0x24

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 144
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 145
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    .line 156
    :goto_1
    invoke-static {v5}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenWidth(I)V

    .line 157
    invoke-static {v4}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenHeight(I)V

    .line 158
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthLandscape(I)V

    .line 159
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthPortrait(I)V

    .line 160
    return-void

    .line 128
    .end local v1           #ratio_landscape:F
    .end local v2           #ratio_portrait:F
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 148
    .restart local v1       #ratio_landscape:F
    .restart local v2       #ratio_portrait:F
    :cond_1
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 149
    const/16 v6, 0x5a

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 150
    invoke-static {v8}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 151
    const/16 v6, 0xa

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 152
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 153
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    goto :goto_1
.end method

.method public initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V
    .locals 0
    .parameter "vi"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 674
    return-void
.end method

.method public initVideoSubPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 848
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isOnVideoState()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    return v0
.end method

.method public isPopWindowShowing()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    return v0
.end method

.method public isSuperMenuOpened()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method public menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "modeValue"
    .parameter "key"
    .parameter "MenuItem"

    .prologue
    .line 804
    if-nez p1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    const/4 v4, 0x0

    .line 808
    .local v4, restId:I
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v5, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/IconListPreference;

    .line 810
    .local v2, list:Lcom/android/hwcamera/IconListPreference;
    invoke-virtual {v2}, Lcom/android/hwcamera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 811
    .local v0, drawIds:[I
    invoke-virtual {v2, p1}, Lcom/android/hwcamera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 812
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 813
    aget v4, v0, v1

    .line 815
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    .line 816
    .local v3, menuItem:Lcom/android/hwcamera/RotateImageView;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 817
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onChangeToBackCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 732
    if-eqz p1, :cond_0

    .line 733
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onChangeToFrontCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 722
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0200ac

    const v10, 0x7f0200ab

    const/4 v9, 0x0

    .line 381
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, -0x1

    .line 386
    .local v0, SelectID:I
    const/4 v4, 0x1

    .line 387
    .local v4, isHasData:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 389
    :pswitch_0
    const/4 v0, 0x0

    .line 390
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 391
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 392
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 393
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setVidoState(Z)V

    .line 394
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setCameraID(I)V

    .line 395
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/hwui/SettingsView;->setImageCaptureIntent(Z)V

    .line 396
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/SettingsView;->viewInit()Z

    move-result v4

    .line 397
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_3

    .line 398
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setReviewEnable(Z)V

    .line 400
    :cond_3
    if-eqz v4, :cond_0

    .line 442
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v7

    if-nez v7, :cond_9

    .line 443
    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 444
    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 445
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 446
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v7, 0x4

    if-ge v1, v7, :cond_7

    .line 447
    iget v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    add-int/2addr v7, v1

    rem-int/lit8 v2, v7, 0x4

    .line 448
    .local v2, index:I
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 449
    .local v6, vie:Landroid/view/View;
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7, v6, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v6           #vie:Landroid/view/View;
    :pswitch_1
    const/4 v0, 0x1

    .line 407
    const/4 v3, 0x1

    .line 408
    .local v3, isDistortionState:Z
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSecondLevelMenu(Z)Z

    move-result v3

    .line 409
    if-eqz v3, :cond_4

    goto :goto_0

    .line 417
    .end local v3           #isDistortionState:Z
    :pswitch_2
    const/4 v0, 0x2

    .line 418
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initThirdLevelMenu()Z

    move-result v5

    .line 419
    .local v5, isState:Z
    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 426
    .end local v5           #isState:Z
    :pswitch_3
    const/4 v0, 0x3

    .line 427
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v7, :cond_6

    .line 428
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    .line 434
    :cond_5
    :goto_2
    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 430
    :cond_6
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v8, "pref_camera_shootmode_key"

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 431
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    goto :goto_2

    .line 451
    .restart local v1       #i:I
    :cond_7
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 452
    iget-boolean v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 453
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 455
    :cond_8
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 471
    .end local v1           #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v7}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    goto/16 :goto_0

    .line 457
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 458
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v7, v9}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 460
    :cond_a
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 461
    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 464
    iget v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_b

    .line 465
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v8, v0, v8

    add-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_3

    .line 467
    :cond_b
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_3

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/hwcamera/hwui/Panel;->onFinishInflate()V

    .line 168
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    .line 169
    const v3, 0x7f08003e

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    .line 171
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v3, 0x7f08009f

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 177
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040016

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 178
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 180
    new-instance v3, Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/hwcamera/hwui/SettingsView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    .line 182
    const v3, 0x7f0800a7

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 183
    .local v0, mShootModeList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_shootmode_key"

    invoke-direct {v3, v4, v0, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 185
    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 186
    .local v1, mVideoSizeList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_video_quality_key"

    invoke-direct {v3, v4, v1, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 188
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 189
    .local v2, whiteBalanceList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {v3, v4, v2, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 191
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 192
    return-void
.end method

.method public onPanelClosed(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 3
    .parameter "panel"

    .prologue
    const/4 v2, 0x0

    .line 236
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 241
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 248
    :cond_2
    return-void
.end method

.method public onPanelOpened(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public onPanelStartClose()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 260
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 271
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 266
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshWhitebalanceIcon(Z)V
    .locals 7
    .parameter "isOnCameraState"

    .prologue
    .line 821
    const-string v0, "pref_video_whitebalance_key"

    .line 822
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x2

    .line 823
    .local v2, menuIndex:I
    const v1, 0x7f08003c

    .line 824
    .local v1, menuId:I
    if-eqz p1, :cond_1

    .line 825
    const-string v0, "pref_camera_whitebalance_key"

    .line 826
    const v1, 0x7f08003b

    .line 827
    const/4 v2, 0x1

    .line 834
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v0}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 835
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, whitebalanceValue:Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 838
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 844
    .end local v3           #whitebalanceValue:Ljava/lang/String;
    :goto_1
    return-void

    .line 829
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 830
    const v1, 0x7f08003b

    .line 831
    const/4 v2, 0x1

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/RotateImageView;

    const v5, 0x7f020081

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 842
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 563
    return-void
.end method

.method public setAnimateHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 570
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 572
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 574
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setAnimateWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 583
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 584
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 586
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setCameraCaptureIntent(Z)V
    .locals 0
    .parameter "isCameraCaptureIntent"

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 885
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 567
    return-void
.end method

.method public setCurrentState(Z)V
    .locals 0
    .parameter "isvideo"

    .prologue
    .line 867
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    .line 868
    return-void
.end method

.method public setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 911
    new-instance v1, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 912
    .local v1, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v0

    .line 913
    .local v0, effectDistortionEnable:[Z
    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_front_camera_support_coloreffect"

    invoke-static {v2, v3, v5}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 915
    :cond_0
    const/4 v2, 0x2

    aget-boolean v3, v0, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-nez v2, :cond_2

    .line 918
    aget-boolean v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ShootCommon;->isWhiteBalanceEnable(Z)Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_2
    aget-boolean v2, v0, v4

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method public setGPSstatus(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    .line 659
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setGPSstatus(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 9
    .parameter "degree"

    .prologue
    const v8, 0x7f02000d

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f020006

    .line 596
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setOrientationEx(I)V

    .line 600
    :cond_0
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 602
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 604
    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 606
    const v3, 0x7f08003a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 608
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    .local v0, mLineLayout:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 613
    .local v2, titleView:Landroid/view/View;
    div-int/lit8 v3, p1, 0x5a

    rem-int/lit8 v1, v3, 0x4

    .line 614
    .local v1, orientation:I
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 616
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 618
    if-nez v1, :cond_2

    .line 619
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 620
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 621
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040017

    const v5, 0x7f040019

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 622
    :cond_2
    if-ne v1, v7, :cond_3

    .line 623
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 624
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v8}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 625
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040014

    const v5, 0x7f040015

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 626
    :cond_3
    if-ne v1, v5, :cond_4

    .line 627
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 628
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v8}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 629
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040016

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 630
    :cond_4
    if-ne v1, v6, :cond_1

    .line 631
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 632
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 633
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f04001a

    const v5, 0x7f04001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 637
    :cond_5
    if-nez v1, :cond_6

    .line 638
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 639
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 640
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040016

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 641
    :cond_6
    if-ne v1, v7, :cond_7

    .line 642
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 643
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 644
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040017

    const v5, 0x7f040019

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 645
    :cond_7
    if-ne v1, v5, :cond_8

    .line 646
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 647
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 648
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f04001a

    const v5, 0x7f04001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 649
    :cond_8
    if-ne v1, v6, :cond_1

    .line 650
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 651
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 652
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f040014

    const v5, 0x7f040015

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0
.end method

.method public setPanelClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 229
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    .line 232
    invoke-virtual {p0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 233
    return-void
.end method

.method public setPanelItemEnable(IZ)V
    .locals 2
    .parameter "index"
    .parameter "isEnable"

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, itemId:I
    packed-switch p1, :pswitch_data_0

    .line 909
    :goto_0
    return-void

    .line 894
    :pswitch_0
    const v0, 0x7f08003a

    .line 908
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 897
    :pswitch_1
    const v0, 0x7f08003b

    .line 898
    goto :goto_1

    .line 900
    :pswitch_2
    const v0, 0x7f08003c

    .line 901
    goto :goto_1

    .line 903
    :pswitch_3
    const v0, 0x7f08003d

    .line 904
    goto :goto_1

    .line 892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 551
    return-void
.end method

.method public setTouchAble(Z)V
    .locals 0
    .parameter "touchAble"

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    .line 536
    return-void
.end method

.method public setVideoCaptureIntent(Z)V
    .locals 0
    .parameter "isVideoCaptureIntent"

    .prologue
    .line 880
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 881
    return-void
.end method

.method public setVideoRecordQuality(Z)V
    .locals 0
    .parameter "lowRecord"

    .prologue
    .line 888
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 889
    return-void
.end method

.method public updatePanelIdleState()Z
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 665
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 667
    .local v0, closemenu:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 668
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 669
    const/4 v1, 0x1

    return v1
.end method

.method public updateSubMenuState(I)V
    .locals 6
    .parameter "mstep"

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, marginLeft:I
    const/4 v3, 0x0

    .line 353
    .local v3, marginTop:I
    const/4 v2, 0x0

    .line 354
    .local v2, marginRight:I
    const/4 v0, 0x0

    .line 355
    .local v0, marginBottom:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v1, v4, v5

    .line 364
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 367
    return-void

    .line 361
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    iget v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int v3, v4, v5

    goto :goto_0
.end method
