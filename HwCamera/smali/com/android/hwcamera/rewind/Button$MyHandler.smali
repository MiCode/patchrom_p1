.class Lcom/android/hwcamera/rewind/Button$MyHandler;
.super Landroid/os/Handler;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/Button;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/Button;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/android/hwcamera/rewind/Button;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/Button;Lcom/android/hwcamera/rewind/Button$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/Button$MyHandler;-><init>(Lcom/android/hwcamera/rewind/Button;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/android/hwcamera/rewind/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Button;->setVisibility(I)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/android/hwcamera/rewind/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Button;->setVisibility(I)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
