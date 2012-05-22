.class Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;
.super Landroid/os/Handler;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 630
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 650
    :goto_0
    return-void

    .line 632
    :pswitch_0
    const-string v0, "ManualRewindViewer"

    const-string v1, "mRotateProgress.hideWaitDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2500(Lcom/android/hwcamera/rewind/RewindActivity;Z)V

    goto :goto_0

    .line 639
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2700(Lcom/android/hwcamera/rewind/RewindActivity;)V

    .line 641
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->finish()V

    goto :goto_0

    .line 645
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2700(Lcom/android/hwcamera/rewind/RewindActivity;)V

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
