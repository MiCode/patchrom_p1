.class Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "PanoramaViewer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final REVIEW_SWITCH_MSG:I = 0x10


# instance fields
.field private baseX:F

.field private baseY:F

.field private corrX:F

.field private corrY:F

.field private gestureStartZoomAmount:F

.field private gliderRotX:F

.field private gliderRotY:F

.field private mHandler:Landroid/os/Handler;

.field private moveDisabled:Z

.field private prevTouchTime:J

.field private primaryPointerId:I

.field private renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

.field private zoomIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    .line 345
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    .line 347
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 348
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 390
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, metrics:Landroid/util/DisplayMetrics;
    move-object v1, p1

    .line 391
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 393
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    .line 394
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    .line 398
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 399
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 401
    const-string v1, "MyGLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metrics w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 404
    return-void
.end method

.method private setupRenderer()V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setDebugFlags(I)V

    .line 410
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;-><init>(Lcom/android/hwcamera/panoramaviewer/OGLWorld;)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    .line 411
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 412
    return-void
.end method


# virtual methods
.method public changeWorld(Lcom/android/hwcamera/panoramaviewer/OGLWorld;)V
    .locals 1
    .parameter "theWorld"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    .line 380
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setInit()V

    .line 381
    return-void
.end method

.method public getCartesianX()F
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCartesianY()F
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public initWall()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setInit()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 416
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 421
    :pswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    const v3, 0x3d4ccccd

    invoke-virtual {v2, v3, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    .line 422
    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    if-nez v1, :cond_0

    .line 423
    iput-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    goto :goto_0

    .line 430
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    const v3, -0x42b33333

    invoke-virtual {v2, v3, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    .line 431
    iput-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v7, 0x1

    const v6, 0x3dcccccd

    const/high16 v5, 0x3f80

    .line 583
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    .line 584
    .local v2, prevSpan:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 586
    .local v0, currSpan:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 594
    .local v3, scaleFactor:F
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    .line 596
    .local v1, newZoom:F
    cmpl-float v4, v3, v5

    if-lez v4, :cond_1

    .line 598
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    sub-float v5, v3, v5

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 599
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v4, v1, v7}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    .line 616
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 601
    :cond_1
    cmpg-float v4, v3, v5

    if-gez v4, :cond_0

    .line 603
    div-float v3, v5, v3

    .line 604
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    sub-float v5, v3, v5

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 605
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v4, v1, v7}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getZoomAmount()F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 625
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 447
    const/4 v8, 0x0

    .line 448
    .local v8, xSum:F
    const/4 v10, 0x0

    .line 454
    .local v10, ySum:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v11}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isSmoothZoomOngoing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 457
    const/4 v11, 0x1

    .line 576
    :goto_0
    return v11

    .line 460
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 461
    .local v1, action:I
    shr-int/lit8 v3, v1, 0x8

    .line 465
    .local v3, pid:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 469
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 470
    const/4 v11, 0x1

    goto :goto_0

    .line 472
    :cond_1
    if-nez v1, :cond_6

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 475
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 478
    .local v5, thisTime:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    sub-long v11, v5, v11

    const-wide/16 v13, 0x12c

    cmp-long v11, v11, v13

    if-gez v11, :cond_5

    .line 481
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    .line 482
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    if-eqz v11, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->getCartesianX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->getCartesianY()F

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomSmoothIn(FF)V

    .line 488
    :goto_2
    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    .line 576
    .end local v5           #thisTime:J
    :cond_2
    :goto_3
    const/4 v11, 0x1

    goto :goto_0

    .line 481
    .restart local v5       #thisTime:J
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v11}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomSmoothOut()V

    goto :goto_2

    .line 494
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v11, v11, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotX:F

    .line 495
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v11, v11, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotY:F

    .line 496
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    .line 499
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_2

    .line 500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 504
    .end local v5           #thisTime:J
    :cond_6
    const/4 v11, 0x2

    if-ne v1, v11, :cond_b

    if-nez v3, :cond_b

    .line 506
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    if-eqz v11, :cond_7

    .line 507
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 509
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 510
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 512
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 514
    .local v4, pointerId:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    if-eq v4, v11, :cond_9

    .line 518
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 521
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 527
    :cond_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 529
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    .line 530
    .local v7, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 535
    .local v9, y:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float v11, v7, v11

    add-float/2addr v8, v11

    .line 536
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    sub-float v11, v9, v11

    add-float/2addr v10, v11

    .line 539
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 540
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 544
    .end local v7           #x:F
    .end local v9           #y:F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v12, v12, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    const/high16 v13, 0x3e80

    mul-float/2addr v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v14, v14, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 558
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v12, v12, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    const/high16 v13, 0x3e80

    mul-float/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v14, v14, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 561
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v11}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->ensureAnglesWithinLimits()V

    goto/16 :goto_3

    .line 563
    .end local v2           #i:I
    .end local v4           #pointerId:I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 565
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 566
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/android/hwcamera/panoramaviewer/OGLRenderer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    div-long/2addr v13, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->enableGliderEffect(FJ)V

    goto/16 :goto_3
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    .line 372
    return-void
.end method

.method public setWorld(Lcom/android/hwcamera/panoramaviewer/OGLWorld;)V
    .locals 0
    .parameter "theWorld"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    .line 375
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setupRenderer()V

    .line 376
    return-void
.end method
