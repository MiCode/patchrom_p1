.class Lcom/scalado/app/rewind/JpegHolder$1;
.super Landroid/os/Handler;
.source "JpegHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/JpegHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/JpegHolder;


# direct methods
.method constructor <init>(Lcom/scalado/app/rewind/JpegHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/scalado/app/rewind/JpegHolder$1;->this$0:Lcom/scalado/app/rewind/JpegHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 32
    :pswitch_0
    const-string v0, "JpegHolder"

    const-string v1, "clear data in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder$1;->this$0:Lcom/scalado/app/rewind/JpegHolder;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/JpegHolder;->clearData()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
