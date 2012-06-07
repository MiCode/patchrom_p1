.class public Lcom/huawei/powermanagement/PowerManagementService;
.super Landroid/app/Service;
.source "PowerManagementService.java"


# static fields
.field private static final isEnablePowerSaving:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "ro.config.hw_power_saving"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/powermanagement/PowerManagementService;->isEnablePowerSaving:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    new-instance v0, Lcom/huawei/powermanagement/PowerManagementService$1;

    invoke-direct {v0, p0}, Lcom/huawei/powermanagement/PowerManagementService$1;-><init>(Lcom/huawei/powermanagement/PowerManagementService;)V

    iput-object v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/powermanagement/PowerManagementService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->initServiceData()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/powermanagement/PowerManagementService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->powerSaveAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/powermanagement/PowerManagementService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->setPhonePolicy()V

    return-void
.end method

.method private dealWithMobileData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, powerSaving:I
    const-string v1, "PowerManagement "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerSaving is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-boolean v1, Lcom/huawei/powermanagement/PowerManagementService;->isEnablePowerSaving:Z

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 150
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    :cond_0
    return-void
.end method

.method private dealWithWiFi()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PowerManagementService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, value:I
    if-eq v4, v0, :cond_0

    .line 162
    const-string v1, "PowerManagement "

    const-string v2, "Set WiFi sleep policy with WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PowerManagementService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    :cond_0
    return-void
.end method

.method private initServiceData()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->upDateUserSetting()V

    .line 137
    return-void
.end method

.method private powerSaveAction()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_idle_ms"

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 253
    iget v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mCurrentMode:I

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->dealWithMobileData()V

    .line 257
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->dealWithWiFi()V

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.powermanagement.action.POWER_SAVE_ATONCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/powermanagement/PowerManagementService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method private setCpuFreq(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 201
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 203
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 234
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v1       #power:Landroid/os/IPowerManager;
    :pswitch_0
    const/16 v2, 0x5f

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setGoHispeedLoad(I)I

    .line 207
    const v2, 0xaae60

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setHispeedFreq(I)I

    .line 208
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setCpuFreqOptimize(Z)I

    .line 209
    const/4 v2, 0x1

    const v3, 0x124f80

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setCpuFreqRestrict(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PowerManagement "

    const-string v3, "Failed to setCpuFreqOptimize: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 212
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #power:Landroid/os/IPowerManager;
    :pswitch_1
    const/16 v2, 0x5f

    :try_start_1
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setGoHispeedLoad(I)I

    .line 213
    const v2, 0xaae60

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setHispeedFreq(I)I

    .line 214
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setCpuFreqOptimize(Z)I

    .line 215
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setCpuFreqRestrict(ZI)I

    goto :goto_0

    .line 218
    :pswitch_2
    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setGoHispeedLoad(I)I

    .line 219
    const v2, 0x124f80

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setHispeedFreq(I)I

    .line 220
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setCpuFreqOptimize(Z)I

    .line 221
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setCpuFreqRestrict(ZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPhonePolicy()V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/huawei/powermanagement/PowerManagementService;->setCpuFreq(I)V

    .line 247
    return-void
.end method

.method private upDateUserSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v2, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    const-string v3, "user_mode_data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "current_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    iput v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mCurrentMode:I

    .line 130
    return-void

    .line 112
    :pswitch_0
    const-string v2, "PowerManagement "

    const-string v3, "current mode is MAXIMUM_MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :pswitch_1
    const-string v2, "PowerManagement "

    const-string v3, "current mode is NIGHT_MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v2, "PowerManagement "

    const-string v3, "current mode is PERFORMANCE_MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    iput-object p0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mContext:Landroid/content/Context;

    .line 47
    const-string v0, "PowerManagement "

    const-string v1, ">>>> Started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/powermanagement/PowerManagementService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    const-string v0, "PowerManagement "

    const-string v1, " End <<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 53
    const-string v0, "PowerManagement "

    const-string v1, " Register Broadcasts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->registerForBroadcasts()V

    .line 56
    invoke-direct {p0}, Lcom/huawei/powermanagement/PowerManagementService;->initServiceData()V

    .line 57
    iget v0, p0, Lcom/huawei/powermanagement/PowerManagementService;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/huawei/powermanagement/PowerManagementService;->setCpuFreq(I)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
