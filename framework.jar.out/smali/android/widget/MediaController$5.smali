.class Landroid/widget/MediaController$5;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 12
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    const-wide/16 v10, 0x3e8

    .line 558
    if-nez p3, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-boolean v6, Landroid/os/SystemProperties;->OMAP_ENHANCEMENT:Z

    if-eqz v6, :cond_2

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 565
    .local v4, now:J
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mLastSeekEventTime:J
    invoke-static {v6}, Landroid/widget/MediaController;->access$900(Landroid/widget/MediaController;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 566
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #setter for: Landroid/widget/MediaController;->mLastSeekEventTime:J
    invoke-static {v6, v4, v5}, Landroid/widget/MediaController;->access$902(Landroid/widget/MediaController;J)J

    .line 567
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v6

    int-to-long v0, v6

    .line 568
    .local v0, duration:J
    int-to-long v6, p2

    mul-long/2addr v6, v0

    div-long v2, v6, v10

    .line 569
    .local v2, newposition:J
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v6

    long-to-int v7, v2

    invoke-interface {v6, v7}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 570
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 571
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    long-to-int v8, v2

    #calls: Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 574
    .end local v0           #duration:J
    .end local v2           #newposition:J
    .end local v4           #now:J
    :cond_2
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v6

    int-to-long v0, v6

    .line 575
    .restart local v0       #duration:J
    int-to-long v6, p2

    mul-long/2addr v6, v0

    div-long v2, v6, v10

    .line 576
    .restart local v2       #newposition:J
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v6

    long-to-int v7, v2

    invoke-interface {v6, v7}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 577
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 578
    iget-object v6, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    long-to-int v8, v2

    #calls: Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 544
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const-wide/16 v1, 0x0

    #setter for: Landroid/widget/MediaController;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Landroid/widget/MediaController;->access$902(Landroid/widget/MediaController;J)J

    .line 545
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 547
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$602(Landroid/widget/MediaController;Z)Z

    .line 554
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 583
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    #setter for: Landroid/widget/MediaController;->mDragging:Z
    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$602(Landroid/widget/MediaController;Z)Z

    .line 584
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->setProgress()I
    invoke-static {v0}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)I

    .line 585
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->updatePausePlay()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$1300(Landroid/widget/MediaController;)V

    .line 586
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 591
    iget-object v0, p0, Landroid/widget/MediaController$5;->this$0:Landroid/widget/MediaController;

    #getter for: Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 592
    return-void
.end method
