.class public Lcom/android/hwcamera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/FocusManager$1;,
        Lcom/android/hwcamera/FocusManager$MainHandler;,
        Lcom/android/hwcamera/FocusManager$Listener;
    }
.end annotation


# static fields
.field private static final CLEAR_FOCUS_UI:I = 0x1

.field private static final CLEAR_FOCUS_UI_DELAY:I = 0x320

.field private static final FOCUS_STATE_AF:I = 0x2

.field private static final FOCUS_STATE_CAF:I = 0x0

.field private static final FOCUS_STATE_CAF_FACE:I = 0x1

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field public static final STATE_FAIL:I = 0x4

.field public static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mFocusState:I

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mInitialized:Z

.field private mIsNeedPlaySound:Z

.field mListener:Lcom/android/hwcamera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

.field private mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

.field private mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

.field private mState:I

.field private mTouchPointX:I

.field private mTouchPointY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "defaultFocusMode"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 82
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 83
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 84
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 119
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/android/hwcamera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/FocusManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/FocusManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 122
    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 456
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-ne v0, v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->autoFocus()V

    .line 461
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 465
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 466
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 492
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 493
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 709
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 627
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 628
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 629
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 630
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 632
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 633
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 634
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 635
    return-void
.end method

.method public canDoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 433
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 436
    :cond_1
    return v0
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 470
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 479
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/FocusManager$Listener;->cancelAutoFocus(I)V

    .line 481
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 482
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 483
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public clearFocusUI()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->clear()V

    .line 698
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0

    .line 231
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 235
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 236
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableFocusSound()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 706
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 559
    :goto_0
    return-object v0

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    if-eqz v0, :cond_2

    .line 541
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 549
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 559
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 544
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public handleFocus(IIIZ)Z
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "isTouchFocus"

    .prologue
    .line 383
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 384
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 386
    iget-boolean v9, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 387
    :cond_0
    const/4 v9, 0x0

    .line 429
    :goto_0
    return v9

    .line 391
    :cond_1
    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    iget v9, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 396
    :cond_3
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 397
    .local v2, focusWidth:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 398
    .local v1, focusHeight:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 399
    .local v6, previewWidth:I
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 401
    .local v5, previewHeight:I
    iput p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 402
    iput p2, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 404
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 406
    .local v4, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v9, v2, 0x2

    sub-int v9, p1, v9

    const/4 v10, 0x0

    sub-int v11, v6, v2

    invoke-static {v9, v10, v11}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 407
    .local v3, left:I
    div-int/lit8 v9, v1, 0x2

    sub-int v9, p2, v9

    const/4 v10, 0x0

    sub-int v11, v5, v1

    invoke-static {v9, v10, v11}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v8

    .line 408
    .local v8, top:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v3, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v7

    .line 412
    .local v7, rules:[I
    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 413
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 416
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_5

    .line 417
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v9}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 419
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v9, :cond_4

    .line 420
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v9}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 422
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    .line 429
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 424
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 426
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v9, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "faceView"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 145
    const v1, 0x7f08002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 147
    iput-object p2, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 148
    iput-object p3, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 149
    iput-object p4, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 158
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 160
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v1, "FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 130
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 135
    goto :goto_1
.end method

.method public initializeSoundPlayer(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isEnforceAudible"

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 503
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 507
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .line 511
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f060002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    .line 513
    return-void
.end method

.method public isCAFSupported()Z
    .locals 2

    .prologue
    .line 690
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 638
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 677
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 701
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 9
    .parameter "focused"

    .prologue
    const-wide/16 v7, 0xbb8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 251
    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On autofocus result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 253
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 257
    if-eqz p1, :cond_1

    .line 258
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 263
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    .line 299
    :cond_0
    :goto_1
    return-void

    .line 260
    :cond_1
    iput v6, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 264
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 269
    if-eqz p1, :cond_5

    .line 270
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 271
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 279
    .local v0, soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :goto_2
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 287
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 273
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_5
    iput v6, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .restart local v0       #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    goto :goto_2

    .line 295
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    .line 453
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 441
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 445
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 448
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 449
    return-void
.end method

.method public onShutter()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 247
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 248
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-nez v0, :cond_2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 173
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 197
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 199
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 302
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 305
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 306
    :cond_0
    const/4 v2, 0x0

    .line 378
    :goto_0
    return v2

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 309
    const/4 v2, 0x1

    goto :goto_0

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    .line 314
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 318
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 319
    .local v6, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 320
    .local v7, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 321
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 322
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 323
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 325
    .local v9, previewHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_5

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_5
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 338
    const/4 v2, 0x2

    new-array v14, v2, [F

    const/4 v2, 0x0

    int-to-float v5, v6

    aput v5, v14, v2

    const/4 v2, 0x1

    int-to-float v5, v7

    aput v5, v14, v2

    .line 339
    .local v14, points:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Point;

    const/4 v10, 0x0

    aget v10, v14, v10

    float-to-int v10, v10

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v10, v9

    int-to-float v0, v8

    move/from16 v17, v0

    div-float v10, v10, v17

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v12

    .line 343
    .local v12, optmizeRect:Landroid/graphics/Rect;
    if-eqz v12, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput-object v12, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 347
    :cond_6
    const/high16 v5, 0x3fc0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 353
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, v6, v2

    const/4 v5, 0x0

    sub-int v10, v8, v3

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v11

    .line 354
    .local v11, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, v7, v2

    const/4 v5, 0x0

    sub-int v10, v9, v4

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v16

    .line 355
    .local v16, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v11, v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 357
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v15

    .line 358
    .local v15, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v15, v2

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 365
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v2, :cond_7

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 371
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    .line 378
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 373
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v17, 0xbb8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 647
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public releaseSoundPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 522
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 526
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFailed:Lcom/android/hwcamera/SoundPlayer;

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 530
    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerFocusing:Lcom/android/hwcamera/SoundPlayer;

    .line 532
    :cond_2
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    return-void
.end method

.method public resetTouchFocus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 611
    iget-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 623
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 616
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 617
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 618
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 620
    iput-object v5, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 621
    iput-object v5, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 622
    iput-boolean v4, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 651
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 652
    return-void
.end method

.method public setFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 681
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v1, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_0
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    goto :goto_0
.end method

.method public shutterLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 207
    :cond_0
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid focus state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "FocusManager::shutterLongPressed - do focus."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 213
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    .line 218
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 221
    :cond_2
    return-void
.end method

.method public transformCoordinate([FLandroid/view/SurfaceView;Landroid/hardware/Camera$Size;)V
    .locals 9
    .parameter "Coordinate"
    .parameter "surfaceview"
    .parameter "previewSize"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 660
    if-nez p3, :cond_0

    .line 661
    const-string v5, "FocusManager"

    const-string v6, "previewSize is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 666
    .local v1, SurfaceViewLocation:[I
    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->getLocationOnScreen([I)V

    .line 667
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    aget v6, v1, v7

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 668
    .local v3, x:F
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    aget v6, v1, v8

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 670
    .local v4, y:F
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 671
    .local v2, SurfaceViewWidth:I
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    .line 672
    .local v0, SurfaceViewHeight:I
    iget v5, p3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 673
    iget v5, p3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    goto :goto_0
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 571
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 584
    .local v0, focusIndicator:Lcom/android/hwcamera/hwui/FocusIndicator;
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 585
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_2

    .line 586
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->clear()V

    goto :goto_0

    .line 591
    :cond_2
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 593
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 594
    :cond_4
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 602
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 603
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 604
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 605
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
