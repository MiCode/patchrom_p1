.class Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;
.super Landroid/os/Handler;
.source "PanoramaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x10

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 88
    :goto_0
    :sswitch_0
    return-void

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setProgressBarInvisible()V

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$000(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->showReviewButtons()V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$100(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->finish()V

    goto :goto_0

    .line 84
    :sswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$100(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$000(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
