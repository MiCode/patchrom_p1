.class public Lcom/android/hwcamera/Camera;
.super Lcom/android/hwcamera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Lcom/android/hwcamera/FocusManager$Listener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;
.implements Lcom/android/hwcamera/HWExtCameraHandler$Listener;
.implements Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Camera$SuperPanelListener;,
        Lcom/android/hwcamera/Camera$MyOrientationEventListener;,
        Lcom/android/hwcamera/Camera$PanoramaBarListener;,
        Lcom/android/hwcamera/Camera$ImageCapture;,
        Lcom/android/hwcamera/Camera$ImageSaver;,
        Lcom/android/hwcamera/Camera$SaveRequest;,
        Lcom/android/hwcamera/Camera$ZoomListener;,
        Lcom/android/hwcamera/Camera$ErrorCallback;,
        Lcom/android/hwcamera/Camera$AutoFocusCallback;,
        Lcom/android/hwcamera/Camera$DecodeThumbnailThread;,
        Lcom/android/hwcamera/Camera$DecodeBurstRequest;,
        Lcom/android/hwcamera/Camera$JpegPictureCallback;,
        Lcom/android/hwcamera/Camera$RawPictureCallback;,
        Lcom/android/hwcamera/Camera$PostViewPictureCallback;,
        Lcom/android/hwcamera/Camera$ShutterCallback;,
        Lcom/android/hwcamera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_URI_STRING:Ljava/lang/String; = "content://com.scalado.prototype.strobe.StrobeViewerActivity/data"

.field private static final AUTO_FOCUS_CALLBACK:I = 0x1b

.field private static final BEGIN_SAVE_ALL_IMAGES:I = 0x17

.field private static final CLEAR_FACE_INDICATOR:I = 0x16

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CROP_MSG:I = 0x1

.field private static final DECODE_NEW_PICTURE_COMPLETED:I = 0xd

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DISPLAY_FACE:I = 0xb

.field private static final DISTORTION:I = 0x5

.field private static final EFFECT:I = 0x4

.field private static final ENABLE_SHUTTERBUTTON_MSG:I = 0xf

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FINE_PIC_SIZE_RATE:F = 0.47f

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FLOW:Ljava/lang/String; = "[Flow] "

.field private static final FOCUSING:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final HAS_HDR_FEATURE:Z = false

.field private static final HDR_SECOND_PIC:I = 0x2

.field private static final HIDE_FACE:I = 0xc

.field private static final IDLE:I = 0x1

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final MAKE_TOAST_HINT:I = 0x6

.field private static final NORMAL_PIC_SIZE_RATE:F = 0.38f

.field private static final NOTIFY_PREVIEW_STOPED:I = 0x21

.field private static final PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSTCAPTUREALERT:I = 0x6

.field public static final PREFS:Ljava/lang/String; = "CameraPrefs"

.field private static final PREVIEWFRAME_LAYOUT:I = 0x20

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final PROGRESS_HIDEN:I = 0x15

.field private static final PROGRESS_SHOW:I = 0x14

.field private static final RESET_FOCUS_UI:I = 0x7

.field private static final REVIEW_DISPLAY_MSG:I = 0x12

.field private static final REVIEW_HIDE_MSG:I = 0xe

.field private static final REVIEW_IN_PROGRESS:I = 0x3

.field private static final REVIEW_SWITCH_MSG:I = 0x10

.field public static final REWIND_RESULT_CODE:I = 0xf

.field public static final REWIND_SAVED:I = 0x5

.field private static final SAVE_ALL_IMAG_TO_FILE_COMPLETED:I = 0x18

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_TIMER_PROMPT:I = 0x24

.field private static final SHOW_POST_CAPTURE:I = 0x13

.field private static final SMILE_AUTO_CAPTURE_THRESHOLD:I = 0x32

.field private static final SMILE_CAP_INTERVAL:J = 0x7d0L

.field private static final SMILE_LEVEL1_THRESHOLD:I = 0x14

.field private static final SMILE_LEVEL2_THRESHOLD:I = 0x28

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final START_ACTION_ACTIVITY:I = 0x25

.field private static final START_FACE_DETECTION_UI:I = 0x1c

.field private static final START_REWIND_ACTIVITY:I = 0x1e

.field private static final STOP_FACE_DETECTION_UI:I = 0x1d

.field private static final SWITCH_CAMERA_FLAG:Z = true

.field private static final SWITCH_CAMERA_UI:I = 0x22

.field private static final SWITCH_VIDEO_FLAG:Z = false

.field private static final SYSTEM_PROPERTY_SUPPORT_LED:Ljava/lang/String; = "ro.camera.support.led"

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static final THUMB_SAMPLE_RATE:I = 0x10

.field private static final UPDATE_DELAY_TAKEPICTURE_TIME:I = 0x9

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_FOCUS:I = 0x8

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_REWIND_THUMBNAIL:I = 0x26

.field private static final UPDATE_THUMBNAIL:I = 0x8

.field private static final ZOOM_IN:I = 0x1

.field private static final ZOOM_OUT:I = 0x2

.field private static final ZOOM_START:I = 0x1

.field private static final ZOOM_STOPPED:I = 0x0

.field public static mMediaServerDied:Z = false

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private isCounterDowning:Z

.field private mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

.field private mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness_key:Ljava/lang/String;

.field private mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraState:I

.field private mCancelTimer:Z

.field private mCaptureStartTime:J

