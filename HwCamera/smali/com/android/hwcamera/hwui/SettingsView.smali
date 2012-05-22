.class public Lcom/android/hwcamera/hwui/SettingsView;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SettingsView$1;,
        Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;
    }
.end annotation


# static fields
.field private static final ANIBANDING_ITEM:I = 0x1018

.field private static final AUTO_FOCUSMODE_ITEM:I = 0x1014

.field private static final DEFAULE_ITEM:I = 0x1000

.field private static final FACE_DETECTION_ITEM:I = 0x1010

.field private static final GPS_ITEM:I = 0x100a

.field private static final GRID_ITEM:I = 0x1009

.field private static final HDR_ITEM:I = 0x1007

.field private static final IMAGE_ADJUSTEMTS_ITEM:I = 0x1004

.field private static final ISO_ITEM:I = 0x100c

.field private static final NORMAL_SCREEN:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_SCREEN_SIZE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PICTURE_QUALITY_ITEM:I = 0x100e

.field private static final PICTURE_SIZE_ITEM:I = 0x100d

.field private static final RED_EYE_REDUCTION_ITEM:I = 0x1008

.field private static final RESTORE_ITEM:I = 0x100b

.field private static final REVIEW_ITEM:I = 0x1012

.field private static final SAVE_LOCATION_ITEM:I = 0x1013

.field private static final SCENE_MODE_ITEM:I = 0x1015

.field private static final SHUTTER_SOUND_ITEM:I = 0x1016

.field private static final STEADY_PHOTO_ITEM:I = 0x1011

.field private static final TIME_ITEM:I = 0x1006

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final VIDEO_QUALITY_LEVEL_ITEM:I = 0x1017

.field private static final WHITE_BALANCE_ITEM:I = 0x1005

.field private static final WIDESCREEN_SCREEN:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDE_SCREEN_ITEM:I = 0x100f


