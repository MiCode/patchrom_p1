.class Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/32 v7, 0x1400000

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 443
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 445
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->stopVideoRecording()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2000(Lcom/android/hwcamera/VideoCamera;)V

    .line 449
    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->stopReviewIfNeed()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2200(Lcom/android/hwcamera/VideoCamera;)V

    .line 450
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 452
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 453
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)V

    .line 479
    :cond_1
    :goto_1
    return-void

    .line 447
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    const-wide/16 v6, -0x1

    #calls: Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V
    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/VideoCamera;->access$2100(Lcom/android/hwcamera/VideoCamera;J)V

    goto :goto_0

    .line 456
    :cond_3
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 457
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    .line 462
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_2
    const/4 v2, 0x0

    .line 468
    .local v2, isSDCardAvailable:Z
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v3

    .line 469
    .local v3, sdAvailableSpace:J
    cmp-long v5, v3, v7

    if-lez v5, :cond_4

    .line 470
    const/4 v2, 0x1

    .line 472
    :cond_4
    if-eqz v2, :cond_5

    .line 473
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 474
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v7, 0x7f0c0122

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    #calls: Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V
    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/VideoCamera;->access$2300(Lcom/android/hwcamera/VideoCamera;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 463
    .end local v2           #isSDCardAvailable:Z
    .end local v3           #sdAvailableSpace:J
    :catch_0
    move-exception v1

    .line 464
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 476
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #isSDCardAvailable:Z
    .restart local v3       #sdAvailableSpace:J
    :cond_5
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V
    invoke-static {v5, v3, v4}, Lcom/android/hwcamera/VideoCamera;->access$2100(Lcom/android/hwcamera/VideoCamera;J)V

    goto :goto_1
.end method