.field mCloseCameraLock:[Ljava/lang/Object;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContrast_key:Ljava/lang/String;

.field private mControlBar:Landroid/view/View;

.field private mControlBarAnim:Landroid/view/animation/Animation;

.field private mControlBarHeight:I

.field private mCropValue:Ljava/lang/String;

.field private mCurrentState:I

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDelayTimeRemaining:I

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFirstEnter:Z

.field private mFirstTimeInitialized:Z

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mFocusStartTime:J

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGalleryExitAnim:Landroid/view/animation/Animation;

.field private mGpsSignalState:Z

.field private mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrDone:Z

.field private mHdrSaveOrgPic:Z

.field private mISO_key:Ljava/lang/String;

.field private mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

.field private mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsAutoFocus:Z

.field private mIsBursting:Z

.field private mIsGalleryExViewAdd:Z

.field private mIsImageCaptureIntent:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsSmileCaptureState:Z

.field private mIsSupporetedWideScreen:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mLastSmileCapTime:J

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mLocationState:Z

.field private mMaxBurstPicNumber:I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mNumberOfCameras:I

.field public mOpenCameraFail:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

.field private mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

.field private mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersManager:Lcom/android/hwcamera/ParametersManager;

.field private mPausing:Z

.field private mPicNum:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPicturesRemaining:I

.field private final mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field private mPreviewOnPara:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordBurstOrientation:I

.field private mRecordLocation:Z

.field private mRestartPreviewNeed:Z

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mReviewOrientation:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mSaturation_key:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mShootingMode:I

.field private mShowProcess:Z

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private final mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterupTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewLock:[Ljava/lang/Object;

.field mStopPreviewLock:[Ljava/lang/Object;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mThumnailAnimation:Landroid/view/animation/Animation;

.field private mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

.field private mTimerValue:I

.field private mUpdateSet:I

.field private final mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

.field mZoomRatios:[F

.field private mZoomState:I

.field private mZoomValue:I

.field openCameraLock:[Ljava/lang/Object;

.field private prepareQuitCameraLock:[Ljava/lang/Object;

.field private final sReceiver:Landroid/content/BroadcastReceiver;

.field private screenChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x17a38e

    const/4 v1, 0x0

    const v5, 0x927c0

    const v4, 0x164174

    const v3, 0xf8492

    .line 301
    sput-boolean v1, Lcom/android/hwcamera/Camera;->mMediaServerDied:Z

    .line 308
    const-string v0, "ro.config.hw_camera_hdr"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/Camera;->HAS_HDR_FEATURE:Z

    .line 403
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 406
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "4000x3000"

    const v2, 0x230b05

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3264x2448"

    const v2, 0x1e78e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2592x1944"

    const v2, 0x18499a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2560x1920"

    const v2, 0x18499a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2048x1536"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1600x1200"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x768"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x960"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1024x768"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "800x600"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "720x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "800x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3264x1836"

    const v2, 0x19b555

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2592x1456"

    const v2, 0xff800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "2048x1152"

    const v2, 0xbeaaa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x61800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x360"

    const v2, 0x34000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const v1, 0x1e78e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 431
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 122
    iput v2, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 123
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    .line 124
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 183
    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 202
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    .line 208
    iput v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    .line 214
    iput v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 215
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 235
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 246
    iput v4, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 247
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 259
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 272
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 274
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 275
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 276
    new-instance v0, Lcom/android/hwcamera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ShutterCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    .line 277
    new-instance v0, Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$PostViewPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    .line 278
    new-instance v0, Lcom/android/hwcamera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$RawPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    .line 279
    new-instance v0, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    .line 280
    new-instance v0, Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ZoomListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    .line 282
    new-instance v0, Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ErrorCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    .line 302
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 303
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 307
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 311
    new-instance v0, Lcom/android/hwcamera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    .line 312
    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 313
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 327
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 329
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 330
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 333
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 334
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 335
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 336
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 341
    new-instance v0, Lcom/android/hwcamera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$1;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 346
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 347
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    .line 349
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 350
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 360
    iput v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 361
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 363
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    .line 365
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 377
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    .line 378
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    .line 380
    iput v2, p0, Lcom/android/hwcamera/Camera;->mRecordBurstOrientation:I

    .line 383
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 385
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 386
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 387
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 388
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 389
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 390
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 391
    iput v2, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 401
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 402
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 953
    new-instance v0, Lcom/android/hwcamera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$3;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1163
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    .line 1164
    new-instance v0, Lcom/android/hwcamera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$4;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1832
    new-instance v0, Lcom/android/hwcamera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$5;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1962
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    .line 1987
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    .line 3502
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 3863
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    .line 3931
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    .line 3990
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    .line 5006
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$10200(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/PanoramaBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->makeFirstZoomHintToast(I)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return v0
.end method

.method static synthetic access$11002(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    return p1
.end method

.method static synthetic access$12200(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->goToPanoromaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12300(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setAutoFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearFaceRectangles()V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->displayReview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchReview()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/hwcamera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanoramaViewer()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchCameraUI()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopCaptureIfNeed()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/Camera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/Camera;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$4802(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5102(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5200(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5602(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/Camera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->hdrProcessing([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/hwcamera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/android/hwcamera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/hwcamera/Camera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->decordPictureForReview([B)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$7700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraStoppedAndFinish()V

    return-void
.end method

.method static synthetic access$7802(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$7900(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return v0
.end method

.method static synthetic access$7902(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/hwcamera/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$9002(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$9100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mRecordBurstOrientation:I

    return p1
.end method

.method static synthetic access$9400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    return p1
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 4605
    const/4 v0, 0x2

    new-instance v1, Lcom/android/hwcamera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$7;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-static {p1, v0, v1}, Lcom/android/hwcamera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V

    .line 4611
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 756
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 757
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/hwcamera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$2;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 763
    return-void
.end method

.method private calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F
    .locals 6
    .parameter "nbr"
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 1220
    const/4 v1, 0x0

    .line 1221
    .local v1, horViewAngel:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    cmpg-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v3

    const/high16 v4, 0x4334

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 1223
    :cond_0
    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    .line 1224
    const/high16 v1, 0x4248

    .line 1230
    :cond_1
    :goto_0
    const v2, 0x3f0ccccd

    .line 1231
    .local v2, overlap:F
    mul-float v3, v2, v1

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float v0, v3, v1

    .line 1232
    .local v0, HFOV:F
    return v0

    .line 1227
    .end local v0           #HFOV:F
    .end local v2           #overlap:F
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    goto :goto_0
.end method

.method private canSetZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3624
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-nez v1, :cond_1

    .line 3637
    :cond_0
    :goto_0
    return v0

    .line 3627
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 3637
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 3482
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPanorama(Z)V
    .locals 2
    .parameter "bCancel"

    .prologue
    .line 2454
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 2455
    if-eqz p1, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2459
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 2460
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 2461
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 2462
    return-void
.end method

.method private checkCurrentStorage()V
    .locals 7

    .prologue
    .line 2659
    const-wide/16 v1, 0x0

    .line 2660
    .local v1, storageAvailableSpace:J
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 2661
    .local v0, isCurrentSaveToSDCard:Z
    if-eqz v0, :cond_1

    .line 2662
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v1

    .line 2667
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 2668
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 2670
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 2675
    :goto_1
    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2678
    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 2680
    :cond_0
    return-void

    .line 2664
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v1

    goto :goto_0

    .line 2672
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1
.end method

.method private checkRemaining(J)I
    .locals 7
    .parameter "storageAvailableSpace"

    .prologue
    const/4 v5, 0x0

    .line 2720
    const/4 v2, 0x0

    .line 2721
    .local v2, picutureSize:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2722
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_picture_widescreen_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2726
    :goto_0
    sget-object v3, Lcom/android/hwcamera/Camera;->PICQUALITY_BITRATE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2727
    .local v0, onePictureSize:I
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_jpegquality_key"

    const v5, 0x7f0c003b

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2729
    .local v1, picQuality:Ljava/lang/String;
    const-string v3, "fine"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2730
    int-to-float v3, v0

    const v4, 0x3ef0a3d7

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 2734
    :cond_0
    :goto_1
    const-wide/32 v3, 0x1400000

    sub-long v3, p1, v3

    int-to-long v5, v0

    div-long/2addr v3, v5

    long-to-int v3, v3

    return v3

    .line 2724
    .end local v0           #onePictureSize:I
    .end local v1           #picQuality:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2731
    .restart local v0       #onePictureSize:I
    .restart local v1       #picQuality:Ljava/lang/String;
    :cond_2
    const-string v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2732
    int-to-float v3, v0

    const v4, 0x3ec28f5c

    mul-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1
.end method

.method private checkStorage()V
    .locals 8

    .prologue
    .line 2689
    const/4 v0, 0x0

    .line 2690
    .local v0, isPriorSaveToSDCard:Z
    const-wide/16 v2, 0x0

    .line 2691
    .local v2, storageAvailableSpace:J
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_camera_save_location_key"

    const v6, 0x7f0c00d4

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2693
    .local v1, saveLocationValue:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2694
    const/4 v0, 0x0

    .line 2695
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v2

    .line 2701
    :goto_0
    const-wide/32 v4, 0x1400000

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 2702
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkStorage()(M) :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x100000

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 2704
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 2709
    :goto_1
    iget v4, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2712
    invoke-direct {p0, v0, v2, v3}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 2717
    :goto_2
    return-void

    .line 2697
    :cond_0
    const/4 v0, 0x1

    .line 2698
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    goto :goto_0

    .line 2706
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1

    .line 2715
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateStorageHintEx(Z)V

    goto :goto_2
.end method

.method private clearFaceRectangles()V
    .locals 1

    .prologue
    .line 3528
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 3529
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 3530
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 3532
    :cond_0
    return-void
.end method

.method private clearPanoramaMessage()V
    .locals 1

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearPanoramaMessage()V

    .line 5428
    return-void
.end method

.method private closeOpenedPanel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3550
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-nez v2, :cond_1

    .line 3563
    :cond_0
    :goto_0
    return v0

    .line 3553
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3554
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    move v0, v1

    .line 3555
    goto :goto_0

    .line 3556
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3557
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    move v0, v1

    .line 3558
    goto :goto_0

    .line 3559
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3560
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    move v0, v1

    .line 3561
    goto :goto_0
.end method

.method private closePanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2465
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2466
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->restoreUi()V

    .line 2467
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 2468
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 2469
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 2470
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2471
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2472
    return-void
.end method

.method private collapseCameraControls(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 913
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v2, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v0

    .line 916
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 923
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 924
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    goto :goto_0

    .line 930
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 931
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 935
    goto :goto_0

    .line 938
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_9

    .line 939
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 940
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 942
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 943
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 945
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 946
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 950
    goto :goto_0
.end method

.method private decordPictureForReview([B)V
    .locals 8
    .parameter "jpegData"

    .prologue
    .line 1390
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1391
    .local v3, s:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1392
    .local v2, ratio:I
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    move v0, v2

    .line 1393
    .local v0, inSampleSize:I
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1394
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1395
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 1396
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 1397
    return-void

    .line 1392
    .end local v0           #inSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private displayBlinkIcon(Z)V
    .locals 2
    .parameter "blinkState"

    .prologue
    const v0, 0x7f08008b

    .line 675
    if-eqz p1, :cond_0

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayReview()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2239
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 2240
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2241
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2242
    .local v0, mReviewImg:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2243
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2244
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2245
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v1, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v3}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    .line 2254
    .end local v0           #mReviewImg:Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 2249
    .restart local v0       #mReviewImg:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    goto :goto_0

    .line 2252
    .end local v0           #mReviewImg:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0
.end method

.method private doAttach()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 2759
    iget-boolean v10, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v10, :cond_0

    .line 2831
    :goto_0
    return-void

    .line 2763
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 2765
    .local v2, data:[B
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 2770
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 2771
    const/4 v6, 0x0

    .line 2773
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2774
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2775
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2777
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2778
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2782
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2779
    :catch_0
    move-exception v10

    .line 2782
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2785
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_1
    invoke-static {v2}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v5

    .line 2786
    .local v5, orientation:I
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2787
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2788
    new-instance v10, Landroid/content/Intent;

    const-string v11, "inline-data"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "data"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v12, v10}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2789
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    goto :goto_0

    .line 2793
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_2
    const/4 v9, 0x0

    .line 2794
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2796
    .local v8, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v10, "crop-temp"

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2797
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2798
    const-string v10, "crop-temp"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/hwcamera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 2799
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2800
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2801
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 2811
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2814
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2815
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2816
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    :cond_3
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    .line 2819
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2824
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.hwcamera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2827
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2829
    invoke-virtual {p0, v1, v13}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2802
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2803
    .local v3, ex:Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2804
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2811
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2806
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 2807
    .local v3, ex:Ljava/io/IOException;
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 2808
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2811
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2821
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_4
    const-string v10, "return-data"

    invoke-virtual {v4, v10, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 2834
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 2835
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 2836
    return-void
.end method

.method private doFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 3775
    if-eqz p1, :cond_0

    .line 3776
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->autoFocus()V

    .line 3780
    :goto_0
    return-void

    .line 3778
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->cancelAutoFocus(I)V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 3758
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mCameraState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->doSnap()V

    .line 3760
    return-void
.end method

.method private doTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5255
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 5256
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 5257
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5258
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 5259
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 5261
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 5262
    return-void
.end method

.method private enableCameraControl(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "filterColor"

    .prologue
    .line 1089
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    if-eqz v0, :cond_2

    .line 1098
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    .line 1100
    :cond_2
    return-void
.end method

.method private enableShutterButton(ZZ)V
    .locals 3
    .parameter "enabled"
    .parameter "filterColor"

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1107
    if-eqz p1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->clearColorFilter()V

    goto :goto_0

    .line 1110
    :cond_2
    if-eqz p2, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1112
    .local v0, disable_Color:I
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ShutterButton;->setColorFilter(I)V

    goto :goto_0
.end method

.method private enableSwitcherThumbnail(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const v3, 0x7f08001b

    .line 1118
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    if-nez v1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1}, Lcom/android/hwcamera/Switcher;->isEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/Switcher;->setEnabled(Z)V

    .line 1126
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1127
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1128
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1129
    .local v0, disable_Color:I
    if-eqz p1, :cond_2

    .line 1130
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1}, Lcom/android/hwcamera/Switcher;->clearColorFilter()V

    .line 1131
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 1133
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Switcher;->setColorFilter(I)V

    .line 1134
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 2265
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 2266
    .local v0, flashModeRotateImage:Lcom/android/hwcamera/RotateImageView;
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 2267
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2269
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-eqz v1, :cond_0

    .line 2270
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2271
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 2274
    :cond_0
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 2279
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    :goto_0
    return-void

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2284
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2392
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2393
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 2396
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 2397
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 2398
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2399
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 2400
    return-void
.end method

.method private galleryExEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2377
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2378
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2379
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    .line 2381
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2382
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2389
    :goto_0
    return-void

    .line 2384
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 2385
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 2386
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2387
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 5

    .prologue
    .line 2353
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 2354
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    if-nez v3, :cond_0

    .line 2355
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 2356
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2357
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2358
    .local v2, rootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/hwcamera/hwui/GalleryEx;

    const v4, 0x7f030007

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 2359
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2360
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2361
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    .line 2362
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 2367
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2368
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2369
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 2370
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v4, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 2371
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2373
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2374
    return-void

    .line 2364
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter "strKEY"

    .prologue
    .line 2335
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    .line 2336
    const-string v0, "pref_camera_distortion_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2337
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2341
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2345
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2348
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2350
    :cond_2
    return-void

    .line 2339
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    goto :goto_0
.end method

.method private getNextZoomValue(IZ)I
    .locals 5
    .parameter "oldValue"
    .parameter "zoomIn"

    .prologue
    .line 2015
    const/4 v0, 0x1

    .line 2016
    .local v0, flag:I
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 2017
    .local v2, zoomMax:I
    const/4 v3, 0x5

    .line 2018
    .local v3, zoomSteps:I
    move v1, p1

    .line 2019
    .local v1, tempValue:I
    if-eqz p2, :cond_0

    .line 2020
    const/4 v0, -0x1

    .line 2022
    :cond_0
    mul-int v4, v0, v3

    add-int/2addr v1, v4

    .line 2024
    if-gez v1, :cond_2

    .line 2025
    const/4 v1, 0x0

    .line 2029
    :cond_1
    :goto_0
    return v1

    .line 2026
    :cond_2
    if-le v1, v2, :cond_1

    .line 2027
    move v1, v2

    goto :goto_0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 4015
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL

    .line 4016
    .local v1, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 4017
    const/4 v7, 0x0

    .line 4060
    :cond_0
    return-object v7

    .line 4019
    :cond_1
    const/4 v7, 0x0

    .line 4020
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 4028
    .local v5, minDiff:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 4029
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 4031
    .local v11, targetHeight:I
    if-gtz v11, :cond_2

    .line 4033
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 4034
    .local v12, windowManager:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 4036
    .end local v12           #windowManager:Landroid/view/WindowManager;
    :cond_2
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 4040
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 4041
    .local v8, ratio:D
    sub-double v13, v8, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_3

    .line 4043
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_3

    .line 4044
    move-object v7, v10

    .line 4045
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_0

    .line 4050
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v7, :cond_0

    .line 4051
    const-string v13, "Camera"

    const-string v14, "No preview size match the aspect ratio"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    const-wide v5, 0x7fefffffffffffffL

    .line 4053
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 4054
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_5

    .line 4055
    move-object v7, v10

    .line 4056
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_1
.end method

.method private getRequestRemaining()I
    .locals 2

    .prologue
    .line 2992
    const/4 v0, 0x1

    .line 2993
    .local v0, requestRemaining:I
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    packed-switch v1, :pswitch_data_0

    .line 3020
    :pswitch_0
    const/4 v0, 0x1

    .line 3022
    :goto_0
    return v0

    .line 2996
    :pswitch_1
    const/4 v0, 0x1

    .line 2997
    goto :goto_0

    .line 3000
    :pswitch_2
    const/4 v0, 0x2

    .line 3001
    goto :goto_0

    .line 3004
    :pswitch_3
    const/4 v0, 0x3

    .line 3005
    goto :goto_0

    .line 3008
    :pswitch_4
    const/4 v0, 0x1

    .line 3009
    goto :goto_0

    .line 3012
    :pswitch_5
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 3013
    goto :goto_0

    .line 3016
    :pswitch_6
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 3017
    goto :goto_0

    .line 2993
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 837
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 838
    const/4 v2, 0x0

    .line 845
    :cond_0
    return-object v2

    .line 840
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 841
    .local v3, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [F

    .line 842
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 843
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v2, v0

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private goToPanoromaMode()Z
    .locals 3

    .prologue
    .line 4854
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4855
    :cond_0
    const/4 v0, 0x0

    .line 4862
    :goto_0
    return v0

    .line 4857
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    .line 4858
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4859
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 4862
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hdrProcessing([BLandroid/location/Location;)V
    .locals 6
    .parameter "jpegData"
    .parameter "location"

    .prologue
    const/4 v5, 0x1

    .line 1400
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    const/4 v1, 0x0

    .line 1404
    .local v1, hdrDone:Z
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    if-eqz v2, :cond_5

    .line 1406
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    if-eq v2, v3, :cond_2

    if-nez p1, :cond_4

    .line 1407
    :cond_2
    const/4 v1, 0x1

    .line 1415
    :goto_1
    if-eqz v1, :cond_0

    .line 1416
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 1418
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1420
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_facedetection_key"

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, faceDetectMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v2, :cond_3

    .line 1423
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 1425
    :cond_3
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1426
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto :goto_0

    .line 1409
    .end local v0           #faceDetectMode:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1413
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private hidePostCaptureAlert()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4559
    iput v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 4560
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraUIButCameraRoot(I)V

    .line 4561
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 4562
    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 4563
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 4564
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4567
    :cond_0
    return-void
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2257
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 2258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 2259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2261
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 2263
    :cond_0
    return-void
.end method

.method private hideReviewUI()V
    .locals 2

    .prologue
    .line 2227
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2228
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 2229
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 2230
    return-void
.end method

.method private initCameraSwitcher()V
    .locals 2

    .prologue
    .line 2309
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 2310
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2311
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 2312
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/Camera$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$6;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2320
    return-void
.end method

.method private initGridLines()V
    .locals 5

    .prologue
    .line 2494
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 2495
    const-string v2, "Camera"

    const-string v3, "initGridLines, but mPreferences is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :goto_0
    return-void

    .line 2498
    :cond_0
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/GridLines;

    .line 2499
    .local v1, mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_grid_key"

    const v4, 0x7f0c00e8

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, gridLinesState:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GridLines;->setAnimationState(Z)V

    .line 2502
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2503
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0

    .line 2505
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0
.end method

.method private initPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2414
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    if-nez v0, :cond_0

    .line 2415
    new-instance v0, Lcom/android/hwcamera/Camera$PanoramaBarListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/Camera$PanoramaBarListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 2417
    :cond_0
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/PanoramaBar;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 2418
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->registerListeners(Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;)V

    .line 2419
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 2420
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2421
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2422
    return-void
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    .line 774
    const-string v0, "Camera"

    const-string v1, "[Flow] initThumbnailButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_image_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 776
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 777
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5498
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5499
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5501
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5502
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 5503
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 5504
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 5505
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    .line 5518
    :goto_0
    return-void

    .line 5509
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 5512
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 5513
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 5514
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    .line 5516
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5509
    goto :goto_1

    :cond_2
    move v0, v2

    .line 5512
    goto :goto_2

    :cond_3
    move v2, v1

    .line 5516
    goto :goto_3
.end method

.method private initializeFirstTime()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 695
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] initializeFirstTime  mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 701
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    .line 702
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 704
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 705
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    .line 707
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 708
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 709
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initThumbnailButton()V

    .line 714
    :cond_1
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 715
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 716
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 717
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 720
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 721
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v8, v0, v1

    .line 722
    .local v8, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v10, :cond_2

    move v5, v10

    .line 723
    .local v5, mirror:Z
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Lcom/android/hwcamera/hwui/RotateLayout;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v6, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    .line 725
    new-instance v0, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 726
    new-instance v0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 728
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeScreenBrightness()V

    .line 729
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 732
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 734
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 735
    .local v7, cameraRootView:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/hwcamera/hwui/Review;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v7, v1}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 736
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/Review;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 737
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 739
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initCameraSwitcher()V

    .line 740
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 741
    iput-boolean v10, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    .line 743
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->addIdleHandler()V

    .line 744
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v9

    .line 752
    .local v9, recordLocation:Z
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v9}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    goto/16 :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 2

    .prologue
    .line 2213
    const-string v0, "Camera"

    const-string v1, "initializeHeadUpDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->loadCameraPreferences()V

    .line 2215
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomRatios:[F

    .line 2216
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeInit()V

    .line 2217
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->superPanelInit()V

    .line 2218
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initGridLines()V

    .line 2220
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 2223
    :cond_0
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 2224
    return-void
.end method

.method private initializeScreenBrightness()V
    .locals 6

    .prologue
    .line 3192
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3194
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3197
    .local v0, mode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3198
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 3199
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f333333

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3200
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3202
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 796
    const-string v1, "Camera"

    const-string v2, "initializeSecondTime"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 798
    new-instance v1, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 799
    new-instance v1, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 800
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 801
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 804
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 805
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 807
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 808
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    .line 810
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 815
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 819
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 825
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 826
    return-void
.end method

.method private initializeSoundPlayer()V
    .locals 4

    .prologue
    .line 3171
    const/4 v0, 0x1

    .line 3172
    .local v0, enforceAudible:Z
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3173
    const/4 v0, 0x0

    .line 3176
    :cond_0
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 3178
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/hwcamera/FocusManager;->initializeSoundPlayer(Landroid/content/Context;Z)V

    .line 3179
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 3155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3156
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3157
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3158
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3159
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3160
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3161
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3162
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 3164
    return-void
.end method

.method private isBasedBurstShootMode(I)Z
    .locals 1
    .parameter "shootMode"

    .prologue
    .line 1862
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 1865
    :cond_0
    const/4 v0, 0x1

    .line 1867
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4522
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFrontCamera()Z
    .locals 1

    .prologue
    .line 5419
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_0

    .line 5420
    const/4 v0, 0x0

    .line 5422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 4526
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4527
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isOnWidescreen()Z
    .locals 5

    .prologue
    .line 4360
    const-string v1, "off"

    .line 4361
    .local v1, widescreenstate:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    if-eqz v2, :cond_0

    .line 4362
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_widescreen_key"

    const v4, 0x7f0c0039

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4367
    :goto_0
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4368
    .local v0, bwidescreenisState:Z
    return v0

    .line 4365
    .end local v0           #bwidescreenisState:Z
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 2

    .prologue
    .line 3487
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3488
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 3491
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3492
    const-string v0, "Camera"

    const-string v1, "space is low include sd card and phone "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/4 v0, 0x0

    .line 3495
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4064
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 689
    :cond_0
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 4913
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4914
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4915
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4917
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4918
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4919
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4920
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 2202
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 2204
    .local v0, settings:Lcom/android/hwcamera/CameraSettings;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 2205
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2207
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->filterShootModePanoramaOptions(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2210
    :cond_0
    return-void
.end method

.method private makeFirstZoomHintToast(I)V
    .locals 3
    .parameter "degree"

    .prologue
    const/4 v2, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAppImpl;->isTimeToZoomHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraAppImpl;->resetMakeZoomHint(Z)V

    .line 768
    const v1, 0x7f0c009d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, zoomHint:Ljava/lang/String;
    invoke-direct {p0, v0, v2, p1}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 771
    .end local v0           #zoomHint:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "text"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 3144
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 3149
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(I)V

    .line 3150
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 3151
    return-void

    .line 3146
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 3147
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private needShutterButtonFocus(Z)Z
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2852
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 2886
    :cond_0
    :goto_0
    return v1

    .line 2857
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_auto_focusmode_key"

    const v5, 0x7f0c00ee

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2859
    .local v0, autoFocusValus:Ljava/lang/String;
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2864
    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 2873
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2878
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canTakePicture()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2883
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v3, :cond_0

    move v1, v2

    .line 2886
    goto :goto_0
.end method

.method private onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 4879
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v3, :cond_0

    .line 4898
    :goto_0
    return-void

    .line 4885
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_gps_key"

    invoke-static {v3, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    .line 4888
    .local v2, recordLocation:Z
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 4889
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 4890
    .local v0, cameraId:I
    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v3, v0, :cond_1

    .line 4891
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    goto :goto_0

    .line 4893
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4894
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4895
    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4896
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 3186
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 3187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 3189
    :cond_0
    return-void
.end method

.method private requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    .locals 2
    .parameter "thumb"

    .prologue
    .line 632
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 634
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    return-void
.end method

.method private resetMenuPreference()V
    .locals 5

    .prologue
    .line 2179
    const/4 v1, 0x0

    .line 2180
    .local v1, resetState:Z
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_tag"

    const-string v4, "cameratag"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cameratag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2182
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_reset_tag"

    const-string v4, "reset"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2184
    if-eqz v1, :cond_0

    .line 2185
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "press_back_menu"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2193
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2194
    new-instance v0, Lcom/android/hwcamera/ResetPreference;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ResetPreference;-><init>(Landroid/content/Context;)V

    .line 2195
    .local v0, resetPreference:Lcom/android/hwcamera/ResetPreference;
    invoke-virtual {v0}, Lcom/android/hwcamera/ResetPreference;->resetCameraPreference()V

    .line 2196
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "press_back_menu"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    .end local v0           #resetPreference:Lcom/android/hwcamera/ResetPreference;
    :cond_1
    return-void

    .line 2189
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_tag"

    const-string v4, "cameratag"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 4909
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4910
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4911
    return-void
.end method

.method private restoreParameterToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4962
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 4963
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 4964
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 4965
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initGridLines()V

    .line 4966
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 4967
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    .line 4968
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4969
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4970
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4971
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4972
    return-void
.end method

.method private restorePreferences()V
    .locals 5

    .prologue
    .line 4923
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 4951
    :goto_0
    return-void

    .line 4927
    :cond_0
    new-instance v1, Lcom/android/hwcamera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$8;-><init>(Lcom/android/hwcamera/Camera;)V

    .line 4942
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_1

    .line 4943
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 4945
    :cond_1
    new-instance v2, Lcom/android/hwcamera/hwui/RotateDailog;

    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 4947
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4948
    .local v0, rootView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 4949
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 4950
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method private saveLocationInit()V
    .locals 4

    .prologue
    .line 4570
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 4571
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_save_location_key"

    const v3, 0x7f0c00d4

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4573
    .local v0, saveLocationValue:Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4574
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 4578
    :goto_0
    return-void

    .line 4576
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_0
.end method

.method private setAutoFocus(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 5163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5171
    :goto_0
    return-void

    .line 5166
    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5167
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0

    .line 5169
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    goto :goto_0
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 4462
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 4463
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    .line 4466
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 4479
    :cond_0
    :goto_0
    return-void

    .line 4468
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4469
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 4470
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 4472
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4474
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4475
    iput v3, v0, Landroid/os/Message;->what:I

    .line 4476
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setCameraSwitcherIcon()V
    .locals 6

    .prologue
    const v5, 0x7f0c0014

    .line 2323
    const v0, 0x7f02007e

    .line 2324
    .local v0, switchCameraImageId:I
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2326
    .local v1, switchCameraValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2327
    const v0, 0x7f02007e

    .line 2331
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2332
    return-void

    .line 2329
    :cond_0
    const v0, 0x7f02007f

    goto :goto_0
.end method

.method private setCameraUIButCameraRoot(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 3710
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3712
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3713
    return-void
.end method

.method private setCameraUIVisibility(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const/4 v1, 0x0

    .line 3716
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 3717
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 3718
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 3719
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVisibility(I)V

    .line 3721
    :cond_0
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3722
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3723
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3724
    return-void
.end method

.method private setControlBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5188
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5189
    .local v0, controlBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5190
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5192
    :cond_0
    return-void
.end method

.method private setControlbarAndPanel(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const v1, 0x7f08001d

    .line 3727
    if-nez p1, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 3729
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 3734
    :goto_0
    return-void

    .line 3731
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 3732
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setFlashModeEnable()V
    .locals 5

    .prologue
    const v3, 0x7f0c00d6

    const/4 v4, 0x1

    .line 2289
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v1, :cond_1

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2293
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v1, v4, :cond_0

    .line 2296
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2297
    .local v0, shootmodeValue:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    .line 2298
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2301
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/hwui/FlashImageView;->getFlashEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2302
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0

    .line 2304
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5174
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5175
    .local v0, flashSwitchIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5176
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5178
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 2595
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2596
    const v1, 0x7f080017

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2597
    const v1, 0x7f08001c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2598
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2601
    :cond_0
    rem-int/lit8 v1, p1, 0x5a

    if-nez v1, :cond_6

    .line 2602
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2603
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2604
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2605
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2606
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2607
    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 2608
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 2610
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    .line 2611
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 2614
    :cond_1
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2615
    .local v0, rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-eqz v0, :cond_2

    .line 2616
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setDegree(I)V

    .line 2618
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v1, :cond_3

    .line 2619
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/Review;->setOrientationEx(I)V

    .line 2621
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v1, :cond_4

    .line 2622
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2624
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v1, :cond_5

    .line 2625
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 2627
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2628
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2631
    .end local v0           #rotateShutter:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    :cond_6
    return-void
.end method

.method private setPictureSizeByKey(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 4372
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 4373
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mPreferences == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :goto_0
    return-void

    .line 4377
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4378
    .local v0, pictureSize:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 4379
    const-string v2, "pref_camera_picture_widescreen_key"

    if-ne p1, v2, :cond_1

    .line 4380
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {p0, v2, v3}, Lcom/android/hwcamera/CameraSettings;->initialCameraWideScreenPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 4382
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {p0, v2, v3}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 4385
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_3

    .line 4386
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mParameters == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4389
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 4390
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private setPreviewFrameAspectRatio()V
    .locals 9

    .prologue
    .line 4395
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v5, :cond_1

    .line 4396
    const-string v5, "Camera"

    const-string v6, "setPreviewFrameAspectRatio: mParameters == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    :cond_0
    :goto_0
    return-void

    .line 4401
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 4402
    .local v3, size:Landroid/hardware/Camera$Size;
    if-nez v3, :cond_2

    .line 4403
    const-string v5, "Camera"

    const-string v6, "setPreviewFrameAspectRatio: size == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4406
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4407
    .local v0, msg:Landroid/os/Message;
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4408
    const/16 v5, 0x20

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4409
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4413
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 4414
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v5, v5

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/Camera;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 4416
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    .line 4417
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4418
    .local v2, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4419
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    .line 4422
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 4423
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in setPreviewFrameAspectRatio,mRestartPreviewNeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPromptIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 5181
    const v1, 0x7f080088

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5182
    .local v0, PromptIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5183
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5185
    :cond_0
    return-void
.end method

.method private setSmileIcon(I)V
    .locals 2
    .parameter "drawableId"

    .prologue
    .line 5395
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 5396
    .local v0, smileImageView:Lcom/android/hwcamera/RotateImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 5397
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 5398
    return-void
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 5195
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 5196
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 5198
    :cond_0
    return-void
.end method

.method private setTimerpromptIcon()V
    .locals 2

    .prologue
    .line 2485
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2486
    .local v0, promptTimer:Landroid/view/View;
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v1, :cond_0

    .line 2487
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2491
    :goto_0
    return-void

    .line 2489
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 4531
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4532
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4533
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 4534
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    .line 4536
    :cond_0
    return-void
.end method

.method private showBarAndShutterButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3744
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 3745
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 3746
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3747
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3748
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3749
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3888
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    return-void
.end method

.method private showCameraStoppedAndFinish()V
    .locals 3

    .prologue
    .line 3893
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3894
    .local v0, ress:Landroid/content/res/Resources;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3896
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 3

    .prologue
    .line 4976
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v2, "pref_camera_gps_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 4977
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 4978
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4979
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 4980
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 4981
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 4984
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 4985
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4986
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/Camera$9;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/Camera$9;-><init>(Lcom/android/hwcamera/Camera;)V

    const-string v3, "pref_camera_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5002
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 5003
    return-void
.end method

.method private showJointUi()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2444
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2445
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2446
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 2447
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2451
    return-void
.end method

.method private showNormalUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2479
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 2480
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 2481
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2482
    return-void
.end method

.method private showOnlyShutterButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3736
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 3737
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3738
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3739
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3740
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3741
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4539
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_1

    .line 4540
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-eqz v3, :cond_0

    .line 4541
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 4543
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4544
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4545
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    const v3, 0x7f030004

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4547
    .local v2, invokeBar_land:Landroid/view/View;
    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4548
    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4549
    const v3, 0x7f080023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4550
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4551
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setCameraUIButCameraRoot(I)V

    .line 4552
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 4553
    iget v3, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->setOrientationInvokeAfterCaptureEx(I)V

    .line 4555
    .end local v0           #cameraRootView:Landroid/view/ViewGroup;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #invokeBar_land:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showThumbAndSwitcher()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3752
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 3753
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3754
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3755
    return-void
.end method

.method private startBurst(I)V
    .locals 5
    .parameter "maxPicNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1139
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBurst() maxPicNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 1141
    iput p1, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 1142
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 1143
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 1144
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 1145
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 1146
    return-void
.end method

.method private startPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2403
    const-string v0, "Camera"

    const-string v1, "startPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2405
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2406
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 2407
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 2408
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    if-eqz v0, :cond_0

    .line 2409
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 2411
    :cond_0
    return-void
.end method

.method private startPanoramaViewer()V
    .locals 14

    .prologue
    const/16 v13, 0x15

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 640
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t startPanoramaViewer as mPausing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThumbnail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 642
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 643
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 644
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 672
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 648
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 649
    .local v7, dispName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    .local v6, dispCur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 652
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 655
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "noreset"

    invoke-static {v0, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/Camera;->calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F

    move-result v8

    .line 660
    .local v8, fov:F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOV="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 661
    .local v11, params:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.scalado.csps.PanoramaWall/data?imgPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v11, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 664
    .local v10, panouri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 665
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "uri"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 666
    const-string v0, "Camera"

    const-string v2, "[Flow] start PanoramaViewer acitivy"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p0, v9}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 670
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 671
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    goto/16 :goto_0

    .line 661
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #panouri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startPreview()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3933
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3988
    :cond_0
    :goto_0
    return-void

    .line 3936
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V

    .line 3937
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3942
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_2

    .line 3943
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 3944
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in startPreview to stop preview, mRestartPreviewNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 3948
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3949
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->setDisplayOrientation()V

    .line 3950
    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 3951
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 3953
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/FocusManager;->setAeAwbLock(Z)V

    .line 3954
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 3961
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3963
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->cancelAutoFocus(I)V

    .line 3965
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3968
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3969
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V

    .line 3970
    const-string v1, "Camera"

    const-string v3, "[Flow] Preview started!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 3972
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3973
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3978
    iput v4, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 3982
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3983
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    .line 3985
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 3973
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 3974
    :catch_0
    move-exception v0

    .line 3975
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 3976
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopBurst()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1152
    const-string v1, "Camera"

    const-string v2, "stopBurst()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 1154
    iput v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 1155
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1156
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 1157
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1158
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1159
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1160
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1161
    return-void
.end method

.method private stopCaptureIfNeed()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/16 v4, 0xe

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1000
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v2, :cond_3

    .line 1001
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    .line 1020
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v3, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1024
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1026
    :cond_1
    return-void

    .line 1003
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 1006
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_4

    .line 1007
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    goto :goto_0

    .line 1011
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1012
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1015
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1017
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1018
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0
.end method

.method private stopPanorama(Z)V
    .locals 2
    .parameter "bShot"

    .prologue
    .line 2435
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2436
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2437
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2438
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2439
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 2440
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showJointUi()V

    .line 2441
    return-void

    .line 2436
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopSmileCapture()V
    .locals 2

    .prologue
    .line 3763
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_0

    .line 3764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 3765
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3766
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showThumbAndSwitcher()V

    .line 3767
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 3768
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3769
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3771
    :cond_0
    return-void
.end method

.method private superPanelInit()V
    .locals 3

    .prologue
    .line 2511
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 2512
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2513
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2514
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2515
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraCaptureIntent(Z)V

    .line 2516
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 2517
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2518
    .local v0, popSettings:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 2519
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 2520
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initImageSubPanel()V

    .line 2521
    return-void
.end method

.method private switchCameraId(I)V
    .locals 5
    .parameter "cameraId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4630
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] switchCameraId() cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4653
    :cond_0
    :goto_0
    return-void

    .line 4633
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 4634
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 4637
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4639
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-ne v0, v4, :cond_2

    .line 4640
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4641
    invoke-static {v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4645
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 4646
    iput v3, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 4647
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 4649
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 4650
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 4652
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private switchCameraUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4704
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 4707
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 4710
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 4712
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 4713
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 4716
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 4717
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4718
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 4720
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v1, :cond_2

    .line 4721
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 4725
    :goto_0
    return-void

    .line 4723
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchPreviewSize()V
    .locals 11

    .prologue
    .line 5431
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-nez v8, :cond_0

    .line 5459
    :goto_0
    return-void

    .line 5437
    :cond_0
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 5438
    .local v5, size:Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_1

    .line 5439
    iget v2, v5, Landroid/hardware/Camera$Size;->height:I

    .line 5440
    .local v2, previewHeight:I
    iget v3, v5, Landroid/hardware/Camera$Size;->width:I

    .line 5457
    .local v3, previewWidth:I
    :goto_1
    const-string v8, "Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchPreviewSize, size = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v8, v3, v2}, Lcom/android/hwcamera/hwui/FaceView;->setScale(II)V

    goto :goto_0

    .line 5442
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5443
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5444
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5445
    .local v1, height:I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5447
    .local v7, width:I
    iget-object v8, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v8}, Lcom/android/hwcamera/ParametersManager;->getWideScreenValue()Ljava/lang/String;

    move-result-object v6

    .line 5448
    .local v6, wideScreenState:Ljava/lang/String;
    const-string v8, "on"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5449
    move v3, v7

    .line 5450
    .restart local v3       #previewWidth:I
    move v2, v1

    .restart local v2       #previewHeight:I
    goto :goto_1

    .line 5452
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    :cond_2
    mul-int/lit8 v8, v1, 0x4

    div-int/lit8 v3, v8, 0x3

    .line 5453
    .restart local v3       #previewWidth:I
    move v2, v1

    .restart local v2       #previewHeight:I
    goto :goto_1
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2234
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2235
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    .line 2236
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 4614
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4615
    const/4 v0, 0x0

    .line 4626
    :goto_0
    return v0

    .line 4616
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    .line 4617
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->waitDone()V

    .line 4618
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_2

    .line 4619
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->waitDone()V

    .line 4620
    :cond_2
    invoke-static {p1, p0}, Lcom/android/hwcamera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 4621
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4623
    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 4624
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 4626
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchToVideoMode()Z
    .locals 2

    .prologue
    .line 4841
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4842
    :cond_0
    const/4 v0, 0x0

    .line 4850
    :goto_0
    return v0

    .line 4844
    :cond_1
    const-string v0, "Camera"

    const-string v1, "[Flow] SwitchToVideoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4846
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 4847
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4848
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 4849
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4850
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraParametersFocus()V
    .locals 5

    .prologue
    .line 4098
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    if-eqz v2, :cond_0

    .line 4099
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 4101
    :cond_0
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    if-eqz v2, :cond_1

    .line 4102
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 4105
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "touch-af-aec"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4106
    .local v1, touch:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "touch-off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4107
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "touch-af-aec"

    const-string v4, "touch-on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4109
    :cond_2
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_3

    .line 4111
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 4113
    :cond_3
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v2, :cond_4

    .line 4115
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 4125
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4126
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4130
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCameraParametersFocus focus Mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4132
    return-void

    .line 4118
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 4119
    .local v0, Coordinate:[F
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/hwcamera/FocusManager;->transformCoordinate([FLandroid/view/SurfaceView;Landroid/hardware/Camera$Size;)V

    .line 4121
    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->setTouchPosition(II)V

    goto :goto_0

    .line 4128
    .end local v0           #Coordinate:[F
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4068
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 4086
    :cond_0
    :goto_0
    return-void

    .line 4073
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 4074
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 4078
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4079
    .local v1, value:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_auto_framerate"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4080
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 4081
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4084
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0
.end method

.method private updateCameraParametersPreference()V
    .locals 34

    .prologue
    .line 4136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraSettings;->isSupportWideScreen(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/hwcamera/ParametersManager;->setScenceDefaultValue(Landroid/hardware/Camera$Parameters;)V

    .line 4141
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 4143
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->setConflitParameters()V

    .line 4144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getShootingmodeIndex()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getReviewValue()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getTimerValue()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 4148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x24

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v11

    .line 4151
    .local v11, faceDetectionValue:Ljava/lang/String;
    const-string v31, "off"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 4152
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 4162
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    .line 4163
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v31

    if-eqz v31, :cond_16

    .line 4164
    const-string v31, "pref_camera_picture_widescreen_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera;->setPictureSizeByKey(Ljava/lang/String;)V

    .line 4176
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->setPreviewFrameAspectRatio()V

    .line 4180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4185
    :cond_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 4187
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    .line 4188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4189
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference is null!, get new mParameters="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 4192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4200
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "updateCameraParametersPreference reget Parametersas,as set scene mode= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_jpegquality_key"

    const v33, 0x7f0c003b

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4215
    .local v15, jpegQuality:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 4216
    .local v18, pic_size:Landroid/hardware/Camera$Size;
    const-string v31, "100"

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1a

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v31, v0

    const/16 v32, 0xc80

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1a

    .line 4224
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getIsoValue()Ljava/lang/String;

    move-result-object v14

    .line 4225
    .local v14, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_5

    .line 4226
    const-string v31, "KEY_HUAWEI_ISO"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 4228
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getContrastValue()Ljava/lang/String;

    move-result-object v7

    .line 4234
    .local v7, contrastStr:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v32

    add-int v8, v31, v32

    .line 4235
    .local v8, contrastValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_7

    .line 4236
    const-string v31, "KEY_HUAWEI_CONTRAST"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 4238
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_8

    .line 4239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4243
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_antibanding_key"

    const v33, 0x7f0c0124

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4245
    .local v3, antiBanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4249
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getBrightnessValue()Ljava/lang/String;

    move-result-object v4

    .line 4250
    .local v4, brightnessStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v32

    add-int v5, v31, v32

    .line 4252
    .local v5, brightnessValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    .line 4253
    const-string v31, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 4255
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_b

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getSaturationValue()Ljava/lang/String;

    move-result-object v23

    .line 4260
    .local v23, saturationStr:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v32

    mul-int v31, v31, v32

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v32

    add-int v24, v31, v32

    .line 4262
    .local v24, saturationValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_c

    .line 4263
    const-string v31, "KEY_HUAWEI_SATURATION"

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 4265
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    const-string v31, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_d

    .line 4266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4272
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v6

    .line 4273
    .local v6, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4277
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v9

    .line 4278
    .local v9, distorvalue:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V

    .line 4281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mRecordLocation:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 4283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 4286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 4292
    :cond_f
    const v31, 0x7f0c003c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4293
    .local v19, pictureFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "picture-format"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getFlashValue()Ljava/lang/String;

    move-result-object v12

    .line 4297
    .local v12, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v28

    .line 4298
    .local v28, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    invoke-static {v12, v0}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4308
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getWhiteBalanceValue()Ljava/lang/String;

    move-result-object v30

    .line 4309
    .local v30, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 4318
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getRedEyeReductionValue()Ljava/lang/String;

    move-result-object v22

    .line 4319
    .local v22, redEyeReductionValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->getRedEyeReductionSupported()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 4320
    const-string v31, "on"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->setRedEyeReduction(Z)V

    .line 4322
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 4326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v16

    .line 4327
    .local v16, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v17

    .line 4328
    .local v17, min:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v26

    .line 4329
    .local v26, step:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getExposureValue()Ljava/lang/String;

    move-result-object v10

    .line 4330
    .local v10, exposure:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 4331
    .local v29, value:I
    move/from16 v0, v29

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move/from16 v0, v29

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d

    .line 4332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 4338
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_hdr_save_mode"

    const v33, 0x7f0c00a2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4341
    .local v13, hdrSaveMode:Ljava/lang/String;
    const-string v31, "on"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 4342
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/hwcamera/Util;->setHdrSaveMode(Z)V

    .line 4344
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v31

    if-eqz v31, :cond_13

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const-string v32, "recording-hint"

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4346
    .local v21, recordhintValue:Ljava/lang/String;
    const-string v31, "false"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_13

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 4351
    .end local v21           #recordhintValue:Ljava/lang/String;
    :cond_13
    const-string v31, "ro.camera.shuttersound"

    const-string v32, "0"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "1"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v31, v0

    const-string v32, "pref_camera_shutter_sound_key"

    const-string v33, "on"

    invoke-virtual/range {v31 .. v33}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4353
    .local v25, shutterSound:Ljava/lang/String;
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "silent Option:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v31

    const-string v32, "off"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    invoke-static/range {v31 .. v32}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 4357
    .end local v25           #shutterSound:Ljava/lang/String;
    :cond_14
    return-void

    .line 4154
    .end local v3           #antiBanding:Ljava/lang/String;
    .end local v4           #brightnessStr:Ljava/lang/String;
    .end local v5           #brightnessValue:I
    .end local v6           #colorEffect:Ljava/lang/String;
    .end local v7           #contrastStr:Ljava/lang/String;
    .end local v8           #contrastValue:I
    .end local v9           #distorvalue:Ljava/lang/String;
    .end local v10           #exposure:Ljava/lang/String;
    .end local v12           #flashMode:Ljava/lang/String;
    .end local v13           #hdrSaveMode:Ljava/lang/String;
    .end local v14           #iso:Ljava/lang/String;
    .end local v15           #jpegQuality:Ljava/lang/String;
    .end local v16           #max:I
    .end local v17           #min:I
    .end local v18           #pic_size:Landroid/hardware/Camera$Size;
    .end local v19           #pictureFormat:Ljava/lang/String;
    .end local v22           #redEyeReductionValue:Ljava/lang/String;
    .end local v23           #saturationStr:Ljava/lang/String;
    .end local v24           #saturationValue:I
    .end local v26           #step:F
    .end local v28           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v29           #value:I
    .end local v30           #whiteBalance:Ljava/lang/String;
    :cond_15
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto/16 :goto_0

    .line 4166
    :cond_16
    const-string v31, "pref_camera_picturesize_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/hwcamera/Camera;->setPictureSizeByKey(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4169
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v31

    if-nez v31, :cond_18

    .line 4170
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 4172
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getPictureSizevalueValue()Ljava/lang/String;

    move-result-object v20

    .line 4173
    .local v20, pictureSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v27

    .line 4174
    .local v27, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1

    .line 4203
    .end local v20           #pictureSize:Ljava/lang/String;
    .end local v27           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_4

    .line 4206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 4218
    .restart local v15       #jpegQuality:Ljava/lang/String;
    .restart local v18       #pic_size:Landroid/hardware/Camera$Size;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-static {v15}, Lcom/android/hwcamera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_3

    .line 4301
    .restart local v3       #antiBanding:Ljava/lang/String;
    .restart local v4       #brightnessStr:Ljava/lang/String;
    .restart local v5       #brightnessValue:I
    .restart local v6       #colorEffect:Ljava/lang/String;
    .restart local v7       #contrastStr:Ljava/lang/String;
    .restart local v8       #contrastValue:I
    .restart local v9       #distorvalue:Ljava/lang/String;
    .restart local v12       #flashMode:Ljava/lang/String;
    .restart local v14       #iso:Ljava/lang/String;
    .restart local v19       #pictureFormat:Ljava/lang/String;
    .restart local v23       #saturationStr:Ljava/lang/String;
    .restart local v24       #saturationValue:I
    .restart local v28       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v12

    .line 4302
    if-nez v12, :cond_10

    .line 4303
    const v31, 0x7f0c0043

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 4312
    .restart local v30       #whiteBalance:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v30

    .line 4313
    if-nez v30, :cond_11

    .line 4314
    const-string v30, "auto"

    goto/16 :goto_5

    .line 4334
    .restart local v10       #exposure:Ljava/lang/String;
    .restart local v16       #max:I
    .restart local v17       #min:I
    .restart local v22       #redEyeReductionValue:Ljava/lang/String;
    .restart local v26       #step:F
    .restart local v29       #value:I
    :cond_1d
    const-string v31, "Camera"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "invalid exposure range: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 4090
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 4091
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4092
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4095
    :cond_0
    return-void
.end method

.method private updateDelayTakePictureTime()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 5219
    const v2, 0x7f08000f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5220
    .local v0, mCounterDownView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    if-lez v2, :cond_2

    .line 5222
    const-string v2, "ro.camera.support.led"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5223
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v2}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 5224
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v2, v3}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;I)V

    .line 5227
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    iget v3, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-ne v2, v3, :cond_1

    .line 5228
    invoke-direct {p0, v5}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 5230
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 5231
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 5232
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5233
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5234
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 5235
    .local v1, selftTimer:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5236
    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    add-int/lit16 v2, v2, -0x3e8

    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 5237
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5252
    .end local v1           #selftTimer:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 5239
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5240
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5241
    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5242
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5243
    iget v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 5244
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 5245
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    if-eqz v2, :cond_3

    .line 5246
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 5247
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0

    .line 5249
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doTakePicture()V

    goto :goto_0
.end method

.method private updatePhoneStorageHint(J)V
    .locals 8
    .parameter "phoneAvailableSpace"

    .prologue
    .line 3103
    const/4 v2, 0x0

    .line 3104
    .local v2, SdCardRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 3105
    .local v0, SDCardStorageSpace:J
    const-wide/32 v6, 0x1400000

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 3106
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v2

    .line 3109
    :cond_0
    const/4 v3, 0x0

    .line 3110
    .local v3, isChangeStorage:Z
    const/4 v5, 0x0

    .line 3111
    .local v5, toastText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    .line 3112
    .local v4, requestRemain:I
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    .line 3114
    const/4 v3, 0x0

    .line 3115
    const v6, 0x7f0c011c

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3131
    :goto_0
    if-eqz v5, :cond_1

    .line 3132
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 3135
    :cond_1
    if-eqz v3, :cond_2

    .line 3136
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 3137
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 3139
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 3140
    return-void

    .line 3116
    :cond_3
    const-wide/16 v6, -0x2

    cmp-long v6, v0, v6

    if-nez v6, :cond_4

    .line 3118
    const/4 v3, 0x0

    .line 3119
    const v6, 0x7f0c011e

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3122
    :cond_4
    if-lt v2, v4, :cond_5

    .line 3123
    const/4 v3, 0x1

    .line 3124
    const v6, 0x7f0c0121

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3126
    :cond_5
    const/4 v3, 0x0

    .line 3127
    const v6, 0x7f0c0120

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updateSDCardStorageHint(J)V
    .locals 8
    .parameter "SDCardAvailableSpace"

    .prologue
    .line 3053
    const/4 v2, 0x0

    .line 3054
    .local v2, internalRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 3055
    .local v0, InternalStorageSpace:J
    const-wide/32 v6, 0x1400000

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 3056
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v2

    .line 3059
    :cond_0
    const/4 v3, 0x0

    .line 3060
    .local v3, isChangeStorage:Z
    const/4 v5, 0x0

    .line 3061
    .local v5, toastText:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    .line 3062
    .local v4, requestRemain:I
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_4

    .line 3064
    if-lt v2, v4, :cond_3

    .line 3065
    const/4 v3, 0x1

    .line 3066
    const v6, 0x7f0c011b

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3091
    :goto_0
    if-eqz v5, :cond_1

    .line 3092
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 3095
    :cond_1
    if-eqz v3, :cond_2

    .line 3096
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 3097
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 3099
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 3100
    return-void

    .line 3068
    :cond_3
    const/4 v3, 0x0

    .line 3069
    const v6, 0x7f0c011c

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3071
    :cond_4
    const-wide/16 v6, -0x2

    cmp-long v6, p1, v6

    if-nez v6, :cond_6

    .line 3073
    if-lt v2, v4, :cond_5

    .line 3074
    const/4 v3, 0x1

    .line 3075
    const v6, 0x7f0c011d

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3077
    :cond_5
    const/4 v3, 0x0

    .line 3078
    const v6, 0x7f0c011e

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3082
    :cond_6
    if-lt v2, v4, :cond_7

    .line 3083
    const/4 v3, 0x1

    .line 3084
    const v6, 0x7f0c011f

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 3086
    :cond_7
    const/4 v3, 0x0

    .line 3087
    const v6, 0x7f0c0120

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private updateShootMode(Ljava/lang/String;)V
    .locals 11
    .parameter "shootmode"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 4732
    move-object v2, p1

    .line 4733
    .local v2, value:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_1

    .line 4734
    const v3, 0x7f0c00d6

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4739
    :cond_0
    :goto_0
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Flow] updateShootMode shootmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    if-nez v2, :cond_2

    .line 4804
    :goto_1
    return-void

    .line 4735
    :cond_1
    if-nez p1, :cond_0

    .line 4736
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_shootmode_key"

    const v5, 0x7f0c00d6

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4743
    :cond_2
    move-object v1, v2

    .line 4744
    .local v1, shootingMode:Ljava/lang/String;
    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4746
    :cond_3
    const-string v1, "burst"

    .line 4749
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4750
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4751
    const/16 v3, 0xa

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4752
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4754
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4755
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4756
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4759
    :cond_5
    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    const-string v3, "smile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 4760
    invoke-static {v6}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    .line 4765
    :cond_6
    :goto_2
    const v3, 0x7f08008a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 4766
    const-string v3, "single"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4768
    iput v6, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4801
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V

    .line 4802
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const-string v4, "pref_camera_shootmode_key"

    const v5, 0x7f08003d

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4803
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    goto :goto_1

    .line 4761
    :cond_8
    iget v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v3, v10, :cond_6

    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4762
    const-string v3, "off"

    invoke-static {v3}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;)V

    goto :goto_2

    .line 4769
    :cond_9
    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4771
    const-string v3, "on"

    invoke-static {v3}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;)V

    .line 4772
    iput v10, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_3

    .line 4773
    :cond_a
    const-string v3, "group"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4775
    iput v9, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4776
    iput v6, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    goto :goto_3

    .line 4777
    :cond_b
    const-string v3, "panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4779
    invoke-static {v9}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 4780
    iput v8, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4781
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    goto :goto_3

    .line 4782
    :cond_c
    const-string v3, "burst"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4784
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_3

    .line 4785
    :cond_d
    const-string v3, "smile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4786
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4787
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4788
    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 4789
    const/16 v3, 0xb

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4790
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 4791
    :cond_e
    const-string v3, "beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4792
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 4793
    :cond_f
    const-string v3, "zsl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4794
    iput v7, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 4795
    :cond_10
    const-string v3, "lowlight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4796
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 4797
    :cond_11
    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4798
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 4799
    iput v6, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    goto/16 :goto_3
.end method

.method private updateStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 3045
    if-eqz p1, :cond_0

    .line 3046
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    .line 3050
    :goto_0
    return-void

    .line 3048
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updatePhoneStorageHint(J)V

    goto :goto_0
.end method

.method private updateStorageHintEx(Z)V
    .locals 3
    .parameter "isPriorSaveInSDCard"

    .prologue
    .line 3026
    const/4 v0, 0x0

    .line 3027
    .local v0, storageText:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 3028
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    const v1, 0x7f0c0122

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 3039
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 3040
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 3034
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3035
    const v1, 0x7f0c0123

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3036
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1
.end method

.method private updateSuperPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4953
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 4954
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_1

    .line 4955
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 4960
    :cond_0
    :goto_0
    return-void

    .line 4957
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private updateThumbnailButton()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    if-ltz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;Z)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private viewLastImage()V
    .locals 8

    .prologue
    .line 4482
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v5, :cond_0

    .line 4507
    :goto_0
    return-void

    .line 4485
    :cond_0
    const-string v5, "Camera"

    const-string v6, "[Flow] viewLastImage"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4487
    const-string v4, "com.cooliris.media.action.REVIEW"

    .line 4488
    .local v4, intentStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4489
    const-string v4, "com.android.camera.action.REVIEW"

    .line 4491
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4493
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4502
    :goto_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v6, "pref_camera_reset_tag"

    const-string v7, "noreset"

    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4494
    :catch_0
    move-exception v1

    .line 4496
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v6}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4497
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 4500
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 4498
    :catch_1
    move-exception v0

    .line 4499
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v5, "Camera"

    const-string v6, "review image fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4505
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #intentStr:Ljava/lang/String;
    :cond_2
    const-string v5, "Camera"

    const-string v6, "Can\'t view last image."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4498
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #intentStr:Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private waitPreviewOpened()V
    .locals 3

    .prologue
    .line 2160
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2162
    const-string v0, "Camera"

    const-string v2, "[Flow] onCreate waite preview started!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 2165
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    .line 2166
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 2167
    monitor-exit v1

    .line 2176
    :goto_0
    return-void

    .line 2168
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 2169
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 2170
    monitor-exit v1

    goto :goto_0

    .line 2172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2173
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2172
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 3506
    const-string v1, "Camera"

    const-string v2, "[Flow] Send msg to start autoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 3508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3509
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3510
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3511
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3512
    return-void
.end method

.method public canDoFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 5402
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5410
    :cond_0
    :goto_0
    return v0

    .line 5405
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v3, :cond_0

    .line 5410
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 3
    .parameter "setState"

    .prologue
    .line 3516
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    if-nez v1, :cond_0

    .line 3525
    :goto_0
    return-void

    .line 3519
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 3520
    const-string v1, "Camera"

    const-string v2, "[Flow] Send msg to cancel autoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3522
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3523
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3524
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public cancelSensorAutoFocus(Z)V
    .locals 2
    .parameter "setState"

    .prologue
    .line 2006
    if-eqz p1, :cond_0

    .line 2007
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 2009
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 2010
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 2011
    const-string v0, "Camera"

    const-string v1, "[Flow] cancelSensorAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-void
.end method

.method public capture()Z
    .locals 2

    .prologue
    .line 1853
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 1854
    :cond_0
    const/4 v0, 0x0

    .line 1858
    :goto_0
    return v0

    .line 1856
    :cond_1
    const-string v0, "Camera"

    const-string v1, "[Flow] Capture(),send capture picture msg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1858
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 3867
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3868
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3869
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3870
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 3871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 3872
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 3873
    const-string v0, "Camera"

    const-string v2, "[Flow] Camera released!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3875
    monitor-exit v1

    .line 3880
    :cond_0
    :goto_0
    return-void

    .line 3875
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 3876
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 850
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 2
    .parameter "facesList"

    .prologue
    .line 5279
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5280
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5281
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5282
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5283
    return-void
.end method

.method public doCancelPanorama()V
    .locals 2

    .prologue
    .line 4668
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelPanorama()V

    .line 4669
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4670
    return-void
.end method

.method public doCapture()V
    .locals 1

    .prologue
    .line 4672
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    .line 4673
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    #calls: Lcom/android/hwcamera/Camera$ImageCapture;->capture()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera$ImageCapture;->access$10900(Lcom/android/hwcamera/Camera$ImageCapture;)V

    .line 4675
    :cond_0
    return-void
.end method

.method public doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 8
    .parameter "previousFocusFaceInfo"
    .parameter "focusFaceInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5288
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5319
    :goto_0
    return-void

    .line 5291
    :cond_0
    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 5292
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v3, p1, p2}, Lcom/android/hwcamera/hwui/FaceView;->isNeedFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5293
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/FaceInfo;->clone(Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 5294
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5296
    .local v0, faceArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v3, Landroid/hardware/Camera$Area;

    iget-object v4, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-direct {v3, v4, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5302
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5303
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 5304
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5314
    .end local v0           #faceArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->isFocusStateCAFFace()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5315
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->setFocusState()V

    goto :goto_0

    .line 5306
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinate(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5307
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    .line 5309
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    goto :goto_1

    .line 5317
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 0

    .prologue
    .line 5495
    return-void
.end method

.method public doSetCameraParameters(II)V
    .locals 5
    .parameter "updateSet"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4677
    const/4 v4, 0x2

    if-ne v4, p1, :cond_1

    .line 4678
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canSetZoom()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4691
    :goto_0
    return-void

    .line 4682
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    if-ne p2, v2, :cond_2

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/android/hwcamera/Camera;->getNextZoomValue(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 4683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4684
    .local v0, toastmsg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 4685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mZoomRatios:[F

    iget v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4686
    .local v1, zoomRatios:Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4687
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4688
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4690
    .end local v0           #toastmsg:Landroid/os/Message;
    .end local v1           #zoomRatios:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 4682
    goto :goto_1
.end method

.method public doSetFaceOrientation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1065
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1066
    invoke-static {p1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 1068
    :cond_0
    return-void
.end method

.method public doStartAutoFocus(Ljava/lang/Object;)V
    .locals 3
    .parameter "autofocuCB"

    .prologue
    .line 4694
    :try_start_0
    const-string v1, "Camera"

    const-string v2, "start auto focus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    .line 4697
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    check-cast p1, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4701
    :goto_0
    return-void

    .line 4698
    :catch_0
    move-exception v0

    .line 4699
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Camera"

    const-string v2, "autoFocus failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doSwitchCamera()V
    .locals 2

    .prologue
    .line 4656
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 4657
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 4658
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4659
    const-string v0, "Camera"

    const-string v1, "doSwitchCamera don\'t open new device as quiting msg is queue!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :goto_0
    return-void

    .line 4662
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 4663
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    .line 4664
    const-string v0, "Camera"

    const-string v1, "[Flow] Camera switched !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected getCamera()Lcom/android/hwcamera/HwCamera;
    .locals 1

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method public hideFace()V
    .locals 2

    .prologue
    .line 5274
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5275
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 5487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 5488
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5489
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5490
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5491
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5492
    return-void
.end method

.method public initializeZoom()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method public isCameraReleased()Z
    .locals 1

    .prologue
    .line 3883
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedFocus()Z
    .locals 1

    .prologue
    .line 5415
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->canDoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3455
    sparse-switch p1, :sswitch_data_0

    .line 3479
    :cond_0
    :goto_0
    return-void

    .line 3457
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3458
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 3459
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3460
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 3461
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3464
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 3465
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 3467
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3468
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3473
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #path:Ljava/io/File;
    :sswitch_1
    const/4 v3, 0x5

    if-ne v3, p2, :cond_0

    .line 3474
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3455
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3568
    const-string v0, "Camera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3570
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    .line 3622
    :cond_1
    :goto_0
    return-void

    .line 3573
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v5, :cond_1

    .line 3577
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v5, :cond_4

    .line 3579
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3580
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3581
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 3584
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_5

    .line 3585
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 3586
    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    goto :goto_0

    .line 3589
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closeOpenedPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3590
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3591
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3604
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_9

    .line 3605
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 3592
    :cond_7
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3593
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    goto :goto_1

    .line 3594
    :cond_8
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3595
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3596
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3597
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 3608
    :cond_9
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_a

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_a

    .line 3609
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    .line 3610
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3611
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 3617
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraAppImpl;->resetMakeZoomHint(Z)V

    .line 3620
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onBackPressed()V

    goto/16 :goto_0

    .line 3614
    :cond_b
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2738
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2756
    :cond_0
    :goto_0
    return-void

    .line 2740
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    goto :goto_0

    .line 2743
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hidePostCaptureAlert()V

    .line 2744
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto :goto_0

    .line 2747
    :sswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doCancel()V

    goto :goto_0

    .line 2751
    :sswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2752
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->viewLastImage()V

    goto :goto_0

    .line 2738
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_3
        0x7f080021 -> :sswitch_0
        0x7f080022 -> :sswitch_1
        0x7f080023 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 3290
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3291
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 2036
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate begine"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 2038
    new-instance v11, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 2039
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v11}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 2040
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v11

    iput v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 2042
    new-instance v11, Lcom/android/hwcamera/FocusManager;

    const v12, 0x7f0c0041

    invoke-virtual {p0, v12}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/hwcamera/FocusManager;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 2043
    new-instance v11, Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/HWExtCameraHandler;-><init>(Lcom/android/hwcamera/HWExtCameraHandler$Listener;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 2044
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 2045
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v11}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 2046
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate send open camera msg"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2048
    const v11, 0x7f030001

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->setContentView(I)V

    .line 2051
    const-string v11, "ro.camera.show.eula"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2052
    const-string v11, "pref_eula"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/hwcamera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 2054
    :cond_0
    const-string v11, "ro.camera.support.led"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2055
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    .line 2063
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2064
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/util/zip/ZipFile;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2065
    .local v10, zf:Ljava/util/zip/ZipFile;
    const-string v11, "classes.dex"

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 2066
    .local v9, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v7

    .line 2067
    .local v7, time:J
    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 2068
    .local v6, s:Ljava/lang/String;
    const-string v11, "Camera"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This HwCamera.apk was built at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2072
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #time:J
    .end local v9           #ze:Ljava/util/zip/ZipEntry;
    .end local v10           #zf:Ljava/util/zip/ZipFile;
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isImageCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    .line 2074
    new-instance v11, Lcom/android/hwcamera/ParametersManager;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/ParametersManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 2075
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    iget-boolean v12, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/ParametersManager;->setImageCaptureIntent(Z)V

    .line 2077
    const v11, 0x7f080009

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 2078
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f040011

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 2079
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2080
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.extra.quickCapture"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    .line 2081
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v11

    iput v11, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    .line 2082
    iget v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget v12, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_4

    .line 2083
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 2084
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v11, p0, v12}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2085
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v11, v12}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2089
    :goto_1
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v11, :cond_2

    .line 2090
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetMenuPreference()V

    .line 2092
    :cond_2
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v11}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2097
    const v11, 0x7f08000a

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/SurfaceView;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2098
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2099
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 2100
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2101
    const/4 v11, 0x3

    invoke-interface {v4, v11}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2107
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2108
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 2110
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v11, :cond_3

    .line 2111
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setupCaptureParams()V

    .line 2114
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2116
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f080013

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2117
    .local v1, cameraRootView:Landroid/view/ViewGroup;
    iget-boolean v11, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v11, :cond_5

    .line 2118
    const/high16 v11, 0x7f03

    invoke-virtual {v5, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2133
    :goto_2
    const v11, 0x7f080004

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBar:Landroid/view/View;

    .line 2134
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x7f04

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    .line 2135
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mControlBarAnim:Landroid/view/animation/Animation;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2137
    new-instance v11, Lcom/android/hwcamera/Camera$SuperPanelListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/Camera$SuperPanelListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    .line 2138
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->saveLocationInit()V

    .line 2139
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2140
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2141
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2142
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/hwcamera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2145
    new-instance v11, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v11, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 2146
    new-instance v11, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v11, p0, v12}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 2148
    new-instance v11, Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v11, p0}, Lcom/android/hwcamera/CameraAutoFocusController;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 2149
    new-instance v11, Lcom/android/hwcamera/AutoFocusListener;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v13, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v11, v12, v13}, Lcom/android/hwcamera/AutoFocusListener;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/CameraAutoFocusController;)V

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 2150
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/AutoFocusListener;->setListener(Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;)V

    .line 2151
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    iget-object v12, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/CameraAutoFocusController;->setListener(Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;)V

    .line 2153
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 2155
    const-string v11, "Camera"

    const-string v12, "[Flow] onCreate end!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void

    .line 2087
    .end local v1           #cameraRootView:Landroid/view/ViewGroup;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v12, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v11, p0, v12}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 2120
    .restart local v1       #cameraRootView:Landroid/view/ViewGroup;
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    :cond_5
    const v11, 0x7f030002

    invoke-virtual {v5, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2121
    const v11, 0x7f08001c

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/RotateImageView;

    .line 2122
    .local v2, cameraSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    const v11, 0x7f020022

    invoke-virtual {v2, v11}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2124
    const v11, 0x7f080019

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/Switcher;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 2125
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 2126
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v12, 0x7f080018

    invoke-virtual {p0, v12}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    .line 2127
    const v11, 0x7f080017

    invoke-virtual {p0, v11}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/RotateImageView;

    iput-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 2128
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 2129
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2130
    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v11, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2069
    .end local v1           #cameraRootView:Landroid/view/ViewGroup;
    .end local v2           #cameraSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 4592
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4594
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 4596
    const/4 v0, 0x0

    .line 4600
    :goto_0
    return v0

    .line 4598
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 4600
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 5267
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 5268
    const-string v0, "Camera"

    const-string v1, "[Flow] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5270
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 3641
    sparse-switch p1, :sswitch_data_0

    .line 3694
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    :sswitch_1
    return v2

    .line 3643
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3645
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 3646
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    goto :goto_0

    .line 3651
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3652
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto :goto_0

    .line 3662
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3667
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 3668
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    .line 3670
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3671
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocusFromTouch()Z

    .line 3675
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 3673
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 3685
    :sswitch_5
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canSetZoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3686
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3687
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3688
    const/16 v3, 0x19

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3689
    iput v4, v0, Landroid/os/Message;->what:I

    .line 3690
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3641
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1b -> :sswitch_3
        0x50 -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3699
    packed-switch p1, :pswitch_data_0

    .line 3706
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3701
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 3702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->doFocus(Z)V

    .line 3704
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3699
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3298
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3300
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 3306
    :goto_0
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 3307
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onPause begin, screenChange= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v0, :cond_1

    .line 3451
    :goto_1
    return-void

    .line 3303
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3313
    :cond_1
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 3315
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 3317
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_2

    .line 3318
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3319
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 3320
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v7, :cond_2

    .line 3321
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3325
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3326
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3334
    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 3336
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_4

    .line 3337
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 3339
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3340
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetScreenOn()V

    .line 3341
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_5

    .line 3342
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 3344
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_6

    .line 3345
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 3347
    :cond_6
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_7

    .line 3349
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3350
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3351
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 3352
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 3354
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_8

    .line 3355
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 3357
    :cond_8
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_9

    .line 3358
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->disable()V

    .line 3359
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3360
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_9

    .line 3361
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 3362
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3363
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_image_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 3364
    const-string v0, "Camera"

    const-string v1, "[Flow] last image thumb saved!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_9
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_a

    .line 3369
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3370
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 3373
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_b

    .line 3374
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 3375
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 3380
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->releaseSoundPlayer()V

    .line 3381
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseSoundPlayer()V

    .line 3383
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v6, :cond_17

    .line 3384
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hidePostCaptureAlert()V

    .line 3392
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_d

    .line 3393
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 3394
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 3398
    :cond_d
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 3402
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 3404
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3405
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3407
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    .line 3408
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3409
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 3410
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3414
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_f

    .line 3415
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3417
    :cond_f
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    .line 3418
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    .line 3421
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3422
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3424
    :cond_10
    const-string v0, "Camera"

    const-string v2, "[Flow] onPause, wait to release camera!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3427
    :cond_11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3433
    :goto_4
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 3435
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_12

    .line 3436
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->finish()V

    .line 3437
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 3439
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_13

    .line 3440
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->finish()V

    .line 3441
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 3446
    :cond_13
    const-string v0, "ro.camera.support.led"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3447
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 3450
    :cond_14
    const-string v0, "Camera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3327
    :cond_15
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3328
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_2

    .line 3329
    :cond_16
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3331
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_2

    .line 3385
    :cond_17
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 3386
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 3387
    iput-object v5, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 3388
    :cond_18
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 3389
    :cond_19
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    goto/16 :goto_3

    .line 3427
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3428
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 4582
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4585
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4587
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 5201
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 5203
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3215
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 3218
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3220
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 3226
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "config_camera_stopFM"

    invoke-static {v1, v2, v5}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3228
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 3230
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] onResume mSurfaceHolder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFirstTimeInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v1, :cond_2

    .line 3286
    :goto_1
    return-void

    .line 3223
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3234
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 3235
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3237
    :cond_3
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 3238
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 3239
    iput v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 3240
    new-instance v1, Lcom/android/hwcamera/Camera$ImageCapture;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/Camera$ImageCapture;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 3243
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v1, :cond_4

    .line 3246
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 3247
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 3248
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3251
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 3254
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_5

    .line 3257
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_9

    .line 3258
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3263
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 3266
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3267
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_auto_focusmode_key"

    const v3, 0x7f0c00ee

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3269
    .local v0, autoFocusValue:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3270
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    .line 3274
    .end local v0           #autoFocusValue:Ljava/lang/String;
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v5, :cond_7

    .line 3275
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 3276
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3279
    :cond_7
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_8

    .line 3280
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "reset"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 3285
    const-string v1, "Camera"

    const-string v2, "[Flow] onResume end!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3260
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    goto :goto_2
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 7
    .parameter "button"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 2891
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2961
    :cond_0
    :goto_0
    return-void

    .line 2895
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v1, v4, :cond_2

    .line 2897
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 2900
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] onShutterButtonClick mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 2902
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2905
    :pswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2909
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v6, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v1, :cond_3

    .line 2910
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 2911
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showBarAndShutterButton()V

    .line 2912
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOn()V

    .line 2913
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 2915
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v6, :cond_4

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v1, :cond_4

    .line 2916
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 2920
    :cond_4
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v1, v4, :cond_6

    .line 2921
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2922
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2923
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanorama()V

    goto :goto_0

    .line 2924
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2925
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    goto :goto_0

    .line 2932
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-eqz v1, :cond_7

    .line 2933
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v1, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 2934
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2938
    :cond_7
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2939
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 2940
    .local v0, maxPicture:I
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 2941
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 2942
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 2948
    :cond_8
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->startBurst(I)V

    goto/16 :goto_0

    .line 2943
    :cond_9
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 2944
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 2945
    sget v0, Lcom/android/hwcamera/Config;->ACTION_PIC_NUM:I

    goto :goto_1

    .line 2952
    .end local v0           #maxPicture:I
    :cond_a
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2953
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2955
    :cond_b
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2957
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto/16 :goto_0

    .line 2902
    :pswitch_data_0
    .packed-switch 0x7f080007
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 2839
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onShutterButtonFocus mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    if-eqz p2, :cond_1

    .line 2842
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->needShutterButtonFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2843
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->enableFocusSound()V

    .line 2844
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 2849
    :cond_0
    :goto_0
    return-void

    .line 2847
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 2

    .prologue
    .line 2965
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 2989
    :cond_0
    :goto_0
    return-void

    .line 2970
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2974
    :cond_2
    const-string v0, "Camera"

    const-string v1, "[Flow] onShutterButtonLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2979
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2985
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v0, :cond_0

    .line 2988
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->shutterLongPressed()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2635
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 2636
    const-string v0, "Camera"

    const-string v1, "[Flow] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 2640
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2644
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 2645
    const-string v0, "Camera"

    const-string v1, "[Flow] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2650
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 4866
    if-nez p2, :cond_0

    .line 4867
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "noreset"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4869
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "videotag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4871
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 4873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 858
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 909
    :cond_1
    :goto_0
    return v2

    .line 863
    :cond_2
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotionEvent is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 869
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v4

    if-nez v4, :cond_1

    .line 874
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 880
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 881
    .local v0, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 884
    .local v1, y:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    sub-int/2addr v4, v5

    if-gt v1, v4, :cond_1

    .line 888
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/hwcamera/HWExtCameraHandler;->isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 889
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 890
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusManager;->setFocusStateCAFFace()Z

    .line 891
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v3}, Lcom/android/hwcamera/HWExtCameraHandler;->doFaceFocus()V

    goto :goto_0

    .line 897
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v4}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    .line 899
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 901
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v2, :cond_4

    .line 902
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2, p2}, Lcom/android/hwcamera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 904
    goto/16 :goto_0

    .line 909
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 4902
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 4903
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_0

    .line 4904
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 4906
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 3206
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 3207
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 3208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->screenChange:Z

    .line 3209
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->onResume()V

    .line 3211
    :cond_0
    return-void
.end method

.method public openCameraDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 1969
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 1970
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 1972
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 1973
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] Camera opened! mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1976
    const-wide/16 v2, 0xfa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1980
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setCameraDevice(Lcom/android/hwcamera/HwCamera;)V

    .line 1981
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setHWExtCameraHandler(Landroid/os/Handler;)V

    .line 1982
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeCapabilities()V

    .line 1983
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1985
    :cond_1
    monitor-exit v1

    .line 1986
    return-void

    .line 1985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1977
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public panoramaDirection(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 5376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5377
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5378
    .local v1, data:Ljava/lang/String;
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "panoramaa direction decedied! direction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    const-string v2, "Left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5380
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    .line 5384
    :cond_0
    :goto_0
    return-void

    .line 5381
    :cond_1
    const-string v2, "Right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5382
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    goto :goto_0
.end method

.method public panoramaTracker(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 5355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5356
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "offx"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 5357
    .local v1, offx:I
    const-string v3, "offy"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 5358
    .local v2, offy:I
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5360
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5362
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    .line 5372
    :goto_0
    return-void

    .line 5366
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v2, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    goto :goto_0

    .line 5370
    :cond_1
    const-string v3, "Camera"

    const-string v4, "panoramaTracker get x,y in worng status!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public panormaIntermediateCaptureStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5389
    invoke-direct {p0, v0, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 5390
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5391
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyBeforeCaputre()V

    .line 5392
    return-void
.end method

.method public prepareQuitCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1989
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_2

    .line 1990
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->cancelSensorAutoFocus(Z)V

    .line 1993
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_1

    .line 1994
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 1995
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 1997
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->clearShootMode()V

    .line 1998
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 2000
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 2001
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2002
    monitor-exit v1

    .line 2003
    return-void

    .line 2002
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetParametersCompensation()V
    .locals 12

    .prologue
    .line 4808
    const v10, 0x7f0c007a

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4809
    .local v3, contrastStr:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v11

    add-int v4, v10, v11

    .line 4811
    .local v4, contrastValue:I
    const-string v10, "KEY_HUAWEI_CONTRAST"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4812
    .local v6, mContrast_key:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4813
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v6, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4816
    :cond_0
    const v10, 0x7f0c0080

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4817
    .local v0, brightnessStr:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v11

    add-int v1, v10, v11

    .line 4820
    .local v1, brightnessValue:I
    const-string v10, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4821
    .local v5, mBrightness_key:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 4822
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4825
    :cond_1
    const v10, 0x7f0c007d

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4826
    .local v8, saturationStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v11

    mul-int/2addr v10, v11

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v11

    add-int v9, v10, v11

    .line 4828
    .local v9, saturationValue:I
    const-string v10, "KEY_HUAWEI_SATURATION"

    invoke-static {v10}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4829
    .local v7, mSaturation_key:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 4830
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4832
    :cond_2
    const v10, 0x7f0c0050

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4833
    .local v2, colorEffect:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4834
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 4836
    :cond_3
    iget-object v10, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v11, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4837
    return-void
.end method

.method public restartPreview()Z
    .locals 2

    .prologue
    .line 3900
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3901
    :catch_0
    move-exception v0

    .line 3902
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 3903
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraParameters(I)V
    .locals 3
    .parameter "updateSet"

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 4434
    const-string v0, "Camera"

    const-string v1, "TODO: avoid NullPointerException from doFaceFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    :goto_0
    return-void

    .line 4438
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4439
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraParameters begine, get parameter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 4442
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersInitialize()V

    .line 4445
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 4446
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersZoom()V

    .line 4449
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 4450
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersPreference()V

    .line 4452
    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 4453
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 4455
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4456
    const-string v0, "Camera"

    const-string v1, "setCameraParameters end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOrientation()V
    .locals 2

    .prologue
    .line 3923
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    .line 3924
    iget v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    .line 3925
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 3926
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 3927
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 3929
    :cond_0
    return-void
.end method

.method public setFaceArea(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p1, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1082
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 5527
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 5528
    return-void
.end method

.method public setOrientationInvokeAfterCaptureEx(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x5e

    .line 2567
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2568
    .local v2, rotateLineayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-nez v2, :cond_0

    .line 2592
    :goto_0
    return-void

    .line 2571
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2572
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2573
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2574
    .local v1, height:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2576
    .local v3, width:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2584
    :sswitch_0
    invoke-virtual {v2, v3, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2585
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2578
    :sswitch_1
    invoke-virtual {v2, v1, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2579
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2576
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 3909
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] setPreviewDisplay holder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_0

    .line 3911
    const-string v1, "Camera"

    const-string v2, "setPreviewDisplay mCameraDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    :goto_0
    return-void

    .line 3915
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3916
    :catch_0
    move-exception v0

    .line 3917
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 3918
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    const v5, 0x7f080032

    const v4, 0x7f080031

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5467
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    .line 5468
    .local v0, gpsSingnal:Landroid/widget/ImageView;
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 5469
    if-eqz p1, :cond_0

    .line 5470
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5471
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5472
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5473
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5480
    :goto_0
    return-void

    .line 5475
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5476
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5477
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5478
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 5344
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    if-nez v0, :cond_1

    .line 5351
    :cond_0
    :goto_0
    return-void

    .line 5347
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 5349
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public smileCapture(I)V
    .locals 4
    .parameter "smileScore"

    .prologue
    .line 5323
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_1

    .line 5341
    :cond_0
    :goto_0
    return-void

    .line 5326
    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 5327
    const v0, 0x7f0200a1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    .line 5328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 5330
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto :goto_0

    .line 5334
    :cond_2
    const/16 v0, 0x28

    if-lt p1, v0, :cond_3

    .line 5335
    const v0, 0x7f0200a0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    goto :goto_0

    .line 5336
    :cond_3
    const/16 v0, 0x14

    if-lt p1, v0, :cond_4

    .line 5337
    const v0, 0x7f02009f

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    goto :goto_0

    .line 5339
    :cond_4
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startContiniousAutoFocus()V
    .locals 3

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1074
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0
.end method

.method public startFaceDetection(Z)V
    .locals 4
    .parameter "isOpenSmile"

    .prologue
    const/4 v3, 0x1

    .line 1040
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, faceDetectionMode:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1045
    invoke-static {}, Lcom/android/hwcamera/Util;->startFaceDetection()V

    .line 1046
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    goto :goto_0
.end method

.method public startFaceDetectionUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1029
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 1030
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1031
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1032
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v4, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 1033
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v0, v1, v4

    .line 1034
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/hwcamera/hwui/FaceView;->setMirror(Z)V

    .line 1035
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceView;->resume()V

    .line 1036
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchPreviewSize()V

    .line 1037
    return-void

    :cond_0
    move v1, v3

    .line 1034
    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1061
    invoke-static {}, Lcom/android/hwcamera/Util;->stopFaceDetection()V

    .line 1062
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1063
    return-void
.end method

.method public stopFaceDetectionUI()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1055
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1057
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3992
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    .line 3993
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessage()V

    .line 3994
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 3996
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 3997
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 3998
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 3999
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 4000
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4001
    const-string v0, "Camera"

    const-string v2, "[Flow] Preview stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4003
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4009
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4012
    return-void

    .line 4003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4006
    :cond_1
    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 4007
    const-string v0, "Camera"

    const-string v1, "Fatal error!Stop preview but mCameraDevice is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x3

    .line 3784
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3785
    const-string v1, "Camera"

    const-string v2, "holder.getSurface() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    :cond_0
    :goto_0
    return-void

    .line 3788
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] surfaceChanged holder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFirstTimeInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3804
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3807
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v1, :cond_4

    .line 3808
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In surfacechange, mRestartPreviewNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_3

    .line 3811
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3833
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_6

    .line 3834
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3814
    :cond_4
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    if-eq v1, v2, :cond_5

    .line 3815
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3817
    :cond_5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3823
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3824
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3825
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3826
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 3836
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    goto/16 :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 3841
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] SurfaceCreated holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 3845
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] surfaceDestroyed holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 3847
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3851
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3852
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_1

    .line 3853
    const-string v0, "Camera"

    const-string v2, "[Flow]  surfaceDestroyed, wait stop preview!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3856
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3860
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3861
    return-void

    .line 3856
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3857
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method transformCoordinate([F[I)V
    .locals 9
    .parameter "Coordinate"
    .parameter "SurfaceViewLocation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4510
    aget v5, p1, v7

    aget v6, p2, v7

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 4511
    .local v3, x:F
    aget v5, p1, v8

    aget v6, p2, v8

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 4513
    .local v4, y:F
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 4514
    .local v1, SurfaceViewWidth:I
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 4515
    .local v0, SurfaceViewHeight:I
    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4517
    .local v2, s:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 4518
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    .line 4519
    return-void
.end method

.method transformFaceCoordinate([I)V
    .locals 13
    .parameter "FaceCoordinate"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3535
    aget v3, p1, v9

    .line 3536
    .local v3, x:I
    aget v5, p1, v10

    .line 3537
    .local v5, y:I
    aget v7, p1, v9

    aget v8, p1, v11

    add-int v4, v7, v8

    .line 3538
    .local v4, x1:I
    aget v7, p1, v10

    aget v8, p1, v12

    add-int v6, v7, v8

    .line 3539
    .local v6, y1:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 3540
    .local v1, SurfaceViewWidth:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 3541
    .local v0, SurfaceViewHeight:I
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3543
    .local v2, s:Landroid/hardware/Camera$Size;
    mul-int v7, v1, v3

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    div-int/2addr v7, v8

    aput v7, p1, v9

    .line 3544
    mul-int v7, v0, v5

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v7, v8

    aput v7, p1, v10

    .line 3545
    mul-int v7, v1, v4

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    div-int/2addr v7, v8

    aput v7, p1, v11

    .line 3546
    mul-int v7, v0, v6

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v7, v8

    aput v7, p1, v12

    .line 3547
    return-void
.end method

.method public updatePicturesRemaining()V
    .locals 3

    .prologue
    .line 5206
    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5207
    .local v0, remainPicText:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 5216
    :goto_0
    return-void

    .line 5210
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    .line 5211
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5213
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