# instance fields
.field private effectDistortionEnable:[Z

.field private mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mCameraID:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mCurTouchX:F

.field private mCurTouchY:F

.field private mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

.field private mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

.field mIsEnableImage:Z

.field mIsEnableIso:Z

.field mIsEnableRed:Z

.field mIsEnableReview:Z

.field mIsEnableSceneMode:Z

.field mIsEnableSteady:Z

.field mIsEnableWhite:Z

.field mIsImageCaptureIntent:Z

.field private mIsVideo:Z

.field private mLastTouchView:Landroid/view/View;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewListenerID:I

.field private mListViewPreListenerID:I

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mOrientation:I

.field private mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mResources:Landroid/content/res/Resources;

.field private mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mScenceDefaultValue:Ljava/lang/String;

.field private mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSettingsRoot:Landroid/widget/LinearLayout;

.field private mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

.field private mShutterSoundStatus:Z

.field private mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mThreshold:F

.field private mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mWideScreenState:Z

.field private mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    const-string v1, "3264x2448"

    const-string v2, "8M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    const-string v1, "2592x1944"

    const-string v2, "5M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    const-string v1, "2048x1536"

    const-string v2, "3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    const-string v1, "1280x960"

    const-string v2, "1.3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    const-string v1, "640x480"

    const-string v2, "0.3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    const-string v1, "3264x1836"

    const-string v2, "8M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    const-string v1, "2592x1458"

    const-string v2, "5M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    const-string v1, "2048x1152"

    const-string v2, "3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    const-string v1, "1280x720"

    const-string v2, "1.3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    const-string v1, "640x360"

    const-string v2, "0.3M"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "8M"

    const-string v2, "3264x2448"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "5M"

    const-string v2, "2592x1944"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "3M"

    const-string v2, "2048x1536"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "1.3M"

    const-string v2, "1280x960"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "0.3M"

    const-string v2, "640x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "8M"

    const-string v2, "3264x1836"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "5M"

    const-string v2, "2592x1458"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "3M"

    const-string v2, "2048x1152"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "1.3M"

    const-string v2, "1280x720"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    const-string v1, "0.3M"

    const-string v2, "640x360"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V
    .locals 3
    .parameter "context"
    .parameter "rootLinear"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 55
    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    .line 56
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 57
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 58
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 59
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 60
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    .line 116
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 119
    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 121
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableReview:Z

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 130
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 132
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 141
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    .line 142
    const v0, 0x7f0800a1

    invoke-virtual {p2, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    .line 144
    iput-object p2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    .line 147
    return-void

    .line 129
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/hwcamera/hwui/SettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/SettingsView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 766
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 767
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 769
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 762
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 773
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 776
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 783
    return-void
.end method

.method private anctionUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1253
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1255
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1256
    return-void
.end method

.method private beautyUpdatesItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1222
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1224
    return-void
.end method

.method private burstUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1205
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1207
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1208
    return-void
.end method

.method private clearTouchXY()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1279
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 1280
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 1281
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 1282
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 1283
    return-void
.end method

.method private dealConflictMenuforCamera()V
    .locals 7

    .prologue
    .line 283
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, value:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->effectChangedUpdateItems(Ljava/lang/String;)V

    .line 288
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    const-string v1, "single"

    .line 289
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->shootChangeUpdateItems(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_distortion_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c00f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, distortionValue:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->distortionChangedUpdateItems(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private distortionChangedUpdateItems(Ljava/lang/String;)V
    .locals 6
    .parameter "Value"

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-nez v2, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_2

    .line 1108
    const-string v1, "single"

    .line 1110
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    .line 1111
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    goto :goto_0

    .line 1117
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ShootCommon;->faceDectectionEnableByShoot(Ljava/lang/String;)Z

    move-result v0

    .line 1119
    .local v0, isFaceEnable:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    goto :goto_0
.end method

.method private effectChangedUpdateItems(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1049
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00d6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 1052
    const-string v1, "single"

    .line 1055
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenemodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, scenesModeValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_4

    .line 1058
    const-string v2, "hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    :cond_1
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1060
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1061
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1062
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1072
    :goto_0
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1086
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1087
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1088
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_6

    .line 1089
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1093
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1094
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1095
    return-void

    .line 1063
    :cond_2
    const-string v2, "lowlight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1064
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1065
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1066
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1067
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    goto :goto_0

    .line 1069
    :cond_3
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1070
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_4
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1075
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->redSteadyEnableByShoot(Ljava/lang/String;)V

    .line 1076
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    .line 1077
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    goto :goto_1

    .line 1079
    :cond_5
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1080
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1081
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1082
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1083
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    goto :goto_1

    .line 1091
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v7, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_2
.end method

.method private getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .parameter "list"

    .prologue
    .line 823
    const-string v4, ""

    .line 824
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, defaultValue:Ljava/lang/String;
    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pref_camera_picture_widescreen_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 827
    :cond_0
    const/4 v0, 0x0

    .line 833
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v5, p1, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, mvalue:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 835
    .local v1, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 836
    invoke-virtual {p2, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 837
    .local v2, index:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 838
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 841
    .end local v2           #index:I
    :cond_2
    return-object v4

    .line 829
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v3           #mvalue:Ljava/lang/String;
    :cond_3
    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z
    .locals 4
    .parameter "key"
    .parameter "list"

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, bCheckboxState:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v2, :cond_0

    .line 851
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, viewValue:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 855
    .end local v1           #viewValue:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private getWideScreenState(Lcom/android/hwcamera/ListPreference;)Z
    .locals 6
    .parameter "list"

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, bCheckboxState:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_widescreen_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, widescreenstate:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 746
    const/4 v0, 0x0

    .line 751
    .end local v1           #widescreenstate:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 748
    .restart local v1       #widescreenstate:Ljava/lang/String;
    :cond_1
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private groupUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1232
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1234
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1235
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1236
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1237
    return-void
.end method

.method private hdrInit()V
    .locals 4

    .prologue
    .line 317
    new-instance v1, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    .line 318
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_hdr_save_mode"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 319
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setTitle(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setSummary(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const-string v2, "pref_camera_hdr_save_mode"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/16 v2, 0x1007

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setId(I)V

    .line 324
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;)V

    .line 325
    return-void
.end method

.method private hdrUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1246
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1247
    return-void
.end method

.method private initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 800
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 801
    const/4 v1, 0x0

    .line 808
    :goto_0
    return-object v1

    .line 803
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    .line 804
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 807
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    move-object v1, p1

    .line 808
    goto :goto_0
.end method

.method private initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 787
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 788
    const/4 v1, 0x0

    .line 795
    :goto_0
    return-object v1

    .line 790
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    .line 791
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 793
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 794
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    move-object v1, p1

    .line 795
    goto :goto_0
.end method

.method private initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;
    .locals 1
    .parameter "view"
    .parameter "title"
    .parameter "id"

    .prologue
    .line 813
    new-instance p1, Lcom/android/hwcamera/hwui/SingleTextview;

    .end local p1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;-><init>(Landroid/content/Context;)V

    .line 814
    .restart local p1
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/SingleTextview;->setContent(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleTextview;->setId(I)V

    .line 816
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V

    .line 817
    return-object p1
.end method

.method private initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "distortionKey"
    .parameter "whitebalanceKey"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v1, 0x1005

    invoke-direct {p0, v0, p2, v1}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 314
    :cond_0
    return-void
.end method

.method private lowlightUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1259
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1260
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1261
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1262
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1263
    return-void
.end method

.method private panoramaUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1191
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1194
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1195
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1196
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1198
    return-void
.end method

.method private pictureSizeInit()V
    .locals 5

    .prologue
    .line 328
    new-instance v2, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 329
    const-string v1, ""

    .line 330
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_picture_widescreen_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 332
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getWideScreenState(Lcom/android/hwcamera/ListPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    const-string v2, "pref_camera_picture_widescreen_key"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v3, 0x100d

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 341
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    .line 342
    return-void

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 336
    const-string v2, "pref_camera_picturesize_key"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private redSteadyEnableByShoot(Ljava/lang/String;)V
    .locals 3
    .parameter "shootValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1124
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1126
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 1131
    :goto_0
    return-void

    .line 1128
    :cond_0
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1129
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    goto :goto_0
.end method

.method private sceneChangeedUpdateItems(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1019
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1020
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1021
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1022
    const/4 v0, 0x0

    .line 1024
    .local v0, autoFocusEnable:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1027
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1028
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1029
    const-string v1, "single"

    .line 1030
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ShootCommon;->getAutoFocusEnable(Ljava/lang/String;)Z

    move-result v0

    .line 1035
    .end local v1           #shootValue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1036
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_2

    .line 1037
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1041
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1042
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1043
    return-void

    .line 1039
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v4, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method private screenchange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "priKey"
    .parameter "curKey"

    .prologue
    .line 876
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v7, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v5

    .line 877
    .local v5, screenList:Lcom/android/hwcamera/ListPreference;
    invoke-virtual {v5}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 878
    .local v1, keyentries:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 879
    .local v4, picturesizetext:Ljava/lang/String;
    const/4 v3, 0x0

    .line 880
    .local v3, picturesizesummary:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, ""

    invoke-virtual {v7, p1, v8}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 881
    .local v6, textvalue:Ljava/lang/String;
    const-string v7, "pref_camera_picturesize_key"

    if-ne p1, v7, :cond_3

    .line 882
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 883
    .local v2, pictureSizeProperty:Ljava/lang/String;
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 884
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN_SIZE:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #picturesizetext:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 885
    .restart local v4       #picturesizetext:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 886
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 887
    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    .end local v0           #index:I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 901
    :cond_1
    invoke-virtual {v5}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 902
    invoke-virtual {v5}, Lcom/android/hwcamera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v3

    .line 904
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-virtual {v7, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 905
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v7, p2, v4}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void

    .line 891
    .end local v2           #pictureSizeProperty:Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->WIDESCREEN_SCREEN:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 892
    .restart local v2       #pictureSizeProperty:Ljava/lang/String;
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 893
    sget-object v7, Lcom/android/hwcamera/hwui/SettingsView;->NORMAL_SCREEN_SIZE:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #picturesizetext:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 894
    .restart local v4       #picturesizetext:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 895
    .restart local v0       #index:I
    if-ltz v0, :cond_0

    .line 896
    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 924
    if-eqz p1, :cond_0

    .line 925
    if-eqz p2, :cond_1

    .line 926
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 927
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 930
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 911
    if-eqz p1, :cond_0

    .line 912
    if-eqz p2, :cond_1

    .line 913
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 914
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 937
    if-eqz p1, :cond_0

    .line 938
    if-eqz p2, :cond_1

    .line 939
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 940
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 943
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setViewSelected(Landroid/view/View;Z)V
    .locals 3
    .parameter "selectView"
    .parameter "isNeedHighlight"

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 356
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_2
    if-eqz p2, :cond_3

    .line 365
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 367
    :cond_3
    return-void
.end method

.method private shootChangeUpdateItems(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->transformVauletoInt(Ljava/lang/String;)I

    move-result v0

    .line 1139
    .local v0, index:I
    packed-switch v0, :pswitch_data_0

    .line 1183
    :goto_0
    :pswitch_0
    return-void

    .line 1145
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->hdrUpdateItems()V

    goto :goto_0

    .line 1149
    :pswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->groupUpdateItems()V

    goto :goto_0

    .line 1153
    :pswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->burstUpdateItems()V

    goto :goto_0

    .line 1157
    :pswitch_4
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->smileUpdateItems()V

    goto :goto_0

    .line 1161
    :pswitch_5
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->beautyUpdatesItems()V

    goto :goto_0

    .line 1165
    :pswitch_6
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->panoramaUpdateItems()V

    goto :goto_0

    .line 1169
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->anctionUpdateItems()V

    goto :goto_0

    .line 1173
    :pswitch_8
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->zslUpdateItems()V

    goto :goto_0

    .line 1177
    :pswitch_9
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->lowlightUpdateItems()V

    goto :goto_0

    .line 1139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private shutterSoundInit(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 301
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 302
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x1016

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 304
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "on"

    invoke-virtual {v1, p1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, statevale:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 306
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 307
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 308
    return-void
.end method

.method private smileUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1215
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1216
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1218
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1219
    return-void
.end method

.method private updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setSelected(Z)V

    .line 863
    const-string v0, "off"

    .line 864
    .local v0, strState:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 870
    :goto_0
    return-object v0

    .line 867
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 868
    const-string v0, "on"

    goto :goto_0
.end method

.method private wideScreenInit()V
    .locals 5

    .prologue
    .line 345
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 346
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x100f

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 348
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_widescreen_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, viewValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 351
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 352
    return-void
.end method

.method private zslUpdateItems()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method


# virtual methods
.method public dismissPopupWindow(Z)V
    .locals 1
    .parameter "isCloseAll"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 373
    :cond_0
    return-void
.end method

.method public dismissPopupWindowNoAni()V
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindowNoAni()V

    .line 1268
    :cond_0
    return-void
.end method

.method public isPopupWindowShowing()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionUp(Landroid/view/View;)Z
    .locals 15
    .parameter "view"

    .prologue
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    .line 442
    .local v14, viewId:I
    const-string v5, ""

    .line 443
    .local v5, KEY:Ljava/lang/String;
    packed-switch v14, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    const-string v0, ""

    if-eq v5, v0, :cond_13

    .line 708
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    if-eq v0, v1, :cond_12

    .line 709
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/hwui/SubPopupWindows;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    .line 711
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-nez v0, :cond_10

    .line 712
    const/4 v0, 0x0

    .line 737
    :goto_1
    return v0

    .line 445
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->displaySeekbar()V

    .line 447
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getSeekBarView()Landroid/view/View;

    move-result-object v11

    .line 448
    .local v11, mImageview:Landroid/view/View;
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {v0, v11, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;-><init>(Landroid/view/View;Lcom/android/hwcamera/PreferenceGroup;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    .line 449
    const/4 v10, 0x0

    .line 450
    .local v10, mExpouse:Ljava/lang/String;
    const/4 v12, 0x0

    .line 451
    .local v12, mSaturation:Ljava/lang/String;
    const/4 v9, 0x0

    .line 452
    .local v9, mContrast:Ljava/lang/String;
    const/4 v8, 0x0

    .line 453
    .local v8, mBrightness:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 456
    const-string v0, "enter mexpouse"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_saturation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 461
    const-string v0, "enter mSaturation"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_contrast_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_brightness_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 469
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_brightness_key"

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c0080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 472
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    invoke-virtual {v0, v10, v12, v9, v8}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initImagejustment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 474
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 478
    :cond_5
    const/16 v0, 0x1004

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 485
    .end local v8           #mBrightness:Ljava/lang/String;
    .end local v9           #mContrast:Ljava/lang/String;
    .end local v10           #mExpouse:Ljava/lang/String;
    .end local v11           #mImageview:Landroid/view/View;
    .end local v12           #mSaturation:Ljava/lang/String;
    :pswitch_1
    const-string v5, "pref_camera_whitebalance_key"

    .line 486
    const/16 v0, 0x1005

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 491
    :pswitch_2
    const-string v5, "pref_camera_timer_key"

    .line 492
    const/16 v0, 0x1006

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 498
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setSelected(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    const-string v6, "off"

    .line 501
    .local v6, hdrModevalue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    .line 506
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_hdr_save_mode"

    invoke-interface {v0, v1, v6}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/16 v0, 0x1007

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 509
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 503
    .end local v6           #hdrModevalue:Ljava/lang/String;
    :cond_6
    const-string v6, "on"

    .line 504
    .restart local v6       #hdrModevalue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mHDR:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setCheckBoxState(Z)V

    goto :goto_2

    .line 516
    .end local v6           #hdrModevalue:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 518
    .local v7, key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_7

    .line 519
    const-string v7, "pref_camera_gps_key"

    .line 523
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/16 v0, 0x100a

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 525
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 521
    :cond_7
    const-string v7, "pref_video_gps_key"

    goto :goto_3

    .line 533
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 534
    .restart local v13       #stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 535
    .restart local v7       #key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_8

    .line 536
    const-string v7, "pref_camera_shutter_sound_key"

    .line 540
    :goto_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/16 v0, 0x1016

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 542
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 538
    :cond_8
    const-string v7, "pref_video_shutter_sound_key"

    goto :goto_4

    .line 549
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onRestorePreferencesClicked()V

    .line 550
    const/16 v0, 0x100b

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 551
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 558
    :pswitch_7
    const-string v5, "pref_camera_iso_key"

    .line 559
    const/16 v0, 0x100c

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 564
    :pswitch_8
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-nez v0, :cond_9

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    .line 569
    :goto_5
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 570
    const-string v5, "pref_camera_picture_widescreen_key"

    .line 574
    :goto_6
    const/16 v0, 0x100d

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 567
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWideScreenState:Z

    goto :goto_5

    .line 572
    :cond_a
    const-string v5, "pref_camera_picturesize_key"

    goto :goto_6

    .line 579
    :pswitch_9
    const-string v5, "pref_camera_jpegquality_key"

    .line 580
    const/16 v0, 0x100e

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 585
    :pswitch_a
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 586
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_widescreen_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWide_Screen:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 588
    const-string v0, "pref_camera_picturesize_key"

    const-string v1, "pref_camera_picture_widescreen_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->screenchange(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_7
    const/16 v0, 0x100f

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 595
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 591
    :cond_b
    const-string v0, "pref_camera_picture_widescreen_key"

    const-string v1, "pref_camera_picturesize_key"

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->screenchange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 602
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_b
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setSelected(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 604
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 605
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_c

    .line 606
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_auto_focusmode_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_facedetection_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/16 v0, 0x1010

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 613
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 620
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 621
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_steady_video_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/16 v0, 0x1011

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 623
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 630
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 631
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_redeyedetection_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/16 v0, 0x1008

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 634
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 641
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_e
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 642
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_grid_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/16 v0, 0x1009

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 645
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 652
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_f
    const/16 v0, 0x1013

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 653
    const-string v5, "pref_camera_save_location_key"

    .line 655
    goto/16 :goto_0

    .line 658
    :pswitch_10
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v13

    .line 659
    .restart local v13       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v0

    if-nez v0, :cond_d

    .line 660
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_d

    .line 661
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_facedetection_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_auto_focusmode_key"

    invoke-interface {v0, v1, v13}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/16 v0, 0x1014

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 669
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 676
    .end local v13           #stateValue:Ljava/lang/String;
    :pswitch_11
    const/16 v0, 0x1015

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 677
    const-string v5, "pref_camera_scenemode_key"

    .line 679
    goto/16 :goto_0

    .line 681
    :pswitch_12
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_e

    .line 682
    const-string v5, "pref_videocamera_review_key"

    .line 686
    :goto_8
    const/16 v0, 0x1012

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 684
    :cond_e
    const-string v5, "pref_camera_review_key"

    goto :goto_8

    .line 690
    :pswitch_13
    const/16 v0, 0x1017

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 691
    const-string v5, "pref_video_quality_level_key"

    .line 693
    goto/16 :goto_0

    .line 695
    :pswitch_14
    const/16 v0, 0x1018

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 696
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_f

    .line 697
    const-string v5, "pref_video_antibanding_key"

    goto/16 :goto_0

    .line 699
    :cond_f
    const-string v5, "pref_camera_antibanding_key"

    .line 702
    goto/16 :goto_0

    .line 715
    :cond_10
    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 716
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setSceceDefaultValue(Ljava/lang/String;)V

    .line 719
    :cond_11
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 720
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeySettingView()Z

    .line 721
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 722
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    new-instance v1, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;-><init>(Lcom/android/hwcamera/hwui/SettingsView;Lcom/android/hwcamera/hwui/SettingsView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->registerListeners(Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;)V

    .line 723
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    .line 737
    :goto_9
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 725
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto :goto_9

    .line 729
    :cond_13
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto :goto_9

    .line 443
    :pswitch_data_0
    .packed-switch 0x1004
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_12
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_5
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 387
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 389
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setViewSelected(Landroid/view/View;Z)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 391
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    goto :goto_0

    .line 395
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 397
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->clearTouchXY()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->onActionUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 403
    :pswitch_2
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 404
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 405
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 407
    const/16 v1, 0x10e

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x5a

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-ne v1, v2, :cond_3

    .line 408
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 411
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 414
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 417
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 420
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 423
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 950
    return-void
.end method

.method public setCameraID(I)V
    .locals 0
    .parameter "cameraID"

    .prologue
    .line 1286
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 1287
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 958
    return-void
.end method

.method public setGPSstatus(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0
    .parameter "isImageCaptureIntent"

    .prologue
    .line 1275
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 1276
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 961
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    .line 962
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 965
    :cond_0
    return-void
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 954
    return-void
.end method

.method public setReviewEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1291
    return-void
.end method

.method public setVidoState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1271
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 1272
    return-void
.end method

.method public viewInit()Z
    .locals 7

    .prologue
    .line 150
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 151
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_0

    .line 154
    new-instance v4, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    .line 155
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->setScenemodeDefaultValue(Lcom/android/hwcamera/PreferenceGroup;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 159
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_scenemode_key"

    const/16 v6, 0x1015

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 163
    :cond_1
    const-string v4, "pref_camera_distortion_key"

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_iso_key"

    const/16 v6, 0x100c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 171
    :cond_2
    const-string v0, "pref_camera_antibanding_key"

    .line 172
    .local v0, antiKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_3

    .line 173
    const-string v0, "pref_video_antibanding_key"

    .line 175
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1018

    invoke-direct {p0, v4, v0, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 177
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_contrast_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_exposure_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_5

    .line 179
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c00c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1004

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 184
    :cond_5
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_6

    .line 185
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_timer_key"

    const/16 v6, 0x1006

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 189
    :cond_6
    const-string v2, "pref_camera_review_key"

    .line 190
    .local v2, key:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_7

    .line 191
    const-string v2, "pref_videocamera_review_key"

    .line 193
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1012

    invoke-direct {p0, v4, v2, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 196
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_video_quality_level_key"

    const/16 v6, 0x1017

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 200
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_jpegquality_key"

    const/16 v6, 0x100e

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 202
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_8

    .line 204
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->pictureSizeInit()V

    .line 206
    :cond_8
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picture_widescreen_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 208
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->wideScreenInit()V

    .line 210
    :cond_9
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_a

    .line 211
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_auto_focusmode_key"

    const/16 v6, 0x1014

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAuto_Focus:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 216
    :cond_a
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_facedetection_key"

    const/16 v6, 0x1010

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mFace_Detection:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 220
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_b

    .line 221
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_redeyedetection_key"

    const/16 v6, 0x1008

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 226
    :cond_b
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_c

    .line 227
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_steady_video_key"

    const/16 v6, 0x1011

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 231
    :cond_c
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_hdr_save_mode"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_d

    .line 233
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->hdrInit()V

    .line 237
    :cond_d
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_grid_key"

    const/16 v6, 0x1009

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 240
    const-string v1, "pref_camera_gps_key"

    .line 241
    .local v1, gpsKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_e

    .line 242
    const-string v1, "pref_video_gps_key"

    .line 244
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v5, 0x100a

    invoke-direct {p0, v4, v1, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 247
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_video_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 249
    :cond_f
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_11

    .line 250
    const-string v4, "pref_camera_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    .line 258
    :cond_10
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_save_location_key"

    const/16 v6, 0x1013

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 261
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    const/16 v5, 0x100b

    invoke-direct {p0, v4, v3, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 264
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_12

    .line 265
    const/4 v4, 0x0

    .line 275
    :goto_1
    return v4

    .line 252
    .end local v3           #title:Ljava/lang/String;
    :cond_11
    const-string v4, "pref_video_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .restart local v3       #title:Ljava/lang/String;
    :cond_12
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_13

    .line 271
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 273
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->dealConflictMenuforCamera()V

    .line 275
    :cond_13
    const/4 v4, 0x1

    goto :goto_1
.end method
