.class Landroid/server/BluetoothAdapterStateMachine$Switching;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Switching"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 421
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$Switching;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Switching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$4300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/16 v9, 0xb

    const/4 v3, 0x0

    const/4 v8, 0x5

    const v7, 0x1110022

    const/16 v6, 0x66

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x1

    .line 432
    .local v2, retValue:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 525
    .end local v2           #retValue:Z
    :cond_0
    :goto_0
    return v2

    .line 435
    .restart local v2       #retValue:Z
    :sswitch_0
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 437
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->setPairable()V

    .line 438
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    .line 439
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 440
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0xc

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 443
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->runBluetooth()V

    goto :goto_0

    .line 447
    :sswitch_1
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x69

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 448
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 450
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 451
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 453
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4400(Landroid/server/BluetoothAdapterStateMachine;)I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 462
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v4, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v3, v8, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 466
    :cond_2
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v4, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v3, v6, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 473
    :sswitch_2
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x67

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$5100(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mTurnOffTimeStamp:J
    invoke-static {v6}, Landroid/server/BluetoothAdapterStateMachine;->access$5200(Landroid/server/BluetoothAdapterStateMachine;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 476
    .local v0, dt:J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    .line 477
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 478
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/BluetoothService;->disableNative()I

    .line 479
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x69

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 484
    :cond_3
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x34

    invoke-virtual {v3, v4, v0, v1}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 489
    .end local v0           #dt:J
    :sswitch_3
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v4, 0x34

    invoke-virtual {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 491
    const-string v3, "BluetoothAdapterStateMachine"

    const-string v4, "Devices failed to disconnect, reseting..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 494
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v8}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 501
    :sswitch_4
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 502
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 504
    const-string v3, "BluetoothAdapterStateMachine"

    const-string v4, "Devices failed to power down, reseting..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5600(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 507
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v4, v8}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$5700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 519
    :sswitch_5
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$Switching;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$5800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x34 -> :sswitch_2
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x67 -> :sswitch_3
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
