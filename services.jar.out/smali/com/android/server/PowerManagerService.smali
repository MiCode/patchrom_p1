.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$BrightnessState;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;,
        Lcom/android/server/PowerManagerService$ShutdownReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ALL_BRIGHT:I = 0xf

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0xf

.field static final ANIM_STEPS_ACCELERATED:I = 0x2

.field private static final AUTO_ADJUST_SCREEN_POWER_OFF:I = 0x0

.field private static final AUTO_ADJUST_SCREEN_POWER_ON:I = 0x1

.field private static final AUTO_ADJUST_SCREEN_POWER_STATE:Ljava/lang/String; = "auto_adjust_screen_power_state"

.field private static final AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR_OFF:I = 0x0

.field private static final AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR_STATE:Ljava/lang/String; = "auto_strengthen_gallery_image_color_state"

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final KEY_AUTO_STRENGTHEN_GALLERY_IMAGE_COLOR:Ljava/lang/String; = "auto_strengthen_gallery_image_color"

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0x1388

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static LIGHT_SENSOR_STATUS:Z = false

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = false

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field private static final MMITESTNAME:Ljava/lang/String; = "MMITEST2"

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x1f4

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final RING_BIT:I = 0x20

.field private static final RING_SCREEN_BUTTON_BRIGHT:I = 0x27

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final SHUTDOWN_WAIT_CHARGERSHOW_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final UNSUPPORT_ACL:I = 0x4

.field private static final isProximitySensorAccelerated:Z

.field private static final mDebugLightSensor:Z

.field private static final mDebugProximitySensor:Z

.field private static final mSpew:Z


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field private bCanShowAnimate:Z

.field private mActivityService:Landroid/app/IActivityManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessAnimSteps:I

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootCompleted:Z

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightOffDelay:I

.field private mButtonBrightOffFlag:Z

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mContext:Landroid/content/Context;

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mFastPowrLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialized:Z

.field private mIsDocked:Z

.field private mIsPowered:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdBacklightValuesDown:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorButtonBrightness:I

