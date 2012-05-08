.class public Lcom/android/internal/policy/Powerstate;
.super Ljava/lang/Object;
.source "Powerstate.java"


# static fields
.field private static final AIRPLANE_MODE:Ljava/lang/String; = "airplanemode"

.field private static final BLUETOOTH_STATE:Ljava/lang/String; = "btstate"

.field private static DEBUG:Z = false

.field private static final DELAY_FM_TIME:I = 0x64

.field private static final DELEY_WAITTOSHOW_TIME:I = 0x64

.field private static final FAST_POWER_OFF:Ljava/lang/String; = "fastpoweroff"

.field private static final FAST_POWER_STATE_FILENAME:Ljava/lang/String; = "before_power_off.xml"

.field private static final GPS_STATE:Ljava/lang/String; = "gpsstate"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_STATE_READS:I = 0x10

.field static final MAX_RECENT_TASKS:I = 0x14

.field private static final MAX_SERVICES:I = 0x64

.field private static final MAX_TIMES_WAIT_ANIMATION:I = 0x28

.field private static final MAX_TIMES_WAIT_FM:I = 0x14

.field private static final MAX_WAIT_TIME_CLOSETETHER:I = 0x1b58

.field private static final MODEM_POWERON_SLEEP_MSEC:I = 0x14

.field public static final POWERUP_ANIMATION:I = 0x1

.field private static final RADIO_STATE:Ljava/lang/String; = "radiostate"

.field private static final RINGER_MODE:Ljava/lang/String; = "ringermode"

.field public static final SCREEN_BRIGHTNESS:I = 0xb4

.field private static final SENSOR_STATE:Ljava/lang/String; = "sensorstate"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Powerstate"

.field private static final TIME_POWERON_ANIMATION:I = 0x1388

.field private static final TIME_SECOND_KILL_WAIT:I = 0x258

.field private static final WIFI_STATE:Ljava/lang/String; = "wifistate"

.field public static animChargeProcess:Ljava/lang/Process;

.field private static bGetWallPaperProc:Z

.field private static bootAnimateIsRun:Z

.field private static broadcastDone:Z

.field public static fProcess:Ljava/lang/Process;

.field private static isReadFromStateFile:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerDownCharge_path1:Ljava/lang/String;

.field private static mPowerDownCharge_path2:Ljava/lang/String;

.field private static mPowerManagerService:Landroid/os/IPowerManager;

.field public static mScreenOffNatually:Ljava/lang/Runnable;

.field public static sHandler:Landroid/os/Handler;

.field private static shutdownScreenState:I

.field private static wallPaperProcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .line 94
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    .line 100
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 101
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 117
    sput-object v1, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    .line 124
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 654
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 724
    sput-object v1, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 805
    const-string v0, "/system/media/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    .line 806
    const-string v0, "/data/local/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    .line 808
    sput-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 834
    sput v3, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    .line 873
    new-instance v0, Lcom/android/internal/policy/Powerstate$3;

    invoke-direct {v0}, Lcom/android/internal/policy/Powerstate$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput p0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    return p0
.end method

.method public static checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 13
    .parameter "rapi"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 484
    move-object v4, p0

    .line 486
    .local v4, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    if-nez v10, :cond_5

    .line 487
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string v11, "begin parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 491
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 492
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 495
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 496
    .local v7, type:I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 497
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v10, "wp"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 499
    const/4 v10, 0x0

    const-string v11, "component"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, comp:Ljava/lang/String;
    const/4 v10, 0x0

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    .end local v0           #comp:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_2
    if-ne v7, v9, :cond_1

    .line 505
    if-eqz v5, :cond_3

    .line 506
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :cond_3
    :goto_0
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "Powerstate"

    const-string v11, "end parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 520
    :cond_5
    const-string v10, "com.android.settings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 531
    :cond_6
    :goto_1
    return v8

    .line 508
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v7       #type:I
    :catch_0
    move-exception v1

    .line 509
    .local v1, e:Ljava/io/IOException;
    const/4 v10, 0x1

    :try_start_2
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 511
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :catch_1
    move-exception v1

    .line 512
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    goto :goto_0

    .line 525
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_8

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e9

    if-eq v10, v11, :cond_8

    const-string v10, "android.process.acore"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "android.process.media"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_8
    move v8, v9

    .line 529
    goto :goto_1
.end method

