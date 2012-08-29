.class public Lcom/android/hwcamera/VideoCamera;
.super Lcom/android/hwcamera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VideoCamera$SuperPanelListener;,
        Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/hwcamera/VideoCamera$ZoomListener;,
        Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/hwcamera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
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

.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CONTROL_BAR_WIDTH:I = 0x5a

.field private static final CUSTOM_MAX_FILESIZE:J = 0x445c0L

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field private static final DELAYED_ONRESUME_FUNCTION:I = 0x7

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FLOW:Ljava/lang/String; = "[Flow] "

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
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

.field public static final RESET_EFFECT_EXTRA:Ljava/lang/String; = "reset_effect"

.field private static final REVIEW_DISPLAY_MSG:I = 0x12

.field private static final REVIEW_HIDE_MSG:I = 0xe

.field private static final REVIEW_IN_PROGRESS:I = 0x1

.field private static final REVIEW_NOT_IN_PROGRESS:I = 0x0

.field private static final REVIEW_PLAY_MSG:I = 0x13

.field private static final REVIEW_SWITCH_MSG:I = 0x10

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final SWITCH_CAMERA:Z = true

.field private static final SWITCH_VIDEO:Z = false

.field private static final TAG:Ljava/lang/String; = "videocamera"

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
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

.field private static final VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
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

.field private static final VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap; = null
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

.field private static final VIDEO_CODE_RATE:F = 1.07f

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;
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


# instance fields
.field private IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private devlatch:Ljava/util/concurrent/CountDownLatch;

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mColorEffectExitAnim:Landroid/view/animation/Animation;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlBar:Landroid/view/View;

.field private mControlBarAnim:Landroid/view/animation/Animation;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectType:I

.field private mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGpsSignalState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsGalleryExViewAdd:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsLowRecordVideo:Z

.field private mIsOnGalleryExState:Z

.field private mIsVideoCaptureIntent:Z

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordVideoFileState:Z

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mReviewOrientation:I

.field private mReviewPlayState:Z

.field private mReviewState:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSmoothZoomSupported:Z

.field private mStartPreviewFail:Z

.field private mStorageSpace:J

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFps:I

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoPreview:Landroid/view/SurfaceView;

.field private mVideoWidth:I

.field private final mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

.field private mZoomMax:I