.field private mLightSensorCriticalValues:[I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorLastValueTemp:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorValue:F

.field private mLightSensorValueTemp:I

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mMMITestStart:Z

.field private mMaximumScreenOffTimeout:I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mPartialCount:I

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximityScreenOff:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private mRingStart:Z

.field private final mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessOverride:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffThread:Landroid/os/HandlerThread;

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mSkippedScreenOn:Z

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field mUnplugTurnsOnScreen:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserState:I

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    sput-boolean v1, Lcom/android/server/PowerManagerService;->LIGHT_SENSOR_STATUS:Z

    .line 141
    const-string v0, "ro.config.hw_proximity"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PowerManagerService;->isProximitySensorAccelerated:Z

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/high16 v7, -0x4080

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 640
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 147
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 183
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 224
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 225
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 226
    iput v4, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 227
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 228
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 229
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 230
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 231
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 232
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 238
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 239
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 240
    iput v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 241
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 242
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 245
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximityScreenOff:Z

    .line 247
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 250
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 255
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 258
    new-instance v2, Lcom/android/server/PowerManagerService$LockList;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 283
    new-instance v2, Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 284
    new-instance v2, Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/PowerManagerService$BrightnessState;-><init>(Lcom/android/server/PowerManagerService;I)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    .line 287
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 295
    iput v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 296
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 297
    iput v5, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 298
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 299
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 300
    iput v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 301
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 302
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 303
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 304
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 305
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 307
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 308
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 309
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 310
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 314
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 315
    iput v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 322
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    .line 333
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 368
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    .line 369
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mRingStart:Z

    .line 371
    const/16 v2, 0x1770

    iput v2, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    .line 373
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z

    .line 374
    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I

    .line 1639
    new-instance v2, Lcom/android/server/PowerManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 1654
    new-instance v2, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 1733
    new-instance v2, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1744
    new-instance v2, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 1911
    new-instance v2, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 2810
    new-instance v2, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 2824
    new-instance v2, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 3558
    new-instance v2, Lcom/android/server/PowerManagerService$13;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3602
    new-instance v2, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v2, p0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 643
    .local v0, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 644
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 648
    const-wide/32 v2, 0x240c8400

    invoke-static {v2, v3}, Landroid/os/Power;->setLastUserActivityTimeout(J)I

    .line 651
    iput v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v4, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 654
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 655
    return-void

    .line 227
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$1976(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    return-void
.end method

.method static synthetic access$5300()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/server/PowerManagerService;->LIGHT_SENSOR_STATUS:Z

    return v0
.end method

.method static synthetic access$5302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/server/PowerManagerService;->LIGHT_SENSOR_STATUS:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$6702(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    return v0
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method private applyButtonState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2574
    const/4 v0, -0x1

    .line 2575
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2589
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2579
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 2580
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2584
    :cond_2
    :goto_1
    if-lez v0, :cond_4

    .line 2585
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 2581
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 2582
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    goto :goto_1

    .line 2586
    :cond_4
    if-nez v0, :cond_0

    .line 2587
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 2
    .parameter "state"

    .prologue
    .line 2594
    const/4 v0, -0x1

    .line 2595
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 2611
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2599
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 2600
    const/4 v0, 0x0

    .line 2606
    :cond_2
    :goto_1
    if-lez v0, :cond_5

    .line 2607
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 2601
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 2602
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 2603
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 2604
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    goto :goto_1

    .line 2608
    :cond_5
    if-nez v0, :cond_0

    .line 2609
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2184
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1507
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1508
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3454
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 3456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3458
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3459
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3460
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3461
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3463
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3467
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 3468
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3473
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_1

    .line 3474
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3478
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 3465
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2838
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2839
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 2840
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_0

    .line 2841
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2843
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2845
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 2846
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2847
    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 2849
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 2850
    return-void

    .line 2839
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2849
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private enableLightSensorLocked(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 3535
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v2, p1, :cond_0

    .line 3536
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 3539
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 3540
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3545
    .local v0, identity:J
    if-eqz p1, :cond_1

    .line 3546
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const v5, 0xf4240

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3553
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3556
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 3549
    .restart local v0       #identity:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3550
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3553
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 3430
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 3432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3435
    .local v0, identity:J
    :try_start_0
    sget-boolean v2, Lcom/android/server/PowerManagerService;->isProximitySensorAccelerated:Z

    if-eqz v2, :cond_1

    .line 3436
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3443
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3448
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 3439
    .restart local v0       #identity:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3445
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 1893
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 1894
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :goto_0
    return-void

    .line 1906
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2647
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput-boolean v3, v1, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 2651
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2652
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 2654
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 2655
    return-void
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 4
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 2765
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2766
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    .line 2772
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    if-eqz v2, :cond_1

    .line 2773
    const/4 v1, 0x0

    .line 2776
    :cond_1
    aget v2, p2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2780
    :goto_1
    return v2

    .line 2765
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2777
    :catch_0
    move-exception v0

    .line 2779
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "getAutoBrightnessValue"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2780
    const/16 v2, 0xff

    goto :goto_1
.end method

.method private getCriticalLuxValue(I)I
    .locals 4
    .parameter "sensorValue"

    .prologue
    .line 2790
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    if-eqz v2, :cond_1

    .line 2791
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorCriticalValues:[I

    const/4 v3, 0x0

    aget p1, v2, v3

    .line 2805
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 2795
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorCriticalValues:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2796
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorCriticalValues:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    .line 2797
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorCriticalValues:[I

    aget p1, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2795
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2800
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 2802
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerManagerService"

    const-string v3, "getCriticalLuxValue"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPreferredBrightness()I
    .locals 4

    .prologue
    .line 2558
    :try_start_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v2, :cond_0

    .line 2559
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2569
    :goto_0
    return v2

    .line 2560
    :cond_0
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v2, :cond_1

    .line 2562
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 2564
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2567
    .local v0, brightness:I
    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2568
    .end local v0           #brightness:I
    :catch_0
    move-exception v1

    .line 2569
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    goto :goto_0
.end method

.method private goToSleepLocked(JI)V
    .locals 9
    .parameter "time"
    .parameter "reason"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3017
    iget-wide v5, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_4

    .line 3018
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3020
    iput v7, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3021
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 3022
    .local v0, N:I
    const/4 v2, 0x0

    .line 3023
    .local v2, numCleared:I
    const/4 v3, 0x0

    .line 3024
    .local v3, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3025
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 3026
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3027
    iget v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v5, v5, 0x3f

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    const/4 v5, 0x4

    if-ne p3, v5, :cond_1

    .line 3029
    const/4 v3, 0x1

    .line 3024
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3031
    :cond_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v7, v5, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 3032
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3036
    .end local v4           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    if-nez v3, :cond_3

    .line 3037
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 3042
    :cond_3
    const/16 v5, 0xaa4

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3043
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 3044
    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3045
    invoke-direct {p0, v7, v7, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3046
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 3048
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v3           #proxLock:Z
    :cond_4
    return-void
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 900
    and-int/lit8 v0, p1, 0x3f

    .line 901
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(I)V
    .locals 8
    .parameter "value"

    .prologue
    .line 2858
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2866
    :cond_1
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getCriticalLuxValue(I)I

    move-result v1

    .line 2874
    .local v1, criticalValue:I
    iget v4, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    if-ge v4, v1, :cond_2

    .line 2875
    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 2878
    :cond_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 2879
    int-to-float v4, v1

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2880
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_0

    .line 2891
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    if-lt v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v3

    .line 2895
    .local v3, lcdValue:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, v1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 2897
    .local v0, buttonValue:I
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v4, :cond_6

    .line 2898
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, v1, v4}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 2902
    .local v2, keyboardValue:I
    :goto_2
    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 2903
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 2904
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 2907
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorLastValueTemp:I

    .line 2916
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v4, :cond_3

    .line 2918
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v4, :cond_3

    .line 2920
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/PowerManagerService;->LIGHT_SENSOR_STATUS:Z

    .line 2922
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAnimSteps:I

    const/16 v6, 0xff

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget v7, v7, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v7, v7

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 2934
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v4, :cond_0

    .line 2935
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 2891
    .end local v0           #buttonValue:I
    .end local v2           #keyboardValue:I
    .end local v3           #lcdValue:I
    :cond_5
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    goto :goto_1

    .line 2900
    .restart local v0       #buttonValue:I
    .restart local v3       #lcdValue:I
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #keyboardValue:I
    goto :goto_2
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1290
    sparse-switch p0, :sswitch_data_0

    .line 1303
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1293
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1295
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1297
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1299
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1301
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1290
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private native nativeInit()V
.end method

.method private native nativeSetAcl(I)I
.end method

.method private native nativeSetCpuFreqOptimize(Z)I
.end method

.method private native nativeSetCpuFreqRestrict(ZI)I
.end method

.method private native nativeSetGoHispeedLoad(I)I
.end method

.method private native nativeSetHispeedFreq(I)I
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private proximityChangedLocked(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3484
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 3485
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_0
    :goto_0
    return-void

    .line 3488
    :cond_1
    if-eqz p1, :cond_3

    .line 3493
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_2

    .line 3495
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximityScreenOff:Z

    .line 3497
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 3500
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 3505
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3510
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 3512
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximityScreenOff:Z

    .line 3514
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 3517
    :cond_4
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_0

    .line 3519
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 9
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v5, 0x0

    .line 1145
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v8

    .line 1146
    .local v8, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v8, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    const-string v1, "MMITEST2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    .line 1159
    :cond_1
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1160
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1161
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1162
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_2

    .line 1163
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1190
    :cond_2
    :goto_1
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v8, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1192
    iget-object v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v8, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1170
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1174
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1176
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 1179
    :cond_5
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .line 1182
    :cond_6
    iget v0, v8, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1183
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1184
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_2

    .line 1186
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Landroid/os/Power;->releaseWakeLock(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2172
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2175
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2176
    .local v0, err:I
    if-nez v0, :cond_0

    .line 2177
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2178
    invoke-direct {p0, v6, p1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2180
    :cond_0
    return v0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 8
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v7, 0xaa7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1561
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    if-nez p1, :cond_2

    .line 1578
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 1582
    :cond_2
    const/4 v0, 0x0

    .line 1583
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v5, :cond_3

    .line 1584
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1586
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 1587
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 1596
    if-ne v0, v6, :cond_5

    .line 1599
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 1600
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 1602
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 1603
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1604
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v6

    .line 1605
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1606
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1607
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1608
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1609
    const/4 v0, 0x0

    .line 1611
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 1612
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v3

    .line 1613
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v5, v1, v2

    .line 1614
    const/4 v0, -0x1

    .line 1617
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1618
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1623
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    .line 1624
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1628
    :cond_7
    if-ltz v0, :cond_0

    .line 1633
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1634
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1635
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1586
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 1602
    goto/16 :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 2385
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 2388
    .local v0, brightnessMode:I
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2403
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 2404
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, p2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2406
    :cond_1
    return-void

    .line 2385
    .end local v0           #brightnessMode:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPowerState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1963
    const-string v1, "true"

    const-string v2, "ro.config.hw_quickpoweron"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1964
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1966
    const-string v1, "persist.sys.quickpoweron"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, statePower:Ljava/lang/String;
    const-string v1, "shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->bCanShowAnimate:Z

    if-nez v1, :cond_0

    .line 1982
    .end local v0           #statePower:Ljava/lang/String;
    :goto_0
    return-void

    .line 1971
    .restart local v0       #statePower:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    goto :goto_0

    .line 1976
    .end local v0           #statePower:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    goto :goto_0

    .line 1979
    :cond_2
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    goto :goto_0
.end method

.method private setPowerState(IZI)V
    .locals 17
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 1986
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 1996
    if-eqz p2, :cond_0

    .line 1997
    and-int/lit8 v11, p1, -0xf

    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v13, v13, 0xe

    or-int p1, v11, v13

    .line 1999
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v11, :cond_1

    .line 2001
    and-int/lit8 p1, p1, -0x4

    .line 2004
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2005
    or-int/lit8 p1, p1, 0x10

    .line 2011
    :goto_0
    const-string v11, "true"

    const-string v13, "ro.config.hw_quickpoweron"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2012
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->bCanShowAnimate:Z

    if-nez v11, :cond_4

    .line 2014
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v11, :cond_4

    .line 2015
    monitor-exit v12

    .line 2160
    :goto_1
    return-void

    .line 2007
    :cond_2
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 2019
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v11, :cond_4

    .line 2020
    monitor-exit v12

    goto :goto_1

    .line 2159
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 2024
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v11, :cond_5

    .line 2025
    or-int/lit8 p1, p1, 0xf

    .line 2028
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_b

    const/4 v7, 0x1

    .line 2029
    .local v7, oldScreenOn:Z
    :goto_2
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_c

    const/4 v6, 0x1

    .line 2046
    .local v6, newScreenOn:Z
    :goto_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v11, v0, :cond_d

    const/4 v9, 0x1

    .line 2048
    .local v9, stateChanged:Z
    :goto_4
    if-eq v7, v6, :cond_12

    .line 2049
    if-eqz v6, :cond_f

    .line 2054
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    if-eqz v11, :cond_6

    .line 2055
    const/4 v11, 0x0

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2063
    :cond_6
    const/4 v8, 0x1

    .line 2069
    .local v8, reallyTurnScreenOn:Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v11, :cond_7

    .line 2073
    const/4 v8, 0x0

    .line 2076
    :cond_7
    const-string v11, "true"

    const-string v13, "ro.config.hw_quickpoweron"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2077
    const-string v11, "persist.sys.quickpoweron"

    const-string v13, "normal"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2078
    .local v10, statePower:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2080
    const-string v11, "shutdown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/PowerManagerService;->bCanShowAnimate:Z

    if-nez v11, :cond_8

    .line 2082
    const-string v11, "PowerManagerService"

    const-string v13, "setPowerState reallyTurnScreenOn false"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const/4 v8, 0x0

    .line 2088
    .end local v10           #statePower:Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_e

    .line 2089
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v3

    .line 2090
    .local v3, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 2092
    .local v4, identity:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v13

    invoke-interface {v11, v13}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2097
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    .end local v4           #identity:J
    :goto_5
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2106
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2107
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2108
    const/16 v11, 0xaa8

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2110
    if-nez v3, :cond_a

    .line 2111
    const/4 v11, 0x1

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2116
    if-eqz v9, :cond_9

    .line 2117
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2119
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2156
    .end local v3           #err:I
    .end local v8           #reallyTurnScreenOn:Z
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, -0xf

    and-int/lit8 v13, p1, 0xe

    or-int/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2158
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2159
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2028
    .end local v6           #newScreenOn:Z
    .end local v7           #oldScreenOn:Z
    .end local v9           #stateChanged:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2029
    .restart local v7       #oldScreenOn:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2046
    .restart local v6       #newScreenOn:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2094
    .restart local v3       #err:I
    .restart local v4       #identity:J
    .restart local v8       #reallyTurnScreenOn:Z
    .restart local v9       #stateChanged:Z
    :catch_0
    move-exception v2

    .line 2095
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v11, "PowerManagerService"

    const-string v13, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v11, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2097
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 2100
    .end local v3           #err:I
    .end local v4           #identity:J
    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2102
    const/4 v3, 0x0

    .restart local v3       #err:I
    goto/16 :goto_5

    .line 2125
    .end local v3           #err:I
    .end local v8           #reallyTurnScreenOn:Z
    :cond_f
    if-eqz v9, :cond_10

    .line 2126
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2130
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v11, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2131
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2132
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    .line 2136
    .restart local v4       #identity:J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2140
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    :goto_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, -0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2143
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iget-boolean v11, v11, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v11, :cond_11

    .line 2145
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    .restart local v3       #err:I
    goto/16 :goto_6

    .line 2137
    .end local v3           #err:I
    :catch_1
    move-exception v2

    .line 2138
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v11, "PowerManagerService"

    const-string v13, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v11, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2140
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 2147
    :cond_11
    const/4 v3, 0x0

    .line 2148
    .restart local v3       #err:I
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto/16 :goto_6

    .line 2151
    .end local v3           #err:I
    .end local v4           #identity:J
    :cond_12
    if-eqz v9, :cond_a

    .line 2153
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6
.end method

.method private setScreenBrightnessMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 3117
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3118
    if-ne p1, v0, :cond_1

    .line 3119
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v1, v0, :cond_0

    .line 3120
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 3124
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3127
    :cond_0
    monitor-exit v2

    .line 3128
    return-void

    .line 3118
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3127
    .restart local v0       #enabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3136
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 3137
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3138
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3139
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3173
    :goto_0
    return-void

    .line 3140
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 3141
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3142
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3143
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3145
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 3146
    .local v0, totalDelay:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_2

    .line 3147
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 3149
    :cond_2
    const/16 v1, 0x1770

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 3150
    if-gez v0, :cond_3

    .line 3152
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 3161
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x32c8

    if-lt v0, v1, :cond_5

    .line 3162
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 3163
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 3153
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_4

    .line 3157
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3159
    :cond_4
    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_1

    .line 3165
    :cond_5
    iput v2, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto :goto_0
.end method

.method private setScreenStateLocked(Z)I
    .locals 3
    .parameter "on"

    .prologue
    .line 1923
    if-eqz p1, :cond_1

    .line 1924
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 1937
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->forceValueLocked(I)V

    .line 1940
    :cond_1
    invoke-static {p1}, Landroid/os/Power;->setScreenState(Z)I

    move-result v0

    .line 1941
    .local v0, err:I
    if-nez v0, :cond_2

    .line 1942
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 1943
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 1944
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 1945
    if-nez p1, :cond_2

    .line 1947
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1948
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1951
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 1953
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 1957
    :cond_2
    return v0

    .line 1942
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1422
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1423
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 9
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1429
    move-wide v0, p3

    .line 1430
    .local v0, timeoutOverride:J
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    .line 1431
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1432
    const-wide/16 v2, 0x0

    .line 1433
    .local v2, when:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1434
    sparse-switch p5, :sswitch_data_0

    .line 1462
    move-wide v2, p1

    .line 1493
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1494
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iput p5, v4, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1495
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    sub-long v4, p3, v0

    :goto_1
    iput-wide v4, v7, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1498
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1499
    iput-wide v2, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1500
    monitor-exit v6

    .line 1502
    .end local v2           #when:J
    :cond_0
    return-void

    .line 1438
    .restart local v2       #when:J
    :sswitch_0
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1439
    goto :goto_0

    .line 1441
    :sswitch_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    int-to-long v7, v7

    sub-long v2, v4, v7

    .line 1443
    goto :goto_0

    .line 1445
    :sswitch_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_1

    .line 1446
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1447
    goto :goto_0

    .line 1449
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDimDelay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " while trying to dim"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1453
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v7, v4

    add-long v2, p1, v7

    .line 1454
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1500
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1458
    :sswitch_4
    :try_start_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I

    int-to-long v4, v4

    add-long v2, p1, v4

    .line 1459
    goto :goto_0

    .line 1467
    :cond_2
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 1468
    add-long v2, p1, v0

    .line 1469
    const/4 p5, 0x0

    .line 1470
    goto :goto_0

    .line 1472
    :cond_3
    iget v4, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1474
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v4, :cond_5

    .line 1475
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    .line 1476
    add-long v2, p1, v0

    .line 1477
    const/4 p5, 0x1

    .line 1478
    goto/16 :goto_0

    .line 1480
    :cond_4
    iget v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 1483
    :cond_5
    add-long v2, p1, v0

    .line 1484
    const/4 p5, 0x3

    goto/16 :goto_0

    .line 1495
    :cond_6
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    .line 1434
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
        0x27 -> :sswitch_4
    .end sparse-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2189
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_1

    .line 2208
    :cond_0
    :goto_0
    return v1

    .line 2200
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2201
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2208
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2632
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2633
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 2634
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 2635
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2636
    monitor-exit v2

    .line 2641
    :goto_0
    return v0

    .line 2637
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 2638
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 2639
    monitor-exit v2

    goto :goto_0

    .line 2643
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2641
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private updateLightsLocked(II)V
    .locals 20
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2212
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2216
    .local v11, oldState:I
    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2220
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v18, :cond_1

    .line 2221
    and-int/lit8 p1, p1, -0x4

    .line 2225
    :cond_1
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_2

    .line 2231
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2233
    :cond_2
    xor-int v15, p1, v11

    .line 2234
    .local v15, realDifference:I
    or-int v5, v15, p2

    .line 2235
    .local v5, difference:I
    if-nez v5, :cond_4

    .line 2382
    :cond_3
    :goto_0
    return-void

    .line 2239
    :cond_4
    const/4 v10, 0x0

    .line 2240
    .local v10, offMask:I
    const/4 v6, 0x0

    .line 2241
    .local v6, dimMask:I
    const/4 v12, 0x0

    .line 2243
    .local v12, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v13

    .line 2245
    .local v13, preferredBrightness:I
    and-int/lit8 v18, v5, 0x8

    if-eqz v18, :cond_5

    .line 2246
    and-int/lit8 v18, p1, 0x8

    if-nez v18, :cond_f

    .line 2247
    or-int/lit8 v10, v10, 0x8

    .line 2263
    :cond_5
    :goto_1
    and-int/lit8 v18, v5, 0x3

    if-eqz v18, :cond_a

    .line 2264
    const/4 v9, -0x1

    .line 2270
    .local v9, nominalCurrentValue:I
    and-int/lit8 v18, v15, 0x3

    if-eqz v18, :cond_6

    .line 2271
    and-int/lit8 v18, v11, 0x3

    packed-switch v18, :pswitch_data_0

    .line 2284
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v9, v0

    .line 2288
    :cond_6
    :goto_2
    move v4, v13

    .line 2289
    .local v4, brightness:I
    const/16 v17, 0xf

    .line 2290
    .local v17, steps:I
    and-int/lit8 v18, p1, 0x2

    if-nez v18, :cond_9

    .line 2294
    const/high16 v16, 0x3fc0

    .line 2295
    .local v16, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 2296
    .local v14, ratio:F
    const/high16 v18, 0x3f80

    cmpl-float v18, v14, v18

    if-lez v18, :cond_7

    const/high16 v14, 0x3f80

    .line 2297
    :cond_7
    and-int/lit8 v18, p1, 0x1

    if-nez v18, :cond_11

    .line 2299
    const/16 v3, 0xf

    .line 2300
    .local v3, animStepsValue:I
    sget-boolean v18, Lcom/android/server/PowerManagerService;->isProximitySensorAccelerated:Z

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximityScreenOff:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 2301
    const/4 v3, 0x2

    .line 2303
    :cond_8
    and-int/lit8 v18, v11, 0x2

    if-eqz v18, :cond_10

    .line 2305
    move/from16 v17, v3

    .line 2311
    :goto_3
    const/4 v4, 0x0

    .line 2331
    .end local v3           #animStepsValue:I
    .end local v14           #ratio:F
    .end local v16           #scale:F
    :cond_9
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2333
    .local v7, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2339
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2, v9}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)V

    .line 2360
    .end local v4           #brightness:I
    .end local v7           #identity:J
    .end local v9           #nominalCurrentValue:I
    .end local v17           #steps:I
    :cond_a
    if-eqz v10, :cond_b

    .line 2362
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2364
    :cond_b
    if-eqz v6, :cond_d

    .line 2365
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2366
    .restart local v4       #brightness:I
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_c

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_c

    .line 2368
    const/16 v4, 0xa

    .line 2371
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2373
    .end local v4           #brightness:I
    :cond_d
    if-eqz v12, :cond_3

    .line 2374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    .line 2375
    .restart local v4       #brightness:I
    and-int/lit8 v18, p1, 0x10

    if-eqz v18, :cond_e

    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v4, v0, :cond_e

    .line 2377
    const/16 v4, 0xa

    .line 2380
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_0

    .line 2249
    .end local v4           #brightness:I
    :cond_f
    or-int/lit8 v12, v12, 0x8

    goto/16 :goto_1

    .line 2273
    .restart local v9       #nominalCurrentValue:I
    :pswitch_1
    move v9, v13

    .line 2274
    goto/16 :goto_2

    .line 2276
    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2277
    goto/16 :goto_2

    .line 2279
    :pswitch_3
    const/4 v9, 0x0

    .line 2280
    goto/16 :goto_2

    .line 2308
    .restart local v3       #animStepsValue:I
    .restart local v4       #brightness:I
    .restart local v14       #ratio:F
    .restart local v16       #scale:F
    .restart local v17       #steps:I
    :cond_10
    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v14

    const/high16 v19, 0x3fc0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_3

    .line 2313
    .end local v3           #animStepsValue:I
    :cond_11
    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_13

    .line 2315
    const/high16 v18, 0x4170

    const/high16 v19, 0x3f80

    sub-float v19, v19, v14

    mul-float v18, v18, v19

    const/high16 v19, 0x3fc0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2320
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 2326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2328
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_4

    .line 2318
    :cond_13
    const/high16 v18, 0x4170

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto :goto_6

    .line 2334
    .end local v14           #ratio:F
    .end local v16           #scale:F
    .restart local v7       #identity:J
    :catch_0
    move-exception v18

    .line 2337
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_0
    move-exception v18

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 2271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2163
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2166
    return-void

    :cond_0
    move v0, v2

    .line 2163
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 3185
    return-void
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 888
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    iget v1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 891
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 896
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 894
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZ)V
    .locals 11
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2696
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 2760
    :cond_0
    :goto_0
    return-void

    .line 2703
    :cond_1
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 2714
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2715
    const-string v1, "PowerManagerService"

    const-string v2, "ignoring user activity while turning off screen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    monitor-exit v10

    goto :goto_0

    .line 2755
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2720
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v1, :cond_3

    .line 2721
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 2723
    :cond_3
    iget-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_4

    if-eqz p7, :cond_7

    .line 2724
    :cond_4
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 2725
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v1, :cond_6

    :cond_5
    if-eqz p7, :cond_7

    .line 2728
    :cond_6
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-nez v1, :cond_9

    .line 2729
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xf

    :goto_1
    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 2735
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2736
    .local v9, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 2738
    .local v7, ident:J
    :try_start_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v1, v9, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2742
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2745
    :goto_3
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 2746
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    move/from16 v0, p5

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2749
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z

    .line 2750
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2751
    const/4 v6, 0x7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 2755
    .end local v7           #ident:J
    .end local v9           #uid:I
    :cond_7
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2757
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v1, :cond_0

    .line 2758
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_0

    .line 2729
    :cond_8
    const/4 v1, 0x7

    goto :goto_1

    .line 2732
    :cond_9
    :try_start_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto :goto_2

    .line 2739
    .restart local v7       #ident:J
    .restart local v9       #uid:I
    :catch_0
    move-exception v1

    .line 2742
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 917
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 918
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_0
    if-eqz p4, :cond_1

    .line 922
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 924
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 926
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 927
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 928
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 930
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    return-void

    .line 928
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 930
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 13
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 977
    const-string v2, "MMITEST2"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    .line 982
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 983
    const/16 p6, 0x0

    .line 986
    :cond_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, p2}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v9

    .line 991
    .local v9, index:I
    if-gez v9, :cond_b

    .line 992
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 993
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_0

    .line 1019
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_2
    :goto_0
    return-void

    .line 996
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v2, :cond_9

    .line 997
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 999
    const-string v2, "PhoneApp"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1000
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mRingStart:Z

    .line 1023
    :cond_3
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 1024
    if-eqz p6, :cond_4

    .line 1025
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1027
    :cond_4
    const/4 v10, 0x1

    .line 1028
    .local v10, newlock:Z
    const/4 v8, 0x0

    .line 1029
    .local v8, diffsource:Z
    const/4 v12, 0x0

    .line 1050
    .local v12, oldsource:Landroid/os/WorkSource;
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1055
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_f

    .line 1056
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1057
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1058
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1101
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 1104
    invoke-virtual {p0, v1, v12}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1106
    :cond_7
    if-nez v10, :cond_8

    if-eqz v8, :cond_2

    .line 1107
    :cond_8
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1004
    .end local v8           #diffsource:Z
    .end local v10           #newlock:Z
    .end local v12           #oldsource:Landroid/os/WorkSource;
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v2, :cond_a

    const/16 v2, 0xf

    :goto_4
    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    :cond_a
    const/4 v2, 0x7

    goto :goto_4

    .line 1008
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1011
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto :goto_1

    .line 1031
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_b
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v9}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1032
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v10, 0x0

    .line 1033
    .restart local v10       #newlock:Z
    iget-object v12, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1034
    .restart local v12       #oldsource:Landroid/os/WorkSource;
    if-eqz v12, :cond_d

    .line 1035
    if-nez p6, :cond_c

    .line 1036
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1037
    const/4 v8, 0x1

    .line 1046
    .restart local v8       #diffsource:Z
    :goto_5
    if-eqz v8, :cond_5

    .line 1047
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto :goto_2

    .line 1039
    .end local v8           #diffsource:Z
    :cond_c
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v8

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1041
    .end local v8           #diffsource:Z
    :cond_d
    if-eqz p6, :cond_e

    .line 1042
    const/4 v8, 0x1

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1044
    .end local v8           #diffsource:Z
    :cond_e
    const/4 v8, 0x0

    .restart local v8       #diffsource:Z
    goto :goto_5

    .line 1061
    :cond_f
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1062
    iget v11, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1063
    .local v11, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1067
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_10

    .line 1069
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1088
    .end local v11           #oldWakeLockState:I
    :cond_10
    :goto_6
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_3

    .line 1086
    :cond_11
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_6

    .line 1091
    :cond_12
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1092
    if-eqz v10, :cond_13

    .line 1093
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1094
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1098
    :cond_13
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Landroid/os/Power;->acquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 993
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public allowShowScreenWithDelay(Z)V
    .locals 7
    .parameter "prevent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3651
    const/4 v6, 0x0

    .line 3653
    .local v6, err:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3654
    const-string v0, "PowerManagerService"

    const-string v1, "remove seven seconds later turn off screen task when start power on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    if-eqz p1, :cond_0

    .line 3658
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->bCanShowAnimate:Z

    .line 3659
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mFastPowrLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 3660
    iput v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 3661
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 3669
    :goto_0
    return-void

    .line 3664
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3665
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mFastPowrLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 3666
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->bCanShowAnimate:Z

    goto :goto_0
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 3335
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 3337
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 3338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3339
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 3340
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3341
    monitor-exit v6

    .line 3342
    return-void

    .line 3341
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 8
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 2688
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    .line 2690
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2691
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 3003
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    new-instance v1, Lcom/android/server/PowerManagerService$12;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3009
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3013
    :goto_0
    return-void

    .line 3010
    :catch_0
    move-exception v0

    .line 3011
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1320
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 1322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1330
    .local v6, now:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 1331
    :try_start_0
    const-string v11, "Power Manager State:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mIsPowered="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPowerState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mScreenOffTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ms"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPartialCount="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1337
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mWakeLockState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mUserState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPowerState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLocks.gather="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v13}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mNextTimeout="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " now="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    sub-long/2addr v13, v6

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "s from now"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mDimScreen="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mStayOnConditions="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPreparingForScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mSkippedScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mScreenOffReason="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mUserState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastQueue={"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastWhy={"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x2c

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPokey="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mPokeAwakeonSet="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mKeyboardVisible="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mUserActivityAllowed="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mKeylightDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mDimDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mScreenOffDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPreventScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "  mScreenBrightnessOverride="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "  mButtonBrightnessOverride="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mScreenOffTimeoutSetting="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mMaximumScreenOffTimeout="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLastScreenOnTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mBroadcastWakeLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mStayOnWhilePluggedInScreenDimLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mStayOnWhilePluggedInPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mPreventScreenOnPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityPartialLock="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityWakeLockCount="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximitySensorEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximitySensorActive="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mProximityPendingValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLastProximityEventTime="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorPendingValue="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorPendingDecrease="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorPendingIncrease="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mLightSensorScreenBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorButtonBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mLightSensorKeyboardBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mUseSoftwareAutoBrightness="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mAutoBrightessEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    const-string v13, "  mScreenBrightness: "

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v13}, Lcom/android/server/PowerManagerService$BrightnessState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v11}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v1

    .line 1387
    .local v1, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1388
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLocks.size="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1390
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v11, v4}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1391
    .local v10, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v11, v11, 0x3f

    invoke-static {v11}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v9

    .line 1392
    .local v9, type:Ljava/lang/String;
    const-string v2, ""

    .line 1393
    .local v2, acquireCausesWakeup:Ljava/lang/String;
    iget v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v13, 0x1000

    and-int/2addr v11, v13

    if-eqz v11, :cond_1

    .line 1394
    const-string v2, "ACQUIRE_CAUSES_WAKEUP "

    .line 1396
    :cond_1
    const-string v3, ""

    .line 1397
    .local v3, activated:Ljava/lang/String;
    iget-boolean v11, v10, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v11, :cond_2

    .line 1398
    const-string v3, " activated"

    .line 1400
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " \'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " (minState="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", uid="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", pid="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v10, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1405
    .end local v2           #acquireCausesWakeup:Ljava/lang/String;
    .end local v3           #activated:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mPokeLocks.size="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1408
    .local v8, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    poke lock \'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v8, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\':"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4

    const-string v11, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_5

    const-string v11, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, v8, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_6

    const-string v11, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1418
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1408
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_4
    :try_start_1
    const-string v11, ""

    goto :goto_3

    :cond_5
    const-string v11, ""

    goto :goto_4

    :cond_6
    const-string v11, ""

    goto :goto_5

    .line 1417
    .end local v8           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1418
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 3093
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3094
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3095
    if-nez p1, :cond_2

    .line 3098
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mMMITestStart:Z

    if-nez v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 3100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z

    .line 3103
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 3113
    :cond_1
    :goto_0
    monitor-exit v1

    .line 3114
    return-void

    .line 3107
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 3108
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 3109
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValueTemp:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0

    .line 3113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 908
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 3261
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 3263
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3264
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3268
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 3350
    const/16 v0, 0x1f

    .line 3354
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 3355
    or-int/lit8 v0, v0, 0x20

    .line 3358
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 2947
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 2948
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2958
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 2959
    monitor-exit v1

    .line 2960
    return-void

    .line 2959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 3
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 661
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 662
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 663
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 664
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 665
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 667
    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 668
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 669
    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 670
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 672
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 674
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 675
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 676
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 677
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 680
    new-instance v0, Lcom/android/server/PowerManagerService$1;

    const-string v1, "PowerManagerService.mScreenOffThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    .line 690
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 692
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 693
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    .line 695
    :try_start_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 700
    :cond_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 702
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 703
    new-instance v0, Lcom/android/server/PowerManagerService$2;

    const-string v1, "PowerManagerService"

    invoke-direct {v0, p0, v1}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 710
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 712
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 713
    :goto_1
    :try_start_5
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_1

    .line 715
    :try_start_6
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 716
    :catch_1
    move-exception v0

    goto :goto_1

    .line 700
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 720
    :cond_1
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 722
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 723
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 724
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 727
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 729
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 730
    return-void

    .line 720
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 729
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0
.end method

.method initInThread()V
    .locals 15

    .prologue
    const/high16 v14, 0x4000

    const/4 v5, 0x6

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 733
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 735
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v13, v3, v13}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 737
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v5, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 739
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v13, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 741
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v13, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 743
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v13, v3, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 746
    const-string v1, "true"

    const-string v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const/16 v3, 0xa

    const-string v4, "fast power on"

    invoke-direct {v1, p0, v3, v4, v12}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mFastPowrLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 751
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 752
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 753
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 754
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 758
    .local v7, resources:Landroid/content/res/Resources;
    const v1, 0x1110012

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 761
    const v1, 0x1110011

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 764
    const v1, 0x10e001e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 768
    const v1, 0x111000f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 770
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    .line 771
    const v1, 0x1070025

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 773
    const v1, 0x1070026

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 776
    const v1, 0x1070030

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValuesDown:[I

    .line 778
    const v1, 0x10e0031

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessAnimSteps:I

    .line 780
    const v1, 0x1070031

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorCriticalValues:[I

    .line 784
    const v1, 0x1070027

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 786
    const v1, 0x1070028

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 788
    const v1, 0x10e001f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 793
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "stay_on_while_plugged_in"

    aput-object v5, v4, v12

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v13

    const/4 v5, 0x2

    const-string v12, "dim_screen"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "screen_brightness_mode"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    const-string v12, "window_animation_scale"

    aput-object v12, v4, v5

    const/4 v5, 0x5

    const-string v12, "transition_animation_scale"

    aput-object v12, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 803
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 804
    new-instance v9, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 805
    .local v9, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 808
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 811
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 812
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 814
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    const-string v1, "true"

    const-string v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 820
    .local v11, shutdownfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$ShutdownReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$ShutdownReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 823
    .local v10, shutdownPlugoutFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    .end local v10           #shutdownPlugoutFilter:Landroid/content/IntentFilter;
    .end local v11           #shutdownfilter:Landroid/content/IntentFilter;
    :cond_2
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 828
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 832
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v13, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 839
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 841
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 842
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 843
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 844
    monitor-exit v2

    .line 845
    return-void

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2623
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 2616
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2617
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 1764
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1766
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 1769
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 1756
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 1757
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 1759
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 3346
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 3347
    return-void

    .line 3346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 935
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 938
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 939
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 942
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 944
    :catch_0
    move-exception v2

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 953
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 956
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 957
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 960
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v2

    .line 965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventScreenOn(Z)V
    .locals 6
    .parameter "prevent"

    .prologue
    .line 1801
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1804
    if-eqz p1, :cond_0

    .line 1808
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1813
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1814
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1846
    :goto_0
    monitor-exit v2

    .line 1847
    return-void

    .line 1822
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 1826
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1831
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1836
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 1837
    .local v0, err:I
    if-eqz v0, :cond_1

    .line 1838
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from setScreenStateLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    .end local v0           #err:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 1846
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 2968
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2971
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2974
    :cond_1
    move-object v0, p1

    .line 2975
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 2984
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2987
    monitor-enter v1

    .line 2990
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2991
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2994
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1135
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1140
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1141
    monitor-exit v2

    .line 1142
    return-void

    .line 1141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAcl(I)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 3390
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeSetAcl(I)I

    move-result v0

    return v0
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 3415
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 3417
    return-void

    :cond_0
    move v0, v1

    .line 3416
    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 6
    .parameter "brightness"

    .prologue
    .line 3362
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3365
    :try_start_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3366
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v3, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3367
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_0

    move v3, p1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 3371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 3373
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3377
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3381
    :goto_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3382
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    iput p1, v3, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3383
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    .line 3384
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3385
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3386
    return-void

    .line 3367
    .end local v1           #identity:J
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3374
    .restart local v1       #identity:J
    :catch_0
    move-exception v0

    .line 3375
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "PowerManagerService"

    const-string v5, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3377
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3385
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 3377
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3384
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public setBatteryLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 3421
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 3423
    return-void

    :cond_0
    move v0, v1

    .line 3422
    goto :goto_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    const/4 v1, 0x1

    .line 1865
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z

    if-ne v0, v1, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1871
    :cond_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1875
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_3

    .line 1876
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1878
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1881
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCpuFreqOptimize(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 3396
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeSetCpuFreqOptimize(Z)I

    move-result v0

    return v0
.end method

.method public setCpuFreqRestrict(ZI)I
    .locals 1
    .parameter "enable"
    .parameter "max_freq_restrict"

    .prologue
    .line 3400
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->nativeSetCpuFreqRestrict(ZI)I

    move-result v0

    return v0
.end method

.method public setGoHispeedLoad(I)I
    .locals 1
    .parameter "go_hispeed_load"

    .prologue
    .line 3406
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeSetGoHispeedLoad(I)I

    move-result v0

    return v0
.end method

.method public setHispeedFreq(I)I
    .locals 1
    .parameter "hispeed_freq"

    .prologue
    .line 3410
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeSetHispeedFreq(I)I

    move-result v0

    return v0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 3060
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 3064
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_1

    .line 3065
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 3069
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3070
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 3072
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3073
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 3074
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3075
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V

    .line 3078
    .end local v6           #value:I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 3081
    :cond_1
    monitor-exit v7

    .line 3082
    return-void

    .line 3081
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 587
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 589
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 590
    monitor-exit v1

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 19
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DEVICE_POWER"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    if-nez p2, :cond_0

    .line 1220
    const-string v15, "PowerManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_0
    return-void

    .line 1224
    :cond_0
    and-int/lit8 v15, p1, 0x6

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1225
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1229
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1230
    if-eqz p1, :cond_5

    .line 1231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1232
    .local v13, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v11, 0x0

    .line 1233
    .local v11, oldPokey:I
    if-eqz v13, :cond_4

    .line 1234
    iget v11, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1235
    move/from16 v0, p1

    iput v0, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1240
    :goto_1
    and-int/lit8 v12, v11, 0x6

    .line 1241
    .local v12, oldTimeout:I
    and-int/lit8 v8, p1, 0x6

    .line 1242
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_2

    if-eq v12, v8, :cond_2

    .line 1243
    const/4 v15, 0x1

    iput-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1252
    .end local v8           #newTimeout:I
    .end local v11           #oldPokey:I
    .end local v12           #oldTimeout:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1253
    .restart local v11       #oldPokey:I
    const/4 v5, 0x0

    .line 1254
    .local v5, cumulative:I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1255
    .local v9, oldAwakeOnSet:Z
    const/4 v4, 0x0

    .line 1256
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1257
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v15

    .line 1258
    iget-boolean v15, v13, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v15, :cond_3

    .line 1259
    const/4 v4, 0x1

    goto :goto_3

    .line 1237
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #oldAwakeOnSet:Z
    :cond_4
    new-instance v13, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1238
    .restart local v13       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1285
    .end local v11           #oldPokey:I
    .end local v13           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1246
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1247
    .local v14, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v14, :cond_2

    .line 1248
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1262
    .end local v14           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #oldAwakeOnSet:Z
    .restart local v11       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1263
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1265
    and-int/lit8 v10, v11, 0x6

    .line 1266
    .local v10, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x6

    .line 1268
    .local v7, newCumulativeTimeout:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/PowerManagerService;->mRingStart:Z

    if-eqz v15, :cond_8

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "PhoneApp"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/16 v15, 0x27

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1276
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/PowerManagerService;->mRingStart:Z

    .line 1279
    :cond_8
    if-eq v10, v7, :cond_9

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v15, v15, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1285
    :cond_9
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 3254
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3255
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 3256
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3257
    monitor-exit v1

    .line 3258
    return-void

    .line 3257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 1854
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 1855
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 1860
    :cond_0
    monitor-exit v1

    .line 1861
    return-void

    .line 1860
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    return-void
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 3272
    new-instance v3, Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3273
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 3275
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 3276
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 3282
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_2

    .line 3284
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 3290
    :goto_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 3291
    :try_start_0
    const-string v3, "PowerManagerService"

    const-string v5, "system ready!"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 3296
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 3299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3301
    .local v0, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 3302
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3306
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3311
    const/4 v2, -0x1

    .line 3312
    .local v2, operation:I
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService;->setAcl(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 3314
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_adjust_screen_power_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3317
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService;->setAcl(I)I

    .line 3322
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_strengthen_gallery_image_color_state"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 3324
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_strengthen_gallery_image_color_state"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3332
    :cond_1
    return-void

    .line 3287
    .end local v0           #identity:J
    .end local v2           #operation:I
    :cond_2
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_0

    .line 3303
    .restart local v0       #identity:J
    :catch_0
    move-exception v3

    .line 3306
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3308
    .end local v0           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3306
    .restart local v0       #identity:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 3051
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3052
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3053
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3055
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 3056
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1113
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1114
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1115
    const/4 p2, 0x0

    .line 1117
    :cond_0
    if-eqz p2, :cond_1

    .line 1118
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1120
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1121
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1122
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1123
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1130
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1125
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1126
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1127
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1128
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1129
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1130
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    return-void

    .line 1127
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 2663
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2666
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    .line 2676
    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2677
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 2680
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2681
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 8
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZ)V

    .line 2660
    return-void
.end method
