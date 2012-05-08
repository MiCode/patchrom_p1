.class Lcom/android/server/ConnectivityService$4;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3199
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3200
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "receive screen on intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3202
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v9, v9, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v9, :cond_0

    .line 3203
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3204
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)V

    .line 3205
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3207
    :cond_0
    monitor-exit v10

    .line 3264
    :cond_1
    :goto_0
    return-void

    .line 3207
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 3208
    :cond_2
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3209
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3210
    :try_start_1
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "receive screen off intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3211
    const/4 v3, 0x0

    .line 3213
    .local v3, isDataConnected:Z
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    .local v1, arr$:[Landroid/net/NetworkStateTracker;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v7, v1, v2

    .line 3214
    .local v7, nt:Landroid/net/NetworkStateTracker;
    if-nez v7, :cond_4

    .line 3213
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3217
    :cond_4
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 3218
    .local v6, netType:I
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, v9, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/net/NetworkConfig;->radio:I

    if-nez v9, :cond_3

    .line 3219
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3220
    const/4 v3, 0x1

    .line 3221
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "mobile data connected!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3228
    .end local v6           #netType:I
    .end local v7           #nt:Landroid/net/NetworkStateTracker;
    :cond_5
    const/4 v4, 0x0

    .line 3229
    .local v4, isWifiApOn:Z
    const-string v9, "wifi"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 3230
    .local v8, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v8, :cond_6

    .line 3231
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    .line 3234
    :cond_6
    if-eqz v4, :cond_8

    .line 3235
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "Wifi Ap is on"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3243
    :goto_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v9}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3244
    if-eqz v3, :cond_7

    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v9, v9, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-nez v9, :cond_7

    .line 3246
    if-nez v4, :cond_7

    .line 3247
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "start powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3248
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)V

    .line 3249
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3254
    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v2           #i$:I
    .end local v3           #isDataConnected:Z
    .end local v4           #isWifiApOn:Z
    .end local v5           #len$:I
    .end local v8           #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v9

    .line 3237
    .restart local v1       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v2       #i$:I
    .restart local v3       #isDataConnected:Z
    .restart local v4       #isWifiApOn:Z
    .restart local v5       #len$:I
    .restart local v8       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "Wifi Ap is off"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 3255
    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v2           #i$:I
    .end local v3           #isDataConnected:Z
    .end local v4           #isWifiApOn:Z
    .end local v5           #len$:I
    .end local v8           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_9
    const-string v9, "android.telephony.turnoff_DC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3256
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3257
    :try_start_3
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v9, v9, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v9, :cond_a

    .line 3259
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v11, "turn off Data Connection!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9, v11}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3260
    iget-object v9, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    .line 3262
    :cond_a
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v9
.end method