.field mZoomRatios:[F

.field private mZoomValue:I

.field private mZooming:Z

.field private final sReceiver:Landroid/content/BroadcastReceiver;

.field private screenChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x4e200

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 250
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 252
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 255
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 258
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 261
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 264
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "aacplus"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "eaacplus"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    const v2, 0xe4e1c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x989680

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "960x540"

    const v2, 0x6acfc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    const v2, 0x3d0900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    const v2, 0x927c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    const v2, 0x27100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1920x1080"

    const v2, 0xc65d40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "1280x720"

    const v2, 0x7a1200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "960x540"

    const v2, 0x5b8d80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "640x480"

    const v2, 0x1e8480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "352x288"

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "320x240"

    const v2, 0x61a80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "176x144"

    const v2, 0x222e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 131
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 156
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 163
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 177
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 180
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 202
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    .line 204
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 208
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFps:I

    .line 210
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 214
    new-instance v0, Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$ZoomListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    .line 225
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 234
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 235
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 237
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 238
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 241
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 245
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 314
    new-instance v0, Lcom/android/hwcamera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    .line 326
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    .line 328
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 329
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 331
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 335
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    .line 435
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    .line 493
    new-instance v0, Lcom/android/hwcamera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$1;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 799
    new-instance v0, Lcom/android/hwcamera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$3;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2796
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/VideoCamera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopReviewIfNeed()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/VideoCamera;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/VideoCamera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/VideoCamera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/RotateToast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addVideoToMediaStore()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2053
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v4, :cond_1

    .line 2054
    const-string v4, "content://media/external/video/media"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2055
    .local v3, videoTable:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2057
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long v0, v4, v6

    .line 2058
    .local v0, duration:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 2059
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 2060
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 2062
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2067
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2069
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.hardware.action.NEW_VIDEO"

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2077
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    .end local v0           #duration:J
    .end local v3           #videoTable:Landroid/net/Uri;
    :cond_1
    :goto_1
    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2081
    return-void

    .line 2064
    .restart local v0       #duration:J
    .restart local v3       #videoTable:Landroid/net/Uri;
    :cond_2
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2071
    :catch_0
    move-exception v2

    .line 2074
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2075
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2077
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current video URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current video URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1841
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1842
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1848
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1553
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 1555
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_0
    return-void

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 1560
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1563
    :cond_1
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 1564
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 1565
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera release!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1567
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 1568
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2998
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3000
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3004
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3006
    :cond_0
    return-void

    .line 3001
    :catch_0
    move-exception v0

    .line 3002
    .local v0, e:Ljava/io/IOException;
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 2991
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2992
    const-string v0, ".mp4"

    .line 2994
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 2984
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2985
    const-string v0, "video/mp4"

    .line 2987
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 516
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 517
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0c009b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private delayedOnResume()V
    .locals 5

    .prologue
    .line 1486
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1489
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1490
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1491
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1493
    new-instance v1, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1494
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1496
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/hwcamera/VideoCamera$5;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/VideoCamera$5;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1502
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    .line 1505
    :cond_0
    return-void
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2085
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 2087
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2088
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2090
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2093
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 2094
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2097
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2100
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1828
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1830
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1831
    const/4 v0, -0x1

    .line 1832
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1836
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 1837
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->finish()V

    .line 1838
    return-void

    .line 1834
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2679
    const/4 v0, 0x0

    return v0
.end method

.method private ensureCameraDevice()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 1575
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 1576
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera open!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 2140
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2141
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2142
    const-string v1, "pref_camera_videosize_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2146
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2147
    const-string v1, "pref_camera_videosize_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2150
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 1

    .prologue
    .line 1583
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1584
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1585
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1586
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 1594
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1595
    return-void

    .line 1588
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1589
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    goto :goto_0

    .line 1592
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 845
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 846
    .local v0, flashModeRotateImage:Lcom/android/hwcamera/RotateImageView;
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 847
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 849
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 851
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 854
    :cond_0
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 859
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 864
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 952
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 955
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 956
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 957
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 958
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 959
    return-void
.end method

.method private galleryExEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 938
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    .line 940
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 941
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 948
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 944
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 945
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 946
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 5

    .prologue
    .line 915
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 916
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    if-nez v3, :cond_0

    .line 917
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 918
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 919
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 920
    .local v2, rootView:Landroid/view/ViewGroup;
    new-instance v3, Lcom/android/hwcamera/hwui/GalleryEx;

    const v4, 0x7f030007

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 921
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 922
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 923
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    .line 924
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 928
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 929
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 930
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 931
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 932
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 933
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 934
    return-void

    .line 926
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter "strKEY"

    .prologue
    const/4 v2, 0x1

    .line 901
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    .line 902
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 903
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 912
    :cond_2
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .parameter "outputFileFormat"

    .prologue
    .line 2017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2018
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v7

    .line 2020
    .local v7, title:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2021
    .local v4, filename:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v6

    .line 2023
    .local v6, mime:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2025
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    .end local v2           #dir:Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 2031
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2032
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2035
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2038
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v8, :cond_1

    .line 2039
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_1
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v8}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 2044
    .local v5, loc:Landroid/location/Location;
    if-eqz v5, :cond_2

    iget-boolean v8, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v8, :cond_2

    .line 2045
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2046
    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2049
    .end local v5           #loc:Landroid/location/Location;
    :cond_2
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-void

    .line 2027
    :catch_0
    move-exception v3

    .line 2028
    .local v3, error:Ljava/lang/Exception;
    const-string v8, "videocamera"

    const-string v9, "make camera path dir error!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getThumbnail()V
    .locals 4

    .prologue
    .line 2433
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2436
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2437
    new-instance v1, Lcom/android/hwcamera/Thumbnail;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/hwcamera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 2438
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v2}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2441
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2465
    long-to-double v2, p1

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2466
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getTotalRecordingTime()J
    .locals 11

    .prologue
    .line 2901
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 2902
    .local v6, storageDirectory:Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2903
    .local v5, stat:Landroid/os/StatFs;
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x3f88f5c3

    mul-float/2addr v7, v8

    float-to-long v7, v7

    const-wide/16 v9, 0x8

    div-long v0, v7, v9

    .line 2904
    .local v0, bitRate:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long v3, v7, v0

    .line 2905
    .local v3, remaining:J
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time videoBitRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " audioBitRate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "bitrate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time stat.getAvailableBlocks() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getBlockSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recording time remaining time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    .end local v0           #bitRate:J
    .end local v3           #remaining:J
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v6           #storageDirectory:Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 2911
    :catch_0
    move-exception v2

    .line 2915
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "videocamera"

    const-string v8, "Fail to access sdcard"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2916
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 720
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 726
    :cond_0
    return-object v2

    .line 721
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 722
    .local v3, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [F

    .line 723
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 724
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v2, v0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2335
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2336
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2337
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 2338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 2339
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2342
    :cond_0
    return-void
.end method

.method private initThumbnailButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2444
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 2445
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 2446
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2448
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "last_video_thumb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/hwcamera/Thumbnail;->loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 2449
    return-void
.end method

.method private initializeHeadUpDisplay()V
    .locals 5

    .prologue
    .line 829
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 831
    .local v0, settings:Lcom/android/hwcamera/CameraSettings;
    const v2, 0x7f050001

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 832
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->superPanelInit()V

    .line 836
    const v2, 0x7f080012

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 837
    .local v1, videoRootView:Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/hwcamera/hwui/Review;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 838
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/Review;->setVideoState(Z)V

    .line 839
    const v2, 0x7f080095

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 840
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getZoomRatios()[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomRatios:[F

    .line 841
    return-void
.end method

.method private initializeRecorder()V
    .locals 20

    .prologue
    .line 1854
    const-string v15, "videocamera"

    const-string v16, "initializeRecorder"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v15, :cond_0

    .line 1975
    :goto_0
    return-void

    .line 1858
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v15, :cond_1

    .line 1859
    const-string v15, "videocamera"

    const-string v16, "Surface holder is null. Wait for surface changed."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1863
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1864
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1866
    .local v10, myExtras:Landroid/os/Bundle;
    const-wide/16 v11, 0x0

    .line 1867
    .local v11, requestedSizeLimit:J
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1868
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v15, :cond_3

    if-eqz v10, :cond_3

    .line 1869
    const-string v15, "output"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 1870
    .local v14, saveUri:Landroid/net/Uri;
    if-eqz v14, :cond_2

    .line 1872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v16, "rw"

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1874
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :cond_2
    :goto_1
    const-string v15, "android.intent.extra.sizeLimit"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1883
    .end local v14           #saveUri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v15, :cond_4

    .line 1884
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 1887
    :cond_4
    new-instance v15, Landroid/media/MediaRecorder;

    invoke-direct {v15}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1890
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v15}, Lcom/android/hwcamera/HwCamera;->unlock()V

    .line 1891
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1892
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v15, :cond_5

    .line 1893
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1895
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1897
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v15, :cond_6

    .line 1898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v16, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1901
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v15, :cond_7

    .line 1903
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1908
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1911
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v15}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 1912
    .local v7, loc:Landroid/location/Location;
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v15, :cond_8

    .line 1913
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/hwcamera/Util;->setLocation(FF)V

    .line 1918
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v15, :cond_b

    .line 1919
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1925
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1929
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v17, 0x300000

    add-long v15, v15, v17

    const-wide/32 v17, 0x1400000

    sub-long v8, v15, v17

    .line 1931
    .local v8, maxFileSize:J
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-lez v15, :cond_c

    cmp-long v15, v11, v8

    if-gez v15, :cond_c

    .line 1932
    move-wide v8, v11

    .line 1940
    :cond_9
    :goto_3
    :try_start_2
    const-string v15, "videocamera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "maxFileSize : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1954
    :goto_4
    const/4 v13, 0x0

    .line 1955
    .local v13, rotation:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 1956
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    move/from16 v16, v0

    aget-object v5, v15, v16

    .line 1957
    .local v5, info:Landroid/hardware/Camera$CameraInfo;
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1958
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit16 v15, v15, 0x168

    rem-int/lit16 v13, v15, 0x168

    .line 1963
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15, v13}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1966
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v15}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1973
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1974
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1875
    .end local v7           #loc:Landroid/location/Location;
    .end local v8           #maxFileSize:J
    .end local v13           #rotation:I
    .restart local v14       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1877
    .local v3, ex:Ljava/io/FileNotFoundException;
    const-string v15, "videocamera"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1904
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    .end local v14           #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 1905
    .local v4, exception:Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 1921
    .end local v4           #exception:Ljava/lang/RuntimeException;
    .restart local v7       #loc:Landroid/location/Location;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->fileFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/hwcamera/VideoCamera;->generateVideoFilename(I)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1933
    .restart local v8       #maxFileSize:J
    :cond_c
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1934
    const-wide/32 v15, 0x445c0

    cmp-long v15, v15, v8

    if-gez v15, :cond_9

    .line 1935
    const-wide/32 v8, 0x445c0

    goto/16 :goto_3

    .line 1960
    .restart local v5       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v13       #rotation:I
    :cond_d
    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    move/from16 v16, v0

    add-int v15, v15, v16

    rem-int/lit16 v13, v15, 0x168

    goto :goto_5

    .line 1967
    .end local v5           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_2
    move-exception v2

    .line 1968
    .local v2, e:Ljava/io/IOException;
    const-string v15, "videocamera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prepare failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1969
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 1970
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1942
    .end local v2           #e:Ljava/io/IOException;
    .end local v13           #rotation:I
    :catch_3
    move-exception v15

    goto/16 :goto_4