.method private static getAirplaneModeOn(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 133
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 135
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    const/16 v2, 0xa

    .line 137
    .local v2, state:I
    if-nez v0, :cond_0

    .line 138
    const/16 v3, 0xa

    .line 146
    :goto_0
    return v3

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getSensorState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 156
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 158
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isAllowToShow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1019
    if-ne v1, p0, :cond_0

    .line 1021
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-ne v2, v1, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1021
    goto :goto_0
.end method

.method public static killRunningProcess(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 445
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 447
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 449
    .local v5, runServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 451
    .local v6, sumRS:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 452
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 453
    .local v3, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RunningServiceInfo  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  service name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    const-string v8, "android.process.acore"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x3e9

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const/16 v8, 0x3e8

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const-string v8, "android.process.media"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 451
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 460
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stop RunningServiceInfo name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    .end local v3           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 465
    .local v4, runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 466
    .local v7, sumRunProcesses:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_6

    .line 467
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 468
    .local v2, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "killRunningProcess runAppInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   packagename:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  uid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_4
    invoke-static {v2}, Lcom/android/internal/policy/Powerstate;->checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 466
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 473
    :cond_5
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    .line 475
    .end local v2           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 476
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearRecentTasks()V

    .line 477
    return-void
.end method

.method public static powerOnforAlarm(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 1033
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    const-string/jumbo v10, "persist.sys.quickpoweron"

    const-string/jumbo v12, "startpoweron"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v10, "Powerstate"

    const-string v12, " before powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1038
    .local v6, modePhone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v6, :cond_2

    .line 1039
    const-wide/16 v12, 0x14

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 1040
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "Powerstate"

    const-string/jumbo v12, "toggleAirPlane wait phone ready"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_1
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    goto :goto_0

    .line 1044
    :cond_2
    const/4 v10, 0x1

    :try_start_0
    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_1
    const-string v10, "Powerstate"

    const-string v12, " after powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    sget-object v10, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v10, :cond_3

    .line 1052
    sget-object v10, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 1053
    sput-object v14, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 1056
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1057
    .local v5, mHomeIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const/high16 v10, 0x1020

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1061
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v7

    .line 1062
    .local v7, result:Z
    if-nez v7, :cond_4

    .line 1064
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_2
    return-void

    .line 1045
    .end local v5           #mHomeIntent:Landroid/content/Intent;
    .end local v7           #result:Z
    :catch_0
    move-exception v3

    .line 1046
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1067
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v5       #mHomeIntent:Landroid/content/Intent;
    .restart local v7       #result:Z
    :cond_4
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "wifistate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1069
    .local v9, wifiState:Ljava/lang/Integer;
    if-nez v9, :cond_5

    .line 1071
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1074
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 1076
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "btstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1077
    .local v2, bluethState:Ljava/lang/Integer;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState bluethState ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_6
    if-nez v2, :cond_7

    .line 1080
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1083
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 1085
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "gpsstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1086
    .local v4, gpsState:Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 1088
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1091
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v1, :cond_f

    .line 1092
    .local v1, bgpsState:Z
    :goto_3
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_9

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState gpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bgpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_9
    invoke-static {p0, v1}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 1095
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "ringermode"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1096
    .local v8, ringtoneMode:Ljava/lang/Integer;
    if-nez v8, :cond_a

    .line 1098
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1101
    :cond_a
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState ringtonemode ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 1105
    const-string/jumbo v10, "true"

    const-string/jumbo v12, "ro.poweroff_alarm"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "user_set_airplane"

    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v14, "airplanemode"

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1108
    :cond_c
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 1110
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "sensorstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1111
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 1113
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState Sensor get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1116
    :cond_d
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_e

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState Sensor State ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    goto/16 :goto_2

    .end local v0           #SensorState:Ljava/lang/Integer;
    .end local v1           #bgpsState:Z
    .end local v8           #ringtoneMode:Ljava/lang/Integer;
    :cond_f
    move v1, v11

    .line 1091
    goto/16 :goto_3
.end method

.method private static readStateFromFile()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 951
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile begin"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    if-eqz v12, :cond_2

    .line 954
    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile has been called!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 1010
    .local v1, file:Ljava/io/File;
    :cond_1
    :goto_0
    return v7

    .line 959
    .end local v1           #file:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .restart local v1       #file:Ljava/io/File;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 961
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 962
    const/4 v7, 0x0

    goto :goto_0

    .line 965
    :cond_3
    const/4 v5, 0x0

    .line 966
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 968
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 969
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 970
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 973
    const/4 v2, 0x0

    .line 975
    .local v2, itemIndex:I
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 976
    .local v9, type:I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_5

    .line 977
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 978
    .local v8, tag:Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 979
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, k:Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 981
    .local v10, v:Ljava/lang/Integer;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 984
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #v:Ljava/lang/Integer;
    :cond_5
    if-ne v9, v11, :cond_4

    .line 985
    const/4 v7, 0x1

    move-object v5, v6

    .line 999
    .end local v2           #itemIndex:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_6

    .line 1000
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1007
    :cond_6
    :goto_2
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 1009
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "Powerstate"

    const-string/jumbo v12, "readStateFromFile end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 988
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 989
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 990
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 991
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 992
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 993
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 994
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 995
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1002
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v12

    goto/16 :goto_2

    .line 994
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 992
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 990
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 988
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 986
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static restoreAirMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 594
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreAirMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 596
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 598
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAirMode readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 604
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 606
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restorePhoneState airplaneMode get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 609
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePhoneState airplaneMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static restorePhoneState(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 539
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 542
    .local v3, result:Z
    if-nez v3, :cond_1

    .line 544
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_0
    return-void

    .line 547
    :cond_1
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "wifistate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 549
    .local v5, wifiState:Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 551
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 554
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 556
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "btstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 557
    .local v1, bluethState:Ljava/lang/Integer;
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState bluethState ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    if-nez v1, :cond_4

    .line 560
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 563
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 565
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "gpsstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 566
    .local v2, gpsState:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 568
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 571
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v0, :cond_9

    .line 572
    .local v0, bgpsState:Z
    :goto_1
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState gpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bgpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 577
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v7, "ringermode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 578
    .local v4, ringtoneMode:Ljava/lang/Integer;
    if-nez v4, :cond_7

    .line 580
    const-string v6, "Powerstate"

    const-string/jumbo v7, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 583
    :cond_7
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState ringtonemode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v0           #bgpsState:Z
    .end local v4           #ringtoneMode:Ljava/lang/Integer;
    :cond_9
    move v0, v6

    .line 571
    goto :goto_1
.end method

.method public static restoreSensorState(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 620
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 623
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 625
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void

    .line 629
    :cond_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 630
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 632
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState Sensor get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 635
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState Sensor State ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static savePhoneState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 403
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 404
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 407
    :cond_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 409
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "fastpoweroff"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v5, "wifistate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getWifiState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "btstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v6, "gpsstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getGpsState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getSensorState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.poweroff_alarm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_set_airplane"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 419
    .local v1, userSetAirplane:I
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power off Alarm userSetAirplane : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    if-ne v7, v1, :cond_2

    .line 422
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v1           #userSetAirplane:I
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_3

    .line 430
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 432
    :cond_3
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "ringermode"

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v0

    .line 435
    .local v0, bResult:Z
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePhoneSatesaveStateToFile bResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_4
    return-void

    .end local v0           #bResult:Z
    :cond_5
    move v2, v4

    .line 412
    goto/16 :goto_0

    .line 425
    :cond_6
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static saveStateToFile()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 891
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "saveStateToFile"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 897
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    :cond_1
    :goto_0
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 907
    const/4 v7, 0x0

    .line 909
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    invoke-direct {v8, v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 910
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 911
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v6, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 912
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    const/4 v12, 0x0

    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const/4 v4, 0x0

    .line 916
    .local v4, itemIndex:I
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v4

    .line 917
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 918
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 919
    .local v5, k:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 920
    .local v9, v:Ljava/lang/Object;
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v6, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 930
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v5           #k:Ljava/lang/String;
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #v:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 932
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 933
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 938
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 939
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move v10, v11

    .line 941
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 926
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #itemIndex:I
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 927
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 928
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v8

    .line 929
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 898
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 935
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 930
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static sendStopBC(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 664
    :try_start_0
    const-string v18, "com.huawei.android.FMRadio"

    .line 666
    .local v18, fmPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    .line 667
    .local v17, fmContext:Landroid/content/Context;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 670
    .local v19, fmSp:Landroid/content/SharedPreferences;
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    const/16 v2, 0x14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 675
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 677
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 687
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :cond_0
    :goto_1
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v11, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 692
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 693
    .local v10, broadcastDoneSync:Ljava/lang/Object;
    new-instance v5, Lcom/android/internal/policy/Powerstate$2;

    invoke-direct {v5, v10}, Lcom/android/internal/policy/Powerstate$2;-><init>(Ljava/lang/Object;)V

    .line 702
    .local v5, br:Landroid/content/BroadcastReceiver;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 703
    const-string v2, "Powerstate"

    const-string v3, "begin Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v6, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v15, v2, v6

    .line 706
    .local v15, endTime:J
    monitor-enter v10

    .line 707
    :goto_2
    :try_start_1
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    if-nez v2, :cond_1

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v15, v2

    .line 709
    .local v12, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_3

    .line 710
    const-string v2, "Powerstate"

    const-string/jumbo v3, "shutdown broadcast timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v12           #delay:J
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    const-string v2, "Powerstate"

    const-string v3, "end Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void

    .line 674
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #broadcastDoneSync:Ljava/lang/Object;
    .end local v11           #closeDialogs:Landroid/content/Intent;
    .end local v15           #endTime:J
    .restart local v17       #fmContext:Landroid/content/Context;
    .restart local v18       #fmPackageName:Ljava/lang/String;
    .restart local v19       #fmSp:Landroid/content/SharedPreferences;
    .restart local v20       #i:I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 682
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :catch_0
    move-exception v14

    .line 683
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 714
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #broadcastDoneSync:Ljava/lang/Object;
    .restart local v11       #closeDialogs:Landroid/content/Intent;
    .restart local v12       #delay:J
    .restart local v15       #endTime:J
    :cond_3
    :try_start_2
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 715
    :catch_1
    move-exception v2

    goto :goto_2

    .line 718
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static setInChargeScreenState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 836
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 837
    const-string v0, "InputMonitor OoO"

    const-string v1, "i am going to handle the screen problem."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    if-nez v0, :cond_0

    .line 840
    sput v2, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    .line 843
    :cond_0
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 846
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    packed-switch v0, :pswitch_data_0

    .line 870
    :goto_0
    :pswitch_0
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    return v0

    .line 848
    :pswitch_1
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {v3}, Landroid/os/Power;->setScreenState(Z)I

    .line 850
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 854
    :pswitch_2
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-static {v2}, Landroid/os/Power;->setScreenState(Z)I

    .line 858
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v1, 0xb4

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_1
    sput v2, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 868
    :cond_1
    sput v3, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    goto :goto_1

    .line 846
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setPoweroffState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 645
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Powerstate"

    const-string/jumbo v1, "setPoweroffState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 647
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 648
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 649
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 650
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 651
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    .line 652
    return-void
.end method

.method public static showAnimationAgain(Landroid/content/Context;)V
    .locals 9
    .parameter "mContext"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 731
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-eqz v4, :cond_1

    .line 733
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Powerstate"

    const-string v5, "Power on animation is running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    sput-boolean v5, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 743
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 744
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_2

    .line 745
    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 750
    :cond_2
    const-string/jumbo v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    sput-object v4, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 752
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "Powerstate"

    const-string/jumbo v5, "start to show power on AnimationAgain"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/bin/bootanimationex"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    sput-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 757
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x28

    if-ge v1, v4, :cond_4

    .line 758
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "persist.sys.animationstart"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_9

    .line 766
    :cond_4
    :try_start_1
    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 772
    :cond_5
    :goto_2
    :try_start_2
    const-string/jumbo v4, "ro.config.hw_poanimation"

    const/16 v5, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 773
    .local v2, timeLong:I
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 777
    .end local v2           #timeLong:I
    :goto_3
    :try_start_3
    sget-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v4, :cond_6

    .line 778
    sget-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 779
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 782
    :cond_6
    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string/jumbo v4, "persist.sys.quickpoweron"

    const-string/jumbo v5, "normal"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 786
    :try_start_4
    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 801
    .end local v1           #i:I
    :cond_7
    :goto_4
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "Powerstate"

    const-string/jumbo v5, "showAnimation finished"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_8
    sput-boolean v7, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    goto/16 :goto_0

    .line 761
    .restart local v1       #i:I
    :cond_9
    :try_start_5
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "Powerstate"

    const-string/jumbo v5, "wait to show animation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_a
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 757
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPowerManagerService.allowShowScreenWithDelay true failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 790
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    :catch_1
    move-exception v0

    .line 791
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v4, :cond_b

    .line 792
    sget-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 793
    sput-object v8, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 795
    :cond_b
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Runtime.getRuntime().exec failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_c
    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v4, "persist.sys.quickpoweron"

    const-string/jumbo v5, "normal"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 774
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :catch_2
    move-exception v0

    .line 775
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 787
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 788
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPowerManagerService.allowShowScreenWithDelay false failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 745
    :array_0
    .array-data 0x8
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static showPowerOffCharge()V
    .locals 3

    .prologue
    .line 812
    const-string v1, "Powerstate"

    const-string/jumbo v2, "showPowerOffCharge E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Power;->setScreenState(Z)I

    .line 817
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/bin/chargershow"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .local v0, e:Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Power;->setScreenState(Z)I

    .line 823
    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 826
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/16 v2, 0xb4

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 831
    :cond_1
    :goto_1
    const-string v1, "Powerstate"

    const-string/jumbo v2, "showPowerOffCharge X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 818
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 819
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "Powerstate"

    const-string/jumbo v2, "run powerdown charge animation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 827
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static synAirplaneMode(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1124
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string/jumbo v7, "synairplanemode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    move-object v2, p0

    .line 1126
    .local v2, modeContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 1127
    .local v3, resultReadStateFromFile:Z
    if-nez v3, :cond_2

    .line 1128
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "synAirplaneMode readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1
    :goto_0
    return-void

    .line 1132
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_set_airplane"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1133
    .local v5, userChangeAirplane:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1135
    .local v4, stateAirPlane:I
    if-ne v8, v5, :cond_3

    .line 1137
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v1

    .line 1139
    .local v1, bResultSaveStateToFile:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user have change airplane and saveStateToFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .end local v1           #bResultSaveStateToFile:Z
    :cond_3
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1143
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 1144
    const-string v6, "Powerstate"

    const-string/jumbo v7, "user not change airplane, synAirplaneMode airplaneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1147
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleAirPlane(Landroid/content/Context;I)V
    .locals 14
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 301
    .local v7, stateAirPlane:I
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggle AirPlane now stateAirPlane is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    if-ne p1, v7, :cond_2

    .line 304
    sget-boolean v9, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "toggle AirPlane now is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  then return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggleAirPlane switch air mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    if-nez p1, :cond_4

    .line 310
    move-object v4, p0

    .line 311
    .local v4, modeContext:Landroid/content/Context;
    move v8, p1

    .line 312
    .local v8, stateIson:I
    new-instance v0, Lcom/android/internal/policy/Powerstate$1;

    invoke-direct {v0, v4, v8}, Lcom/android/internal/policy/Powerstate$1;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 332
    .end local v0           #aThread:Ljava/lang/Thread;
    .end local v4           #modeContext:Landroid/content/Context;
    .end local v8           #stateIson:I
    :cond_4
    if-ne v9, p1, :cond_1

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v11, "state"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 340
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v5, :cond_6

    move v6, v9

    .line 342
    .local v6, radioOff:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v11, 0x10

    if-ge v2, v11, :cond_1

    .line 343
    if-nez v6, :cond_5

    .line 345
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_7

    move v6, v9

    .line 351
    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 352
    const-string v9, "Powerstate"

    const-string v10, "Radio shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #i:I
    .end local v6           #radioOff:Z
    :cond_6
    move v6, v10

    .line 340
    goto :goto_1

    .restart local v2       #i:I
    .restart local v6       #radioOff:Z
    :cond_7
    move v6, v10

    .line 345
    goto :goto_3

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, ex:Landroid/os/RemoteException;
    const-string v11, "Powerstate"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v6, 0x1

    goto :goto_3

    .line 355
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static toggleBluetooth(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 203
    const-string v6, "bluetooth"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 206
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 211
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toggleBluetooth now is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,then  return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    if-ne v8, p1, :cond_5

    .line 217
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "Powerstate"

    const-string v7, "Disabling Bluetooth..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, bluetoothOff:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v6, 0x10

    if-ge v4, v6, :cond_5

    .line 223
    if-nez v1, :cond_4

    .line 225
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-ne v6, v8, :cond_7

    const/4 v1, 0x1

    .line 231
    :cond_4
    :goto_2
    if-eqz v1, :cond_8

    .line 232
    :try_start_2
    const-string v5, "Powerstate"

    const-string v6, "Bluetooth shutdown complete."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :cond_5
    :goto_3
    const/16 v5, 0xc

    if-ne v5, p1, :cond_0

    .line 244
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Powerstate"

    const-string v6, "enable Bluetooth..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #bluetoothOff:Z
    .restart local v4       #i:I
    :cond_7
    move v1, v5

    .line 225
    goto :goto_2

    .line 226
    :catch_1
    move-exception v3

    .line 227
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "Powerstate"

    const-string v7, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v1, 0x1

    goto :goto_2

    .line 235
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :catch_2
    move-exception v2

    .line 239
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static toggleGps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 289
    return-void
.end method

.method private static toggleRingToneMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 389
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 390
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 392
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 393
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleRingToneMode mAudioManager mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    return-void
.end method

.method private static toggleSensorState(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 370
    .local v0, SensorState:I
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now SensorState is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    if-ne p1, v0, :cond_2

    .line 373
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  then return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState switch air mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleWifi(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 259
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 261
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 266
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiState now is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , nothing then  return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 271
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 272
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_3
    if-ne p1, v2, :cond_0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
