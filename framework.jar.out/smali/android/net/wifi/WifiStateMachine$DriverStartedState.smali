.class Landroid/net/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 2559
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private setStopDriverAlarm(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 2563
    if-eqz p1, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopDriverIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2569
    :goto_0
    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopDriverIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2574
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2576
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$7002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2577
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2578
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 2585
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z

    .line 2587
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;)V

    .line 2589
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;)V

    .line 2591
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2594
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 2597
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    invoke-static {}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 2603
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2604
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 2605
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 2606
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2612
    :goto_1
    return-void

    .line 2600
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto :goto_0

    .line 2608
    :cond_1
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z

    .line 2609
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 2610
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2729
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$7002(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2730
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 2731
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$8702(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 2734
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->setStopDriverAlarm(Z)V

    .line 2736
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2616
    const/4 v2, 0x1

    .line 2617
    .local v2, eventLoggingEnabled:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2724
    :goto_0
    return v4

    .line 2619
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_2

    .line 2620
    invoke-static {v5}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z

    .line 2721
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 2722
    const v4, 0xc366

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1
    move v4, v5

    .line 2724
    goto :goto_0

    .line 2622
    :cond_2
    invoke-static {v4}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z

    goto :goto_1

    .line 2626
    :sswitch_1
    const/4 v2, 0x0

    .line 2627
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v4}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z

    .line 2628
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$5902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_1

    .line 2631
    :sswitch_2
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_4

    move v4, v5

    :cond_4
    #calls: Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabledNative(Z)V
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;Z)V

    goto :goto_1

    .line 2634
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2636
    .local v1, country:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->setCountryCodeCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2637
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set country code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 2641
    .end local v1           #country:Ljava/lang/String;
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2643
    .local v0, band:I
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBandCommand(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2644
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2646
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    goto :goto_1

    .line 2648
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set frequency band "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 2652
    .end local v0           #band:I
    :sswitch_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_6

    move v4, v5

    :cond_6
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2654
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z

    goto/16 :goto_1

    .line 2657
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2660
    .local v3, mode:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne v3, v5, :cond_0

    .line 2664
    :cond_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$7102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2665
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8208(Landroid/net/wifi/WifiStateMachine;)I

    .line 2667
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    #setter for: Landroid/net/wifi/WifiStateMachine;->preDelayedStopCounter:I
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$8302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 2670
    if-ne v3, v5, :cond_8

    .line 2672
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startStopDriver()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 2678
    :cond_8
    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->setStopDriverAlarm(Z)V

    goto/16 :goto_1

    .line 2683
    .end local v3           #mode:I
    :sswitch_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2684
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$7102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 2685
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8208(Landroid/net/wifi/WifiStateMachine;)I

    goto/16 :goto_1

    .line 2690
    :sswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 2691
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    if-eq v4, v6, :cond_9

    .line 2692
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 2693
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)V

    .line 2695
    :cond_9
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2696
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z

    .line 2697
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2698
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 2701
    :sswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_a

    .line 2702
    invoke-static {}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 2703
    :cond_a
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_b

    .line 2704
    invoke-static {}, Landroid/net/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 2706
    :cond_b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Illegal arugments to CMD_START_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2710
    :sswitch_a
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_c

    .line 2711
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 2712
    :cond_c
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_d

    .line 2713
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 2715
    :cond_d
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DriverStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2617
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_7
        0x2000e -> :sswitch_6
        0x20012 -> :sswitch_8
        0x2001f -> :sswitch_5
        0x20047 -> :sswitch_1
        0x20049 -> :sswitch_0
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_3
        0x20054 -> :sswitch_9
        0x20055 -> :sswitch_a
        0x2005a -> :sswitch_4
    .end sparse-switch
.end method