.end method

.method private initializeZoom()V
    .locals 6

    .prologue
    .line 706
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-zoom-support"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, zoomStr:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 708
    .local v2, zoomSupported:Z
    if-nez v2, :cond_0

    .line 717
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    .line 711
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max zoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-smooth-zoom-support"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, zoomSmooth:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 714
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smooth zoom supported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 4

    .prologue
    .line 2176
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 2179
    invoke-static {}, Lcom/android/hwcamera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 2180
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2181
    const/4 v0, 0x0

    .line 2183
    :goto_0
    return v0

    :cond_0
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

    .line 2512
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

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isZooming()Z
    .locals 3

    .prologue
    .line 767
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZooming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2429
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2430
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2422
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2424
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2425
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 1364
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 1369
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(I)V

    .line 1370
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 1371
    return-void

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private onSharedPreferencesChanged()V
    .locals 5

    .prologue
    .line 2684
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 2703
    :goto_0
    return-void

    .line 2685
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    monitor-enter v3

    .line 2686
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 2689
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2702
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2691
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_video_gps_key"

    invoke-static {v2, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 2693
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 2696
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2697
    .local v0, cameraId:I
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-eq v2, v0, :cond_2

    .line 2698
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    .line 2702
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 2700
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onStopVideoRecording(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1157
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 1158
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_1

    .line 1159
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    goto :goto_0

    .line 1164
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    .line 1165
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    if-lez v0, :cond_0

    .line 1166
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 1167
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_0

    .line 1168
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 1169
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1375
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v7}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_video_quality_key"

    invoke-virtual {v7, v8, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1379
    .local v6, videoQuality:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1381
    .local v3, quality:I
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1382
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1383
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1385
    .local v1, extraVideoQuality:I
    if-nez v1, :cond_2

    .line 1386
    const/4 v3, 0x0

    .line 1387
    iput-boolean v10, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 1393
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v7, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1394
    const-string v7, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1396
    .local v4, seconds:I
    mul-int/lit16 v7, v4, 0x3e8

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 1400
    .end local v4           #seconds:I
    :goto_1
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v7, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 1403
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 1405
    iget v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-ne v7, v10, :cond_1

    .line 1406
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v8, 0x1e

    iput v8, v7, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1409
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_videocamera_review_key"

    const v9, 0x7f0c00fa

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1411
    .local v5, strTime:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 1412
    return-void

    .line 1389
    .end local v5           #strTime:Ljava/lang/String;
    .restart local v1       #extraVideoQuality:I
    :cond_2
    const/4 v3, 0x1

    .line 1390
    iput-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    goto :goto_0

    .line 1398
    .end local v1           #extraVideoQuality:I
    :cond_3
    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getVidoeDurationInMillis(I)I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 1978
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1980
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->cleanupEmptyFile()V

    .line 1981
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1982
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 1990
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v0, :cond_2

    .line 1991
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 1995
    :cond_2
    return-void
.end method

.method private resetCameraParameters()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2658
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2659
    .local v0, size:Landroid/hardware/Camera$Size;
    const/4 v1, 0x1

    .line 2660
    .local v1, sizeChanged:Z
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v4, :cond_2

    .line 2661
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v4, v5, :cond_1

    :cond_0
    move v1, v3

    .line 2666
    :goto_0
    if-eqz v1, :cond_5

    .line 2669
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 2670
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2671
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    .line 2675
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 2661
    goto :goto_0

    .line 2664
    :cond_2
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    if-ne v4, v5, :cond_3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    if-eq v4, v5, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 2673
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_1
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2419
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1421
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V

    .line 535
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreParameterToDefault()V
    .locals 0

    .prologue
    .line 2729
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 2730
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 2731
    return-void
.end method

.method private restorePreferences()V
    .locals 5

    .prologue
    .line 2734
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 2760
    :goto_0
    return-void

    .line 2738
    :cond_0
    new-instance v1, Lcom/android/hwcamera/VideoCamera$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$6;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    .line 2749
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_1

    .line 2750
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 2752
    :cond_1
    new-instance v2, Lcom/android/hwcamera/hwui/RotateDailog;

    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 2756
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2757
    .local v0, rootView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 2758
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 2759
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 980
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private saveLocationInit()V
    .locals 4

    .prologue
    .line 818
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 819
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_save_location_key"

    const v3, 0x7f0c00d4

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, saveLocationValue:Ljava/lang/String;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 826
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_0
.end method

.method private seconds2Hours(J)Ljava/lang/String;
    .locals 15
    .parameter "seconds"

    .prologue
    .line 2921
    const-wide/16 v13, 0x3c

    div-long v3, p1, v13

    .line 2922
    .local v3, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v3, v13

    .line 2923
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v3, v13

    .line 2924
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v3

    sub-long v8, p1, v13

    .line 2926
    .local v8, remainderSeconds:J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 2927
    .local v10, secondsString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_0

    .line 2928
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2931
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 2932
    .local v5, minutesString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    .line 2933
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2935
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2936
    .local v11, totaltext:Ljava/lang/String;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_4

    .line 2937
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2938
    .local v2, hoursString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_2

    .line 2939
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2942
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_3

    .line 2943
    const-string v11, "99:59:59"

    move-object v12, v11

    .line 2948
    .end local v2           #hoursString:Ljava/lang/String;
    .end local v11           #totaltext:Ljava/lang/String;
    .local v12, totaltext:Ljava/lang/String;
    :goto_0
    return-object v12

    .line 2946
    .end local v12           #totaltext:Ljava/lang/String;
    .restart local v2       #hoursString:Ljava/lang/String;
    .restart local v11       #totaltext:Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v2           #hoursString:Ljava/lang/String;
    :cond_4
    move-object v12, v11

    .line 2948
    .end local v11           #totaltext:Ljava/lang/String;
    .restart local v12       #totaltext:Ljava/lang/String;
    goto :goto_0
.end method

.method private setBitrateAsSetted()V
    .locals 5

    .prologue
    .line 3022
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hw_video_qulity_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3023
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_quality_level_key"

    const v3, 0x7f0c0021

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3025
    .local v0, qualityLevelValue:Ljava/lang/String;
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3026
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v1, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 3033
    .end local v0           #qualityLevelValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3028
    .restart local v0       #qualityLevelValue:Ljava/lang/String;
    :cond_1
    const-string v1, "fine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3029
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v1, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0
.end method

.method private setCafEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 2004
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2005
    .local v0, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 2007
    if-eqz p1, :cond_1

    .line 2008
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2012
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2014
    :cond_0
    return-void

    .line 2010
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 22

    .prologue
    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2532
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2533
    .local v9, recordSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "record-size"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "recordSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2537
    .local v8, previewSize:Ljava/lang/String;
    const-string v19, "videocamera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "previewSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_video_flashmode_key"

    const v21, 0x7f0c0048

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2546
    .local v6, flashMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v12

    .line 2547
    .local v12, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6, v12}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2558
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_coloreffect_key"

    const v21, 0x7f0c0050

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2560
    .local v4, colorEffect:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2564
    :cond_1
    const v19, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2565
    .local v16, whiteBalance:Ljava/lang/String;
    const-string v19, "none"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_whitebalance_key"

    const v21, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2569
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2578
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_distortion_key"

    const v21, 0x7f0c00f0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2580
    .local v5, distorvalue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v13

    .line 2584
    .local v13, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "continuous-video"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "continuous-video"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2588
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-zoom-support"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2589
    .local v17, zoomStr:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    .line 2590
    .local v18, zoomSupported:Z
    if-eqz v18, :cond_5

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2594
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "recording-hint"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2596
    .local v10, recordhintValue:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2600
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization-supported"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2601
    .local v14, vstabSupported:Ljava/lang/String;
    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_steady_video_key"

    const v21, 0x7f0c00e6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2604
    .local v15, vstabValue:Ljava/lang/String;
    const-string v19, "on"

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization"

    const-string v21, "true"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    .end local v10           #recordhintValue:Ljava/lang/String;
    .end local v14           #vstabSupported:Ljava/lang/String;
    .end local v15           #vstabValue:Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_camera_picturesize_key"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2615
    .local v7, pictureSize:Ljava/lang/String;
    if-nez v7, :cond_c

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;)V

    .line 2622
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v19, v0

    const-string v20, "pref_video_antibanding_key"

    const v21, 0x7f0c0124

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2624
    .local v3, antibanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2627
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2630
    return-void

    .line 2550
    .end local v3           #antibanding:Ljava/lang/String;
    .end local v4           #colorEffect:Ljava/lang/String;
    .end local v5           #distorvalue:Ljava/lang/String;
    .end local v7           #pictureSize:Ljava/lang/String;
    .end local v13           #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #whiteBalance:Ljava/lang/String;
    .end local v17           #zoomStr:Ljava/lang/String;
    .end local v18           #zoomSupported:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    .line 2551
    if-nez v6, :cond_0

    .line 2552
    const v19, 0x7f0c0043

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 2572
    .restart local v4       #colorEffect:Ljava/lang/String;
    .restart local v16       #whiteBalance:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v16

    .line 2573
    if-nez v16, :cond_3

    .line 2574
    const-string v16, "auto"

    goto/16 :goto_1

    .line 2607
    .restart local v5       #distorvalue:Ljava/lang/String;
    .restart local v10       #recordhintValue:Ljava/lang/String;
    .restart local v13       #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #vstabSupported:Ljava/lang/String;
    .restart local v15       #vstabValue:Ljava/lang/String;
    .restart local v17       #zoomStr:Ljava/lang/String;
    .restart local v18       #zoomSupported:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "video-stabilization"

    const-string v21, "false"

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2618
    .end local v10           #recordhintValue:Ljava/lang/String;
    .end local v14           #vstabSupported:Ljava/lang/String;
    .end local v15           #vstabValue:Ljava/lang/String;
    .restart local v7       #pictureSize:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    .line 2619
    .local v11, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v7, v11, v0}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_3
