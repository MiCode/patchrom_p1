.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 664
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 666
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 667
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 668
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 669
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    .end local v0           #address:Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 674
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 675
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v2

    .line 681
    .local v2, attempt:I
    if-lez v2, :cond_1

    const/4 v6, 0x2

    if-gt v2, v6, :cond_1

    .line 682
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 683
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 686
    :cond_1
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #attempt:I
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 690
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v7, v8, v6}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;II)V

    goto :goto_0

    .line 695
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_3
    const-string v6, "BluetoothService"

    const-string v7, "Received BT_BOOTUP message"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 697
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 699
    .local v1, airplaneModeOn:I
    const-string v6, "bluetooth_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 701
    .local v3, bluetoothOn:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 702
    iget-object v6, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_0

    .line 706
    .end local v1           #airplaneModeOn:I
    .end local v3           #bluetoothOn:I
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :pswitch_4
    const-string v6, "BluetoothService"

    const-string v7, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string/jumbo v6, "service.brcm.bt.avrcp_pass_thru"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
