.class public Lcom/android/hwcamera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# static fields
.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final STATE_CONFIGURE:I = 0x0

.field private static final STATE_PREVIEW:I = 0x3

.field private static final STATE_RECORD:I = 0x4

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_STARTING_PREVIEW:I = 0x2

.field private static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "effectsrecorder"

.field private static final mVideoRecordSound:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordSound:Lcom/android/hwcamera/SoundPlayer;

.field private mReleased:Z

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D

    .line 92
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxFileSize:J

    .line 94
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxDurationMs:I

    .line 95
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    .line 97
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    .line 98
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 119
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 121
    const-string v0, "effectsrecorder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    return-void
.end method
