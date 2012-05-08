.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 721
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 722
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 723
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 724
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->showNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 725
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 853
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 854
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearNotification()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 855
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 730
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 845
    const/4 v12, 0x0

    .line 847
    :goto_0
    return v12

    .line 732
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x22003

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v12, v0, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 847
    :cond_0
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 735
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 736
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x22006

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v12, v0, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    move-result-object v13

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 740
    :sswitch_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 743
    .local v11, timeout:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 745
    .local v10, queryDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget v12, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v12, :cond_3

    iget v12, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 747
    :cond_3
    const-string v12, "WifiP2pService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "queryDevice.deviceName is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "queryDevice.status is"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mTempPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 752
    .end local v10           #queryDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mTempPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 756
    const-string v12, "WifiP2pService"

    const-string/jumbo v13, "there is no mTempPeers"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 769
    invoke-static {v11}, Landroid/net/wifi/WifiNative;->p2pFind(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x22009

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v12, v0, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 760
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mTempPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 762
    .local v5, insertDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v12, "WifiP2pService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertDevice.deviceName is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "insertDevice.status is"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_4

    .line 765
    .end local v5           #insertDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mTempPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    goto :goto_3

    .line 772
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x22008

    const/4 v14, 0x0

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v12, v0, v13, v14}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 777
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v11           #timeout:I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 778
    .local v2, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$4600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v13, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 779
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 783
    .end local v2           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 784
    .restart local v2       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 788
    .end local v2           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pConfig;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v13, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4702(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 789
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v13, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistGroup:Z
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$4802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 790
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->configuredNetworkId(Ljava/lang/String;)I
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)I

    move-result v7

    .line 791
    .local v7, netId:I
    if-ltz v7, :cond_8

    .line 793
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v12

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v7, v12}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    .line 805
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v14, 0x1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x2200c

    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v12, v0, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v13

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 795
    :cond_8
    const/4 v6, 0x0

    .line 796
    .local v6, join:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isGroupOwner(Ljava/lang/String;)Z
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    .line 797
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v9

    .line 799
    .local v9, pin:Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyWpsPin(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v9, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 801
    :catch_0
    move-exception v12

    goto :goto_5

    .line 812
    .end local v6           #join:Z
    .end local v7           #netId:I
    .end local v9           #pin:Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 813
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v12, "name"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 814
    .local v8, newDeviceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 815
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #calls: Landroid/net/wifi/p2p/WifiP2pService;->setDeviceName(Ljava/lang/String;)Z
    invoke-static {v12, v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Z

    .line 816
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$4600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    iput-object v8, v12, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 817
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 822
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v8           #newDeviceName:Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v13, "Connection lost, restart p2p"

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Landroid/net/wifi/WifiNative;->killSupplicant()Z

    .line 824
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 825
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 826
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v13

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v13, 0x22001

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 830
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pGroup;

    #setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v13, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 832
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 833
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v13

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    .line 842
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    move-result-object v13

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 835
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v15}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v13

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12, v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$5902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v12

    const v13, 0x30001

    invoke-virtual {v12, v13}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 839
    .local v3, groupOwner:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v13, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v14, 0x0

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateDeviceStatus(Ljava/lang/String;I)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPeersChangedBroadcast()V
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto :goto_6

    .line 730
    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_0
        0x22004 -> :sswitch_1
        0x22007 -> :sswitch_2
        0x2200a -> :sswitch_5
        0x2201c -> :sswitch_6
        0x24002 -> :sswitch_7
        0x24015 -> :sswitch_3
        0x24016 -> :sswitch_4
        0x2401d -> :sswitch_8
    .end sparse-switch
.end method
