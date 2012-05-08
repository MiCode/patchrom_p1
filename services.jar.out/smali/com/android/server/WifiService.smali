.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$4;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final ATTR_PUSH_STATUS:Ljava/lang/String; = "push_status"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10804f4

.field private static final IDLE_REQUEST:I = 0x0

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final URI_PUSH_STATUS:Ljava/lang/String; = "content://com.huawei.android.pushagent/pushstatus"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "*wifi*"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mEmergencyCallbackMode:Z

.field private mEnableTrafficStatsPoll:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mWifiApState:I

.field private mWifiEnabled:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 382
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 118
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 124
    new-instance v5, Lcom/android/server/WifiService$LockList;

    invoke-direct {v5, p0, v10}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 140
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 141
    iput v8, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 174
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 180
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    .line 183
    new-instance v5, Landroid/net/NetworkInfo;

    const-string v6, "WIFI"

    const-string v7, ""

    invoke-direct {v5, v9, v8, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 375
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 999
    new-instance v5, Lcom/android/server/WifiService$3;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 385
    const-string v5, "wifi.interface"

    const-string v6, "wlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 387
    new-instance v5, Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 388
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 389
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 392
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 393
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    .line 395
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 396
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "*wifi*"

    invoke-virtual {v3, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 399
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 400
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v2, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v2, idleIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 403
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$1;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 419
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$2;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "WifiService"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 455
    .local v4, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 456
    new-instance v5, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 457
    new-instance v5, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_networks_available_repeat_delay"

    const/16 v7, 0x384

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 462
    new-instance v5, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 463
    iget-object v5, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v5}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 465
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    .line 467
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 4
    .parameter "wifiLock"

    .prologue
    .line 1443
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$3500(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 1445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1447
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1448
    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 1463
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1465
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    const/4 v3, 0x1

    .line 1470
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    return v3

    .line 1450
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 1453
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1470
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1457
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkAndSetNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1721
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v5, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1724
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5

    .line 1727
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    .line 1728
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_5

    .line 1729
    const/4 v1, 0x0

    .line 1730
    .local v1, numOpenNetworks:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 1731
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1735
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[ESS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1737
    add-int/lit8 v1, v1, 0x1

    .line 1730
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1741
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v1, :cond_5

    .line 1742
    iget v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 1750
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 1758
    .end local v0           #i:I
    .end local v1           #numOpenNetworks:I
    .end local v3           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-direct {p0, v7, v7, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x0

    .line 1680
    iget-object v1, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 1681
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1687
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1688
    return-void

    .line 1684
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 505
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 508
    :goto_0
    return v2

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1257
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1426
    :goto_0
    return-void

    .line 1420
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1423
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1438
    :goto_0
    return-void

    .line 1432
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1435
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 1692
    iget-wide v5, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v5, preTxPkts:J
    iget-wide v3, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 1693
    .local v3, preRxPkts:J
    const/4 v1, 0x0

    .line 1695
    .local v1, dataActivity:I
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .line 1696
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 1698
    cmp-long v11, v5, v13

    if-gtz v11, :cond_0

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 1699
    :cond_0
    iget-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    sub-long v9, v11, v5

    .line 1700
    .local v9, sent:J
    iget-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    sub-long v7, v11, v3

    .line 1701
    .local v7, received:J
    cmp-long v11, v9, v13

    if-lez v11, :cond_1

    .line 1702
    or-int/lit8 v1, v1, 0x2

    .line 1704
    :cond_1
    cmp-long v11, v7, v13

    if-lez v11, :cond_2

    .line 1705
    or-int/lit8 v1, v1, 0x1

    .line 1708
    :cond_2
    iget v11, p0, Lcom/android/server/WifiService;->mDataActivity:I

    if-eq v1, v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v11, :cond_3

    .line 1709
    iput v1, p0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 1710
    iget-object v11, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 1711
    .local v0, client:Lcom/android/internal/util/AsyncChannel;
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/WifiService;->mDataActivity:I

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 1715
    .end local v0           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_3
    return-void
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 522
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 523
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 524
    if-eqz v0, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 537
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 522
    goto :goto_0

    .line 527
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 530
    :cond_2
    if-eqz v0, :cond_3

    .line 531
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 1227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1228
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1235
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "lock"

    .prologue
    .line 1511
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$3700(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 1515
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1517
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1519
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 1520
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1521
    iget v4, v3, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1535
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    return v0

    .line 1515
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1523
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 1537
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1526
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1539
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1529
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1648
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 1650
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 1651
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 1653
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1654
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1657
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1659
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1664
    return-void

    .line 1662
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1660
    :catch_0
    move-exception v2

    .line 1662
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 1176
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1177
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 1178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1179
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1182
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1766
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 1767
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 1768
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 1769
    return-void
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 0
    .parameter "deviceIdle"

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 1171
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1172
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 1173
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 9
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const/4 v8, 0x0

    const v7, 0x10804f4

    .line 1790
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1798
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 1801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1805
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 1807
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 1808
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 1809
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 1810
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1811
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1815
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1817
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1819
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1820
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1822
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 1824
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1829
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto :goto_0

    .line 1826
    :cond_3
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private setWifiApMaxSCBBlocked(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    const-string v3, "wlan0"

    invoke-interface {v1, p1, v2, v3}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setWifiApMaxSCBBlocked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 514
    goto :goto_0

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 490
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 493
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 494
    if-ne v1, v2, :cond_0

    .line 495
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 496
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1186
    iget-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v5}, Lcom/android/server/WifiService$LockList;->access$2600(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 1187
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 1190
    .local v1, strongestLockMode:I
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v5, :cond_3

    .line 1191
    const/4 v2, 0x0

    .line 1196
    .local v2, wifiShouldBeStarted:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1197
    iget-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v5}, Lcom/android/server/WifiService$LockList;->access$2700(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 1200
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v5, :cond_1

    if-ne v1, v7, :cond_1

    .line 1201
    const/4 v1, 0x1

    .line 1205
    :cond_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1206
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1209
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1210
    if-eqz v2, :cond_8

    .line 1211
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1212
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1213
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v7, :cond_6

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 1215
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v5, v4, v6}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1216
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    :goto_2
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 1224
    :goto_3
    return-void

    .line 1193
    .end local v2           #wifiShouldBeStarted:Z
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v4

    .restart local v2       #wifiShouldBeStarted:Z
    :goto_4
    goto :goto_0

    .end local v2           #wifiShouldBeStarted:Z
    :cond_5
    move v2, v3

    goto :goto_4

    .restart local v2       #wifiShouldBeStarted:Z
    :cond_6
    move v5, v3

    .line 1213
    goto :goto_1

    :cond_7
    move v4, v3

    .line 1216
    goto :goto_2

    .line 1219
    :cond_8
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v4, v3, v5}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto :goto_3

    .line 1222
    :cond_9
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto :goto_3
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1610
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 1611
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 1612
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 1618
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1621
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1623
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1628
    return-void

    .line 1618
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1626
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1624
    :catch_0
    move-exception v2

    .line 1626
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1397
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v1, 0x0

    .line 1412
    :goto_0
    return v1

    .line 1401
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1402
    const/4 p4, 0x0

    .line 1404
    :cond_1
    if-eqz p4, :cond_2

    .line 1405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 1407
    :cond_2
    if-nez p4, :cond_3

    .line 1408
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1410
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1411
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 1412
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 772
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 776
    :goto_0
    return v0

    .line 775
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 964
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 4

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 479
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 480
    .local v0, wifiEnabled:Z
    :goto_0
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 484
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 487
    return-void

    .line 479
    .end local v0           #wifiEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 480
    .restart local v0       #wifiEnabled:Z
    :cond_2
    const-string v1, "disabled"

    goto :goto_1
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 974
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 975
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 822
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 826
    :goto_0
    return v0

    .line 825
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 737
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 738
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 1263
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    :goto_0
    return-void

    .line 1270
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1276
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1278
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1279
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 1281
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1282
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1284
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x4

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_2
    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1292
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1300
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$2800(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 1303
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1304
    const-string v3, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 805
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 810
    :goto_0
    return v0

    .line 809
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x0

    goto :goto_0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1385
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getApLinkedStaList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 682
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    iput v2, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 683
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApLinkedStaList,mWifiApState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v2, v3, :cond_1

    .line 687
    :cond_0
    :try_start_0
    const-string v2, "WifiService"

    const-string v3, "getApLinkedStaList"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getApLinkedStaList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 695
    :cond_1
    :goto_0
    return-object v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setWifiApMaxSCBBlocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 996
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 762
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 840
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 925
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 909
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 987
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 988
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 850
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 718
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 709
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 632
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 1595
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1597
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    monitor-exit v1

    .line 1605
    :goto_0
    return-void

    .line 1602
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1604
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1667
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1669
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1670
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 547
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 551
    :goto_0
    return v0

    .line 550
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 753
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 754
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 745
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 746
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 1631
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1634
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1635
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 1636
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1637
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1638
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 1639
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1640
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 1637
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1643
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 1644
    return-void

    .line 1643
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 1504
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 788
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 792
    :goto_0
    return v0

    .line 791
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 860
    const/4 v0, 0x1

    .line 861
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 862
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 866
    :goto_0
    return v1

    .line 865
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 880
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 883
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 884
    return-void
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 897
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 727
    if-nez p1, :cond_0

    .line 730
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 643
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 644
    return-void
.end method

.method public setWifiApMaxSCB(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .parameter "wifiConfig"
    .parameter "maxNum"

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 650
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_maxscb"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    const/4 v0, 0x0

    .line 667
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v1

    iput v1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 655
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiApMaxSCB,mWifiApState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v1, v2, :cond_0

    .line 663
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiApMaxSCBBlocked(Landroid/net/wifi/WifiConfiguration;)V

    .line 665
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 587
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 592
    if-eqz p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 603
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eq p1, v2, :cond_1

    .line 604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 605
    .local v0, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    .end local v0           #ident:J
    :cond_1
    if-eqz p1, :cond_3

    .line 610
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-nez v2, :cond_2

    .line 611
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 612
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :cond_2
    :goto_0
    monitor-exit p0

    return v4

    .line 614
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_2

    .line 615
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 616
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public startScan(Z)V
    .locals 1
    .parameter "forceActive"

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 560
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 561
    return-void
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 939
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 940
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 941
    return-void
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 953
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 954
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1476
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1477
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1478
    const/4 p2, 0x0

    .line 1480
    :cond_0
    if-eqz p2, :cond_1

    .line 1481
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 1483
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1485
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$3600(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 1487
    .local v2, index:I
    if-gez v2, :cond_2

    .line 1488
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1494
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1495
    :catch_0
    move-exception v6

    .line 1497
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    return-void

    .line 1490
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$2500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 1491
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1492
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1493
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 1494
    monitor-exit v7

    goto :goto_0

    .line 1492
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1497
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
