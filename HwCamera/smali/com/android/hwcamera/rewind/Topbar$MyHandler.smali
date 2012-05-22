.class Lcom/android/hwcamera/rewind/Topbar$MyHandler;
.super Landroid/os/Handler;
.source "Topbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/Topbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/Topbar;Lcom/android/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/Topbar$MyHandler;-><init>(Lcom/android/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Topbar$MyHandler;->this$0:Lcom/android/hwcamera/rewind/Topbar;

    #calls: Lcom/android/hwcamera/rewind/Topbar;->fadeOut()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/Topbar;->access$500(Lcom/android/hwcamera/rewind/Topbar;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
