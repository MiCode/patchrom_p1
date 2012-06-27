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
    .line 3198
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3201
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3202
    .local v1, action:Ljava/lang/String;
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 3204
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "receive screen on intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v12, v12, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v12, :cond_0

    .line 3207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "stop powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)V

    .line 3209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v14, 0x0

    iput-boolean v14, v12, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3211
    :cond_0
    monitor-exit v13

    .line 3278
    :cond_1
    :goto_0
    return-void

    .line 3211
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3212
    :cond_2
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 3214
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "receive screen off intent!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3215
    const/4 v4, 0x0

    .line 3217
    .local v4, isDataConnected:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    .local v2, arr$:[Landroid/net/NetworkStateTracker;
    array-length v7, v2

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v9, v2, v3

    .line 3218
    .local v9, nt:Landroid/net/NetworkStateTracker;
    if-nez v9, :cond_4

    .line 3217
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3221
    :cond_4
    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 3222
    .local v8, netType:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, v12, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v12, v12, v8

    iget v12, v12, Landroid/net/NetworkConfig;->radio:I

    if-nez v12, :cond_3

    .line 3223
    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3224
    const/4 v4, 0x1

    .line 3225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "mobile data connected!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3232
    .end local v8           #netType:I
    .end local v9           #nt:Landroid/net/NetworkStateTracker;
    :cond_5
    const/4 v6, 0x0

    .line 3233
    .local v6, isWifiApOn:Z
    const-string v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 3234
    .local v11, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v11, :cond_6

    .line 3235
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    .line 3238
    :cond_6
    if-eqz v6, :cond_9

    .line 3239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "Wifi Ap is on"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3247
    :goto_2
    const/4 v5, 0x0

    .line 3248
    .local v5, isUsbTetheringOn:Z
    const-string v12, "sys.isusbtetheringon"

    const-string v14, "false"

    invoke-static {v12, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3249
    .local v10, usbTetheringState:Ljava/lang/String;
    if-eqz v10, :cond_7

    const-string v12, "true"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3250
    const/4 v5, 0x1

    .line 3253
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Usb tethering: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v12}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3257
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v12, v12, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-nez v12, :cond_8

    .line 3259
    if-nez v6, :cond_8

    if-nez v5, :cond_8

    .line 3260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "start powersaving action!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3268
    :cond_8
    monitor-exit v13

    goto/16 :goto_0

    .end local v2           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v3           #i$:I
    .end local v4           #isDataConnected:Z
    .end local v5           #isUsbTetheringOn:Z
    .end local v6           #isWifiApOn:Z
    .end local v7           #len$:I
    .end local v10           #usbTetheringState:Ljava/lang/String;
    .end local v11           #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v12

    .line 3241
    .restart local v2       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v3       #i$:I
    .restart local v4       #isDataConnected:Z
    .restart local v6       #isWifiApOn:Z
    .restart local v7       #len$:I
    .restart local v11       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "Wifi Ap is off"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 3269
    .end local v2           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v3           #i$:I
    .end local v4           #isDataConnected:Z
    .end local v6           #isWifiApOn:Z
    .end local v7           #len$:I
    .end local v11           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_a
    const-string v12, "android.telephony.turnoff_DC"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 3271
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v12, v12, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-eqz v12, :cond_b

    .line 3273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    const-string v14, "turn off Data Connection!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12, v14}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    .line 3276
    :cond_b
    monitor-exit v13

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v12
.end method
