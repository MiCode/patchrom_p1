.class Lcom/android/hwcamera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 436
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 628
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 438
    :pswitch_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 439
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->initializeFirstTime()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$900(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Lcom/android/hwcamera/hwui/FaceInfo;

    check-cast v5, [Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v6, v5}, Lcom/android/hwcamera/hwui/FaceView;->setFaces([Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 456
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 457
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/HWExtCameraHandler;->getBlinkState()Z

    move-result v6

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    goto :goto_0

    .line 462
    :pswitch_5
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1300(Lcom/android/hwcamera/Camera;)V

    .line 463
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v5, v9}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    goto :goto_0

    .line 467
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 468
    .local v0, bFocused:Z
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/hwcamera/FocusManager;->onAutoFocus(Z)V

    .line 469
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraAutoFocusController;->startGSensorDetection()V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraAutoFocusController;->setAfFinishState()V

    goto/16 :goto_0

    .line 478
    .end local v0           #bFocused:Z
    :pswitch_7
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5}, Lcom/android/hwcamera/Camera;->startFaceDetectionUI()V

    goto/16 :goto_0

    .line 482
    :pswitch_8
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5}, Lcom/android/hwcamera/Camera;->stopFaceDetectionUI()V

    goto/16 :goto_0

    .line 487
    :pswitch_9
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1500(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 493
    :pswitch_a
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_3

    .line 494
    :cond_2
    const-string v5, "Camera"

    const-string v6, "Decode completed but bitmap is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 497
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->updateBGAndThumbnailUI(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 502
    :pswitch_b
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 503
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v6, v5}, Lcom/android/hwcamera/Camera$ImageSaver;->updateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    goto/16 :goto_0

    .line 509
    :pswitch_c
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v5, v10}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;I)Z

    goto/16 :goto_0

    .line 514
    :pswitch_d
    const-string v5, "content://com.scalado.prototype.strobe.StrobeViewerActivity/data"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 515
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "load"

    invoke-static {}, Lcom/android/hwcamera/Storage;->getActionPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :try_start_0
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5, v2}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camera"

    const-string v6, "Could not start strobe viewer activity"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 525
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_e
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/hwcamera/Camera;->access$1900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 529
    :pswitch_f
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayReview()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2000(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 533
    :pswitch_10
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchReview()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2100(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 537
    :pswitch_11
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2200(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 541
    :pswitch_12
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v11, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 543
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 544
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 545
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 546
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    const v6, 0x7f030012

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 552
    :pswitch_13
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)V

    .line 553
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 554
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 556
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->startPanoramaViewer()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2800(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 558
    :cond_4
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 559
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x25

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 560
    :cond_5
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 561
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1e

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 563
    :cond_6
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v11, :cond_7

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 564
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    .line 565
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v8}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 567
    :cond_7
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V
    invoke-static {v5, v7}, Lcom/android/hwcamera/Camera;->access$3000(Lcom/android/hwcamera/Camera;Z)V

    .line 568
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v5, v7, v7}, Lcom/android/hwcamera/Camera;->access$3100(Lcom/android/hwcamera/Camera;ZZ)V

    .line 569
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3200(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3300(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V
    invoke-static {v5, v9}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;I)V

    goto/16 :goto_0

    .line 576
    :pswitch_14
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v5, v9}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;Z)V

    .line 578
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$1300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 582
    :pswitch_15
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-eq v5, v6, :cond_8

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-ne v5, v6, :cond_9

    .line 583
    :cond_8
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 587
    :goto_1
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 588
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 589
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 590
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    const v6, 0x7f030012

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setContentView(I)V

    goto/16 :goto_0

    .line 585
    :cond_9
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v8, 0x7f0d000c

    invoke-direct {v6, v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_1

    .line 594
    :pswitch_16
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 595
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->cancel()V

    .line 596
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v8}, Lcom/android/hwcamera/Camera;->access$2602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 602
    :pswitch_17
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v5, v7, v9}, Lcom/android/hwcamera/Camera;->access$3100(Lcom/android/hwcamera/Camera;ZZ)V

    goto/16 :goto_0

    .line 606
    :pswitch_18
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 607
    .local v3, size:Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto/16 :goto_0

    .line 610
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :pswitch_19
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    goto/16 :goto_0

    .line 613
    :pswitch_1a
    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)I

    move-result v8

    #calls: Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    invoke-static {v6, v5, v7, v8}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0

    .line 616
    :pswitch_1b
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchCameraUI()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3800(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 619
    :pswitch_1c
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$3900(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 623
    :pswitch_1d
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v5, v8}, Lcom/android/hwcamera/Camera;->access$4002(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 624
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1a
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_e
        :pswitch_17
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_d
        :pswitch_1d
    .end packed-switch
.end method