.end method

.method private setCameraUIButControlBar(I)V
    .locals 2
    .parameter "visiable"

    .prologue
    const/4 v1, 0x0

    .line 1175
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVisibility(I)V

    .line 1176
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 1179
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1182
    :cond_0
    return-void
.end method

.method private setControlBarVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 962
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 963
    .local v0, controlBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    :cond_0
    return-void
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 968
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 969
    .local v0, flashSwitchIcon:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 972
    :cond_0
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/Review;->setOrientationEx(I)V

    .line 1062
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    .line 1063
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1064
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1065
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1068
    :cond_1
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_5

    .line 1069
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1070
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_2

    .line 1073
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 1082
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1083
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 1086
    :cond_5
    return-void
.end method

.method private setOrientationVidoInvokeAfterCapture(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x5e

    .line 1021
    const v4, 0x7f08009a

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 1022
    .local v2, rotateLineayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    if-nez v2, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1025
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1026
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1027
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1028
    .local v1, height:I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1030
    .local v3, width:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1045
    :sswitch_0
    invoke-virtual {v2, v3, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 1046
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 1039
    :sswitch_1
    invoke-virtual {v2, v1, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 1040
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 1030
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1509
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1521
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1519
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 977
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2284
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 2285
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v3, :cond_1

    .line 2286
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-eqz v3, :cond_0

    .line 2287
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 2289
    :cond_0
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2290
    const v3, 0x7f080013

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2291
    .local v2, videoRootView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2292
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001f

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2293
    .local v1, videoInvokeBarPort:Landroid/view/View;
    const v3, 0x7f08009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2294
    const v3, 0x7f08009c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2295
    const v3, 0x7f08009d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2296
    const v3, 0x7f08009e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    const v3, 0x7f08009a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2298
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 2299
    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    .line 2301
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #videoInvokeBarPort:Landroid/view/View;
    .end local v2           #videoRootView:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 525
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 3

    .prologue
    .line 2764
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v2, "pref_video_gps_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 2765
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 2766
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2767
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 2768
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2769
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 2772
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 2773
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2774
    .local v0, cameraRootView:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/VideoCamera$7;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/VideoCamera$7;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-string v3, "pref_video_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2792
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2793
    return-void
.end method

.method private showPhoneStorageHint(J)V
    .locals 7
    .parameter "internalCardAvailableSpace"

    .prologue
    .line 1326
    const/4 v2, 0x0

    .line 1327
    .local v2, isSDCardAvailable:Z
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 1328
    .local v0, SDCardStorageSpace:J
    const-wide/32 v5, 0x1400000

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1329
    const/4 v2, 0x1

    .line 1332
    :cond_0
    const/4 v3, 0x0

    .line 1333
    .local v3, isStorageChange:Z
    const/4 v4, 0x0

    .line 1334
    .local v4, toastText:Ljava/lang/String;
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 1336
    const/4 v3, 0x0

    .line 1337
    const v5, 0x7f0c011c

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1353
    :goto_0
    if-eqz v4, :cond_1

    .line 1354
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 1357
    :cond_1
    if-eqz v3, :cond_2

    .line 1358
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1360
    :cond_2
    return-void

    .line 1338
    :cond_3
    const-wide/16 v5, -0x2

    cmp-long v5, v0, v5

    if-nez v5, :cond_4

    .line 1340
    const/4 v3, 0x0

    .line 1341
    const v5, 0x7f0c011e

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1344
    :cond_4
    if-eqz v2, :cond_5

    .line 1345
    const/4 v3, 0x1

    .line 1346
    const v5, 0x7f0c0121

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1348
    :cond_5
    const/4 v3, 0x0

    .line 1349
    const v5, 0x7f0c0120

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private showSDCardStorageHint(J)V
    .locals 7
    .parameter "SDCardAvailableSpace"

    .prologue
    .line 1279
    const/4 v3, 0x0

    .line 1280
    .local v3, isPhoneAvalilable:Z
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 1281
    .local v0, InternalStorageSpace:J
    const-wide/32 v5, 0x1400000

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1282
    const/4 v3, 0x1

    .line 1285
    :cond_0
    const/4 v2, 0x0

    .line 1286
    .local v2, isChangeStorage:Z
    const/4 v4, 0x0

    .line 1287
    .local v4, toastText:Ljava/lang/String;
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    .line 1289
    if-eqz v3, :cond_3

    .line 1290
    const/4 v2, 0x1

    .line 1291
    const v5, 0x7f0c011b

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1316
    :goto_0
    if-eqz v4, :cond_1

    .line 1317
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 1320
    :cond_1
    if-eqz v2, :cond_2

    .line 1321
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 1323
    :cond_2
    return-void

    .line 1293
    :cond_3
    const/4 v2, 0x0

    .line 1294
    const v5, 0x7f0c011c

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1296
    :cond_4
    const-wide/16 v5, -0x2

    cmp-long v5, p1, v5

    if-nez v5, :cond_6

    .line 1298
    if-eqz v3, :cond_5

    .line 1299
    const/4 v2, 0x1

    .line 1300
    const v5, 0x7f0c011d

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1302
    :cond_5
    const/4 v2, 0x0

    .line 1303
    const v5, 0x7f0c011e

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1307
    :cond_6
    if-eqz v3, :cond_7

    .line 1308
    const/4 v2, 0x1

    .line 1309
    const v5, 0x7f0c011f

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1311
    :cond_7
    const/4 v2, 0x0

    .line 1312
    const v5, 0x7f0c0120

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private showStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    .line 1272
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showPhoneStorageHint(J)V

    goto :goto_0
.end method

.method private showStorageHintEx(Z)V
    .locals 2
    .parameter "isStorageInSDCard"

    .prologue
    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, storageText:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1254
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    const v1, 0x7f0c0122

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1265
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1266
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1260
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    const v1, 0x7f0c0123

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1
.end method

.method private showVideoFrame()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2306
    const/4 v1, 0x0

    .line 2307
    .local v1, src:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2308
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2315
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 2318
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 2319
    .local v0, info:[Landroid/hardware/Camera$CameraInfo;
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v2, v0, v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_2

    .line 2320
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    neg-int v2, v2

    invoke-static {v1, v2, v4}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2324
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2325
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2326
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 2330
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    :goto_2
    return-void

    .line 2310
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 2311
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 2322
    .restart local v0       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    neg-int v2, v2

    invoke-static {v1, v2, v5}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 2328
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    goto :goto_2
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1119
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1524
    const-string v1, "videocamera"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    .line 1528
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-ne v1, v4, :cond_0

    .line 1529
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 1530
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1533
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 1534
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 1535
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    .line 1538
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V

    .line 1539
    const-string v1, "videocamera"

    const-string v2, "[Flow] Preview started!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 1541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1548
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    .line 1550
    return-void

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 1544
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x42b4

    const/4 v3, 0x0

    .line 2187
    const-string v1, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v1, v5, :cond_0

    .line 2273
    :goto_0
    return-void

    .line 2192
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2193
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 2196
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isStorageSpaceEnough()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2197
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2201
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2218
    :cond_3
    invoke-static {p0}, Lcom/android/hwcamera/Util;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 2220
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2242
    :goto_1
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    .line 2244
    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 2247
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2249
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 2269
    :goto_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2270
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 2271
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    .line 2272
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 2208
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeRecorder()V

    .line 2209
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_3

    .line 2210
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2230
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 2232
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2233
    :catch_0
    move-exception v0

    .line 2234
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2235
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 2237
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->lock()V

    goto :goto_0

    .line 2252
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 2256
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    mul-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/lit8 v2, v2, 0x9

    if-ne v1, v2, :cond_9

    .line 2257
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    if-nez v1, :cond_7

    .line 2258
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 2259
    :cond_7
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_8

    .line 2260
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 2262
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 2265
    :cond_9
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2
.end method

.method private startZoom(Z)V
    .locals 5
    .parameter "inOrOut"

    .prologue
    const/4 v4, 0x0

    .line 731
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isZooming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    if-eqz p1, :cond_3

    .line 736
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    if-gt v1, v2, :cond_2

    .line 737
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 749
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v1, :cond_5

    .line 750
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 751
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    .line 762
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomRatios:[F

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, zoomRatio_down:Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 739
    .end local v0           #zoomRatio_down:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 742
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 743
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 745
    :cond_4
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    goto :goto_1

    .line 753
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 754
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_2
.end method

.method private stopReviewIfNeed()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 483
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 489
    :cond_0
    return-void
.end method

.method private stopVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2372
    const-string v2, "videocamera"

    const-string v3, "stopVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 2374
    const/4 v1, 0x0

    .line 2377
    .local v1, shouldAddToMediaStoreNow:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2389
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2390
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 2398
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 2399
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 2400
    invoke-direct {p0, v5}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 2403
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    .line 2404
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 2405
    if-eqz v1, :cond_1

    .line 2406
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->addVideoToMediaStore()V

    .line 2410
    .end local v1           #shouldAddToMediaStoreNow:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2411
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 2413
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 2414
    return-void

    .line 2384
    .restart local v1       #shouldAddToMediaStoreNow:Z
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2385
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2386
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2387
    const/4 v1, 0x1

    goto :goto_0

    .line 2392
    :catch_0
    move-exception v0

    .line 2393
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "videocamera"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2394
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private superPanelInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2706
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 2707
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 2708
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoCaptureIntent(Z)V

    .line 2709
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoRecordQuality(Z)V

    .line 2711
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 2712
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 2713
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 2714
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2715
    .local v0, popSettings:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu(Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 2716
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 2717
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->initVideoSubPanel()V

    .line 2718
    return-void
.end method

.method private switchCameraId(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 2105
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 2106
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 2107
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2111
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 2112
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 2113
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_2

    .line 2114
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 2120
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 2122
    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 2124
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2125
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2127
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 2128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 2129
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    .line 2130
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    .line 2131
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 2133
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 2135
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    goto :goto_0

    .line 2116
    .end local v0           #recordLocation:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 2130
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private switchCameraInit()V
    .locals 2

    .prologue
    .line 869
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 870
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 871
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraRefresh()V

    .line 872
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$4;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    return-void
.end method

.method private switchCameraRefresh()V
    .locals 6

    .prologue
    const v5, 0x7f0c0014

    .line 889
    const v0, 0x7f02007e

    .line 890
    .local v0, switchCameraImageId:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_id_key"

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, switchCameraValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const v0, 0x7f02007e

    .line 897
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 898
    return-void

    .line 895
    :cond_0
    const v0, 0x7f02007f

    goto :goto_0
.end method

.method private switchToCameraMode()Z
    .locals 2

    .prologue
    .line 2633
    const-string v0, "videocamera"

    const-string v1, "[Flow] switchToCameraMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2637
    :goto_0
    return v0

    .line 2635
    :cond_1
    invoke-static {p0}, Lcom/android/hwcamera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 2636
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->finish()V

    .line 2637
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAndShowCurrentStorageHint()V
    .locals 7

    .prologue
    .line 1213
    const-wide/16 v1, 0x0

    .line 1214
    .local v1, storageAvailableSpace:J
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 1215
    .local v0, isCurrentSaveToSDCard:Z
    if-eqz v0, :cond_0

    .line 1216
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v1

    .line 1221
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1222
    const-string v3, "videocamera"

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

    .line 1227
    :goto_1
    return-void

    .line 1218
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v1

    goto :goto_0

    .line 1225
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_1
.end method

.method private updateAndShowStorageHint()V
    .locals 8

    .prologue
    .line 1230
    const/4 v0, 0x0

    .line 1231
    .local v0, isPriorSaveToSDCard:Z
    const-wide/16 v2, 0x0

    .line 1232
    .local v2, storageAvailableSpace:J
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_camera_save_location_key"

    const v6, 0x7f0c00d4

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, saveLocationValue:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1235
    const/4 v0, 0x0

    .line 1236
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v2

    .line 1242
    :goto_0
    const-wide/32 v4, 0x1400000

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 1243
    const-string v4, "videocamera"

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

    .line 1244
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->showStorageHintEx(Z)V

    .line 1249
    :goto_1
    return-void

    .line 1238
    :cond_0
    const/4 v0, 0x1

    .line 1239
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    goto :goto_0

    .line 1247
    :cond_1
    invoke-direct {p0, v0, v2, v3}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_1
.end method

.method private updateRecordingIndicator(Z)V
    .locals 3
    .parameter "showRecording"

    .prologue
    .line 2276
    if-eqz p1, :cond_0

    const v1, 0x7f020026

    .line 2279
    .local v1, drawableId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2280
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2281
    return-void

    .line 2276
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableId:I
    :cond_0
    const v1, 0x7f020027

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 15

    .prologue
    .line 2470
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v11, :cond_0

    .line 2509
    :goto_0
    return-void

    .line 2473
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2474
    .local v6, now:J
    iget-wide v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long v2, v6, v11

    .line 2478
    .local v2, delta:J
    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    const v12, 0xea60

    sub-int/2addr v11, v12

    int-to-long v11, v11

    cmp-long v11, v2, v11

    if-ltz v11, :cond_2

    const/4 v1, 0x1

    .line 2481
    .local v1, countdownRemainingTime:Z
    :goto_1
    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0x3e8

    rem-long v13, v2, v13

    sub-long v4, v11, v13

    .line 2483
    .local v4, next_update_delay:J
    if-eqz v1, :cond_3

    .line 2484
    const-wide/16 v11, 0x0

    iget v13, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v13, v13

    sub-long/2addr v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2485
    const-wide/16 v11, 0x3e7

    add-long/2addr v11, v2

    const-wide/16 v13, 0x3e8

    div-long v8, v11, v13

    .line 2489
    .local v8, seconds:J
    :goto_2
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v11, :cond_4

    .line 2490
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getTotalRecordingTime()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v10

    .line 2491
    .local v10, totalRecordingTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8, v9}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2496
    .end local v10           #totalRecordingTime:Ljava/lang/String;
    :goto_3
    iget-boolean v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v11, v1, :cond_1

    .line 2499
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 2501
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v1, :cond_5

    const v11, 0x7f090001

    :goto_4
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2504
    .local v0, color:I
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2507
    .end local v0           #color:I
    :cond_1
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2478
    .end local v1           #countdownRemainingTime:Z
    .end local v4           #next_update_delay:J
    .end local v8           #seconds:J
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2487
    .restart local v1       #countdownRemainingTime:Z
    .restart local v4       #next_update_delay:J
    :cond_3
    const-wide/16 v11, 0x3e8

    div-long v8, v2, v11

    .restart local v8       #seconds:J
    goto :goto_2

    .line 2493
    :cond_4
    iget-object v11, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v8, v9}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2501
    :cond_5
    const/high16 v11, 0x7f09

    goto :goto_4
.end method

.method private updateThumbnailButton()V
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;Z)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 2455
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_2

    .line 2456
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2460
    :goto_0
    return-void

    .line 2458
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updatesuperpanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2721
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-nez v0, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 2726
    :goto_0
    return-void

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private viewLastVideo()V
    .locals 7

    .prologue
    .line 2346
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v5, :cond_0

    .line 2369
    :goto_0
    return-void

    .line 2349
    :cond_0
    const/4 v2, 0x0

    .line 2350
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.cooliris.media.action.REVIEW"

    .line 2351
    .local v4, intentStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2352
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2353
    const-string v4, "com.android.camera.action.REVIEW"

    .line 2355
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2357
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2358
    :catch_0
    move-exception v1

    .line 2360
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v6}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2361
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 2364
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 2362
    :catch_1
    move-exception v0

    .line 2363
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v5, "videocamera"

    const-string v6, "review video fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2367
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v5, "videocamera"

    const-string v6, "Can\'t view last video."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2362
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #ex:Landroid/content/ActivityNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    .line 772
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_1

    .line 774
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 785
    :cond_0
    :goto_0
    return v2

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 778
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 780
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 0

    .prologue
    .line 2980
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 2971
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2972
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2973
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2974
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 2975
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1664
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_1

    .line 1666
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1670
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1671
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1672
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1675
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v3, :cond_3

    .line 1676
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1677
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1681
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_4

    .line 1682
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 1684
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_5

    .line 1685
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 1687
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1688
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 1698
    :goto_1
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1689
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1690
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_1

    .line 1692
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1693
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_1

    .line 1696
    :cond_8
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1132
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    .line 1133
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->hideAlert()V

    goto :goto_0

    .line 1136
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 1139
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1142
    :sswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 1146
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->viewLastVideo()V

    goto :goto_0

    .line 1130
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_4
        0x7f08009b -> :sswitch_2
        0x7f08009c -> :sswitch_1
        0x7f08009d -> :sswitch_0
        0x7f08009e -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 2652
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2653
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 542
    const-string v9, "videocamera"

    const-string v10, "[Flow] onCreate begin"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/hwcamera/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 546
    new-instance v9, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v9, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 547
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v9}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 548
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 550
    const-string v9, "ro.camera.show.eula"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 551
    const-string v9, "pref_eula"

    invoke-virtual {p0, v9, v11}, Lcom/android/hwcamera/VideoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 555
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v9

    iput v9, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    .line 556
    iget v9, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    add-int/lit8 v10, v10, -0x1

    if-le v9, v10, :cond_2

    .line 557
    iput v11, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 558
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v9, p0, v10}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 559
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v9, v10}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 563
    :goto_0
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v9}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 565
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 566
    new-instance v9, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v9, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 571
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/android/hwcamera/VideoCamera$2;

    invoke-direct {v9, p0}, Lcom/android/hwcamera/VideoCamera$2;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 599
    .local v4, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 600
    const-string v9, "videocamera"

    const-string v10, "[Flow] onCreate open camera"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 604
    .local v7, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 606
    .local v2, mode:I
    if-ne v2, v12, :cond_1

    .line 607
    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 608
    .local v8, winParams:Landroid/view/WindowManager$LayoutParams;
    const v9, 0x3f333333

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 609
    invoke-virtual {v7, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 613
    .end local v8           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 614
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 617
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 620
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->requestWindowFeature(I)Z

    .line 621
    const v9, 0x7f03001e

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->setContentView(I)V

    .line 623
    const v9, 0x7f080009

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 625
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 627
    const v9, 0x7f08000a

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceView;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    .line 628
    const v9, 0x7f080095

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 633
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 634
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 635
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 637
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 638
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.intent.extra.quickCapture"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    .line 639
    const v9, 0x7f080099

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 640
    const v9, 0x7f080096

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 642
    const v9, 0x7f080013

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 643
    .local v5, videoRootView:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 644
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v9, :cond_3

    .line 645
    const/high16 v9, 0x7f03

    invoke-virtual {v1, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 659
    :goto_1
    const v9, 0x7f080007

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/hwcamera/ShutterButton;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 660
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v10, 0x7f020026

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 661
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v9, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 662
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v9}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    .line 664
    new-instance v9, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v9, p0, p0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    .line 668
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 669
    iget-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v9, :cond_4

    .line 670
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_2
    return-void

    .line 561
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #mode:I
    .end local v4           #startPreviewThread:Ljava/lang/Thread;
    .end local v5           #videoRootView:Landroid/view/ViewGroup;
    .end local v7           #win:Landroid/view/Window;
    :cond_2
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v9, p0, v10}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 647
    .restart local v0       #holder:Landroid/view/SurfaceHolder;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #mode:I
    .restart local v4       #startPreviewThread:Ljava/lang/Thread;
    .restart local v5       #videoRootView:Landroid/view/ViewGroup;
    .restart local v7       #win:Landroid/view/Window;
    :cond_3
    const v9, 0x7f030002

    invoke-virtual {v1, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 648
    const v9, 0x7f08001b

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/RotateImageView;

    .line 649
    .local v6, videoSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    const v9, 0x7f020024

    invoke-virtual {v6, v9}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 651
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initThumbnailButton()V

    .line 652
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v9, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    const v9, 0x7f080019

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/hwcamera/Switcher;

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 655
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v9, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 656
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v10, 0x7f080018

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    goto :goto_1

    .line 673
    .end local v6           #videoSwitchIcon:Lcom/android/hwcamera/RotateImageView;
    :catch_0
    move-exception v9

    .line 677
    :cond_4
    const v9, 0x7f080004

    invoke-virtual {p0, v9}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mControlBar:Landroid/view/View;

    .line 678
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x7f04

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    .line 679
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarAnim:Landroid/view/animation/Animation;

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 680
    new-instance v9, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    .line 683
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->saveLocationInit()V

    .line 684
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    .line 685
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeInit()V

    .line 686
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraInit()V

    .line 687
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeZoom()V

    .line 689
    new-instance v9, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v10, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v9, p0, v10}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 691
    const-string v9, "ro.camera.shuttersound"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 692
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v10, "pref_video_shutter_sound_key"

    const-string v11, "on"

    invoke-virtual {v9, v10, v11}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, shutterSound:Ljava/lang/String;
    const-string v9, "videocamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "silent Option:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v9}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v9

    const-string v10, "off"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 699
    .end local v3           #shutterSound:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "ro.config.hw_videocamera_caf"

    invoke-static {v9, v10, v12}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    .line 702
    const-string v9, "videocamera"

    const-string v10, "[Flow] onCreate end"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1811
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1813
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1815
    const/4 v0, 0x0

    .line 1819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 1112
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 1113
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2155
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2157
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 2158
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 2160
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 2164
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2165
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2168
    const v0, 0x7f0c009c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2170
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1704
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return v0

    .line 1708
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1745
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1710
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1711
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1716
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1717
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    goto :goto_0

    .line 1722
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1728
    :sswitch_3
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v1, v0, :cond_0

    .line 1731
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->startZoom(Z)V

    goto :goto_0

    .line 1737
    :sswitch_4
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v1, v0, :cond_0

    .line 1740
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->startZoom(Z)V

    goto :goto_0

    .line 1708
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1750
    packed-switch p1, :pswitch_data_0

    .line 1755
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1752
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    .line 1753
    const/4 v0, 0x1

    goto :goto_0

    .line 1750
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1599
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onPause begin screenChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 1602
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1606
    :cond_0
    iput-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 1607
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 1609
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v4, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1610
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 1613
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 1614
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 1617
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1621
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1623
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetScreenOn()V

    .line 1625
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1626
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "last_video_thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Thumbnail;->saveTo(Ljava/io/File;)V

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_4

    .line 1631
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 1632
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 1634
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v5, :cond_5

    .line 1635
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 1636
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    if-nez v0, :cond_5

    .line 1637
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 1638
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 1639
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1643
    :cond_5
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_6

    .line 1644
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    .line 1646
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_7

    .line 1647
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 1649
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_8

    .line 1650
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 1652
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 1653
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1654
    const-string v0, "videocamera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1436
    const-string v1, "videocamera"

    const-string v2, "[Flow] onResume begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 1442
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 1443
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v1, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 1448
    iput v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 1449
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 1450
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1451
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1453
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    .line 1456
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 1457
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1458
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 1459
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1460
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v1, :cond_3

    .line 1461
    const-string v1, "videocamera"

    const-string v2, "onResume restart preview begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 1466
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1467
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 1473
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_gps_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1475
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1480
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1481
    const-string v1, "videocamera"

    const-string v2, "[Flow] onResume end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 1189
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1210
    :goto_0
    return-void

    .line 1191
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    const-string v0, "videocamera"

    const-string v1, "camera onPause 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    goto :goto_0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1196
    const-string v0, "videocamera"

    const-string v1, "camera onPause2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 1200
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1205
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1203
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startVideoRecording()V

    goto :goto_1

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x7f080007
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1153
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1090
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 1092
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1093
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1097
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 1100
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1105
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 1106
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1107
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter "source"
    .parameter "onOff"

    .prologue
    const/4 v0, 0x1

    .line 2641
    if-ne p2, v0, :cond_0

    .line 2642
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "cameratag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 2646
    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3010
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v1, v0, :cond_1

    .line 3011
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3012
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3016
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1659
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 1660
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 1661
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1426
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 1427
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    if-eqz v0, :cond_0

    .line 1428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->screenChange:Z

    .line 1429
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->onResume()V

    .line 1431
    :cond_0
    return-void
.end method

.method public setCameraUI(I)V
    .locals 1
    .parameter "visiable"

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 1185
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter "hasSignal"

    .prologue
    const v5, 0x7f080032

    const v4, 0x7f080031

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2953
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    .line 2954
    .local v0, gpsSingnal:Landroid/widget/ImageView;
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 2955
    if-eqz p1, :cond_0

    .line 2956
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 2957
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2958
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2959
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    :goto_0
    return-void

    .line 2961
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2962
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2963
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2964
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1760
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1761
    const-string v0, "videocamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1766
    iput p3, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceWidth:I

    .line 1767
    iput p4, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHeight:I

    .line 1769
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1789
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1793
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V

    .line 1795
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v0, :cond_0

    .line 1796
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1802
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1806
    return-void
.end method
