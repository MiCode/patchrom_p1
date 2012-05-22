.class Lcom/android/hwcamera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method

.method private displayReview()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$1202(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 415
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 417
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1100(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewTime:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/Review;->setIntervalReviewDisplay(ILandroid/net/Uri;)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$1502(Lcom/android/hwcamera/VideoCamera;I)I

    goto :goto_0
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1100(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->hideReviewButtons()V

    .line 425
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$1502(Lcom/android/hwcamera/VideoCamera;I)I

    .line 426
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1800(Lcom/android/hwcamera/VideoCamera;)V

    .line 430
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)V

    .line 432
    :cond_0
    return-void
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$900(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$900(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReview:Lcom/android/hwcamera/hwui/Review;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1100(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/Review;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    .line 411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 347
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 402
    :pswitch_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$200(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 358
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$400(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 374
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$500(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restartPreview()Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$700(Lcom/android/hwcamera/VideoCamera;)Z

    .line 378
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$800(Lcom/android/hwcamera/VideoCamera;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$900(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 385
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;->hideReview(Landroid/os/Message;)V

    goto :goto_0

    .line 390
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->displayReview()V

    goto :goto_0

    .line 394
    :pswitch_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 398
    :pswitch_9
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->switchReview()V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
