.class public Lcom/scalado/app/ui/Wheel;
.super Lcom/scalado/app/ui/Widget;
.source "Wheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/Wheel$WheelCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ANGLE:D = 1.0466667

.field private static final DEFAULT_MIN_ANGLE:D = -1.0466667

.field private static final MULTIPLE_REVOLUTIONS:I = 0x2

.field private static final ONE_REVOLUTION:I = 0x0

.field private static final PI_HALF:D = 1.5707963267948966

.field private static final RESTRICT_TO_IVL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wheel"

.field private static final TWO_PI:D = 6.283185307179586


# instance fields
.field private mAngleMode:I

.field private mBmpRect:Landroid/graphics/Rect;

.field private mCallback:Lcom/scalado/app/ui/Wheel$WheelCallback;

.field private mCenter:Landroid/graphics/Point;

.field private mCurAngle:F

.field private mCurIndex:I

.field private mDown:Z

.field private mDrawMarked:Z

.field private mElemCount:I

.field private mIndicScale:Landroid/graphics/PointF;

.field private mIndicTouchR2:F

.field private mIndicatorBmp:Landroid/graphics/Bitmap;

.field private mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

.field private mIntBuffer:Ljava/nio/ByteBuffer;

.field private mMagBmp:Landroid/graphics/Bitmap;

.field private mMagBmp2:Landroid/graphics/Bitmap;

.field private mMagnifierSize:Lcom/scalado/base/Size;

.field private mMarkedIndex:I

.field mMatrix:Landroid/graphics/Matrix;

.field private mNumRevolutions:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

.field private mPivot:I

.field private mPrevIndex:I

.field private mRadiusX:I

.field private mRadiusY:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRelCenter:Landroid/graphics/PointF;

.field private mRelIndicatorExtraY:F

.field private mRelIndicatorY:F

.field private mRelR:F

.field private mRelRimW:F

.field private mRimH:F

.field private mRimW:F

.field private mThetaIvl:D

.field private mThetaMax:D

.field private mThetaMin:D

.field private mThetaOffset:D

.field private mWheelBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 7
    .parameter "uiManager"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41c8

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 112
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 36
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    .line 43
    iput v1, p0, Lcom/scalado/app/ui/Wheel;->mRimW:F

    .line 44
    iput v1, p0, Lcom/scalado/app/ui/Wheel;->mRimH:F

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    .line 60
    iput v5, p0, Lcom/scalado/app/ui/Wheel;->mMarkedIndex:I

    .line 68
    iput v6, p0, Lcom/scalado/app/ui/Wheel;->mAngleMode:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/scalado/app/ui/Wheel;->mNumRevolutions:I

    .line 82
    new-instance v0, Lcom/scalado/app/ui/PaintConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    .line 83
    new-instance v0, Lcom/scalado/app/ui/PaintConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/PaintConfig;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    .line 84
    iput-boolean v2, p0, Lcom/scalado/app/ui/Wheel;->mDrawMarked:Z

    .line 89
    iput-boolean v2, p0, Lcom/scalado/app/ui/Wheel;->mDown:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iput v5, v0, Lcom/scalado/app/ui/PaintConfig;->mColor:I

    .line 122
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    const/16 v1, 0xff

    iput v1, v0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    .line 123
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    const/high16 v1, 0x40a0

    const/high16 v2, -0x4000

    const/high16 v3, 0x4000

    const/high16 v4, -0x100

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/app/ui/PaintConfig;->setShadowLayer(FFFI)V

    .line 124
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iput-boolean v6, v0, Lcom/scalado/app/ui/PaintConfig;->mAntiAlias:Z

    .line 125
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 127
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iput v5, v0, Lcom/scalado/app/ui/PaintConfig;->mColor:I

    .line 128
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    const/16 v1, 0x80

    iput v1, v0, Lcom/scalado/app/ui/PaintConfig;->mAlpha:I

    .line 129
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iput-boolean v6, v0, Lcom/scalado/app/ui/PaintConfig;->mAntiAlias:Z

    .line 130
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v1, v0, Lcom/scalado/app/ui/PaintConfig;->mStyle:Landroid/graphics/Paint$Style;

    .line 132
    const-wide v0, -0x400f40da6b1b010dL

    iput-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    .line 133
    const-wide v0, 0x3ff0bf2594e4fef3L

    iput-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaMax:D

    .line 134
    return-void
.end method

.method private final angleToIndex(D)I
    .locals 3
    .parameter "angle"

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, index:I
    iget-wide v1, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    cmpg-double v1, p1, v1

    if-gez v1, :cond_1

    .line 580
    const/4 v0, 0x0

    .line 586
    :goto_0
    iget v1, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    if-lt v0, v1, :cond_0

    .line 587
    iget v1, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v1, -0x1

    .line 589
    :cond_0
    return v0

    .line 583
    :cond_1
    iget-wide v1, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    sub-double/2addr p1, v1

    .line 584
    iget-wide v1, p0, Lcom/scalado/app/ui/Wheel;->mThetaIvl:D

    div-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    goto :goto_0
.end method

.method private contains(II)Z
    .locals 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 531
    iget-object v12, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int v12, p1, v12

    int-to-float v5, v12

    .line 532
    .local v5, dx:F
    iget-object v12, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v12, p2, v12

    int-to-float v6, v12

    .line 533
    .local v6, dy:F
    iget v12, p0, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    iget v13, p0, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    mul-int/2addr v12, v13

    int-to-float v9, v12

    .line 534
    .local v9, rx2:F
    iget v12, p0, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    iget v13, p0, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    mul-int/2addr v12, v13

    int-to-float v11, v12

    .line 535
    .local v11, ry2:F
    mul-float v12, v5, v5

    mul-float/2addr v12, v11

    mul-float v13, v6, v6

    mul-float/2addr v13, v9

    add-float v4, v12, v13

    .line 536
    .local v4, d:F
    const/high16 v12, 0x4000

    mul-float/2addr v12, v9

    mul-float/2addr v12, v11

    cmpg-float v12, v4, v12

    if-gtz v12, :cond_0

    .line 537
    const/4 v12, 0x1

    .line 553
    :goto_0
    return v12

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/scalado/app/ui/Wheel;->getIndex()I

    move-result v7

    .line 540
    .local v7, index:I
    invoke-direct {p0, v7}, Lcom/scalado/app/ui/Wheel;->getIndicatorAngle(I)F

    move-result v1

    .line 543
    .local v1, angle:F
    iget v12, p0, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorExtraY:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 544
    .local v8, rx:F
    iget v12, p0, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorExtraY:F

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    add-float v10, v12, v13

    .line 545
    .local v10, ry:F
    iget-object v12, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v8

    add-float v2, v12, v13

    .line 546
    .local v2, cx:F
    iget-object v12, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v10

    add-float v3, v12, v13

    .line 547
    .local v3, cy:F
    move/from16 v0, p1

    int-to-float v12, v0

    sub-float v5, v12, v2

    .line 548
    move/from16 v0, p2

    int-to-float v12, v0

    sub-float v6, v12, v3

    .line 549
    mul-float v12, v5, v5

    mul-float v13, v6, v6

    add-float v4, v12, v13

    .line 550
    iget v12, p0, Lcom/scalado/app/ui/Wheel;->mIndicTouchR2:F

    cmpg-float v12, v4, v12

    if-gtz v12, :cond_1

    .line 551
    const/4 v12, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private createBitmap(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 518
    const-string v0, "Wheel"

    const-string v1, "creating bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    .line 520
    const-string v0, "Wheel"

    const-string v1, "%dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_2
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;F)V
    .locals 5
    .parameter "canvas"
    .parameter "angle"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 469
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 470
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 471
    const/high16 v1, 0x43b4

    mul-float/2addr v1, p2

    float-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L

    div-double/2addr v1, v3

    const-wide v3, 0x4056800000000000L

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 472
    .local v0, rotAngle:F
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 473
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 474
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;F)V
    .locals 1
    .parameter "canvas"
    .parameter "angle"

    .prologue
    .line 477
    const v0, 0x3d80adfd

    .line 478
    .local v0, dAngle:F
    invoke-direct {p0, p1, p2, v0}, Lcom/scalado/app/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;FF)V

    .line 479
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;FF)V
    .locals 19
    .parameter "canvas"
    .parameter "angle"
    .parameter "deltaAngle"

    .prologue
    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    .line 484
    .local v8, centerX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    .line 485
    .local v9, centerY:F
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 486
    .local v10, clipPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/scalado/app/ui/Wheel;->mRimW:F

    sub-float v11, v2, v7

    .line 487
    .local v11, rx0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/scalado/app/ui/Wheel;->mRimH:F

    sub-float v13, v2, v7

    .line 488
    .local v13, ry0:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v12, v2

    .line 489
    .local v12, rxc:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    add-int/lit8 v2, v2, 0xa

    int-to-float v14, v2

    .line 490
    .local v14, ryc:F
    sub-float v2, p2, p3

    float-to-double v0, v2

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v11

    add-float v3, v8, v2

    .line 491
    .local v3, x0:F
    sub-float v2, p2, p3

    float-to-double v0, v2

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v13

    add-float v4, v9, v2

    .line 492
    .local v4, y0:F
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 495
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v12

    add-float v15, v8, v2

    .line 496
    .local v15, x:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v14

    add-float v16, v9, v2

    .line 498
    .local v16, y:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v11

    add-float v3, v8, v2

    .line 499
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    mul-float/2addr v2, v13

    add-float v4, v9, v2

    .line 500
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/scalado/app/ui/Wheel;->mRimW:F

    add-float/2addr v7, v11

    const/high16 v17, 0x41a0

    add-float v7, v7, v17

    mul-float/2addr v2, v7

    add-float v5, v8, v2

    .line 501
    .local v5, x1:F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/scalado/app/ui/Wheel;->mRimH:F

    add-float/2addr v7, v13

    const/high16 v17, 0x41a0

    add-float v7, v7, v17

    mul-float/2addr v2, v7

    add-float v6, v9, v2

    .line 502
    .local v6, y1:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 503
    return-void
.end method

.method private final getAngle(DD)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr p1, v2

    .line 624
    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr p3, v2

    .line 634
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v0, v2

    .line 635
    .local v0, angle:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 636
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 638
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Wheel;->wrapAngle(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private final getAngleRestricted(DD)D
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    sub-double/2addr p1, v2

    .line 643
    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    sub-double/2addr p3, v2

    .line 653
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v0, v2

    .line 654
    .local v0, angle:D
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 655
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 657
    :cond_0
    return-wide v0
.end method

.method private getImage()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mCallback:Lcom/scalado/app/ui/Wheel$WheelCallback;

    invoke-interface {v1}, Lcom/scalado/app/ui/Wheel$WheelCallback;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 417
    .local v0, img:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/ui/Wheel;->createBitmap(II)V

    .line 418
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 419
    return-void
.end method

.method private final getIndex()I
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/scalado/app/ui/Wheel;->mCurIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getIndicatorAngle(I)F
    .locals 5
    .parameter "index"

    .prologue
    .line 618
    int-to-double v1, p1

    iget-wide v3, p0, Lcom/scalado/app/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v1, v3

    iget-wide v3, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    add-double/2addr v1, v3

    const-wide v3, 0x3ff921fb54442d18L

    add-double/2addr v1, v3

    double-to-float v0, v1

    .line 619
    .local v0, angle:F
    return v0
.end method

.method private setPosition(IIII)V
    .locals 29
    .parameter "x"
    .parameter "y"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/scalado/app/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v8

    .line 246
    .local v8, dims:Lcom/scalado/base/Size;
    sub-int v18, p1, p3

    .line 247
    .local v18, x0:I
    sub-int v21, p2, p4

    .line 248
    .local v21, y0:I
    add-int v19, p1, p3

    .line 249
    .local v19, x1:I
    add-int v22, p2, p4

    .line 250
    .local v22, y1:I
    new-instance v14, Landroid/graphics/Rect;

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v14, r:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 254
    .local v12, minX:I
    const/4 v13, 0x0

    .line 255
    .local v13, minY:I
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    .line 256
    .local v10, maxX:I
    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    .line 257
    .local v11, maxY:I
    const/4 v5, 0x0

    .line 258
    .local v5, dLeftX:I
    const/4 v7, 0x0

    .line 259
    .local v7, dTopY:I
    const/4 v6, 0x0

    .line 260
    .local v6, dRightX:I
    const/4 v4, 0x0

    .line 261
    .local v4, dBottomY:I
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_0

    .line 262
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v5, v12, v24

    .line 264
    :cond_0
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_1

    .line 265
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v7, v13, v24

    .line 267
    :cond_1
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v10, :cond_2

    .line 268
    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    move/from16 v0, v24

    neg-int v6, v0

    .line 270
    :cond_2
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v11, :cond_3

    .line 271
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v11

    move/from16 v0, v24

    neg-int v4, v0

    .line 273
    :cond_3
    add-int v24, v5, v6

    add-int v25, v7, v4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v24, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 277
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    .line 278
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    .line 279
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    .line 281
    new-instance v24, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v15, v24, v25

    .line 285
    .local v15, rbxs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    mul-float v16, v24, v25

    .line 286
    .local v16, rbys:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelR:F

    move/from16 v24, v0

    div-float v17, v15, v24

    .line 287
    .local v17, wbs:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelR:F

    move/from16 v24, v0

    div-float v9, v16, v24

    .line 288
    .local v9, hbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    mul-float v20, v17, v24

    .line 289
    .local v20, xcbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    mul-float v23, v9, v24

    .line 290
    .local v23, ycbs:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v17

    sub-float v25, v25, v20

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mCenter:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v9

    sub-float v25, v25, v23

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelR:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRadiusX:I

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelR:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRadiusY:I

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelRimW:F

    move/from16 v24, v0

    mul-float v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRimW:F

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelRimW:F

    move/from16 v24, v0

    mul-float v24, v24, v9

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mRimH:F

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRimW:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRimH:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->inset(FF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicScale:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorExtraY:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x4000

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mIndicTouchR2:F

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicTouchR2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/ui/Wheel;->mIndicTouchR2:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/scalado/app/ui/Wheel;->mIndicTouchR2:F

    .line 312
    const-string v24, "Wheel"

    const-string v25, "mRect = (%d,%d) %dx%d"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v24, "Wheel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mRect AR = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method private turnToCenter(D)D
    .locals 11
    .parameter "angle"

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/ui/Wheel;->wrapAngle(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double p1, v7

    .line 567
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 568
    .local v5, x:F
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 569
    .local v6, y:F
    neg-float v3, v5

    .line 570
    .local v3, ux:F
    neg-float v4, v6

    .line 571
    .local v4, uy:F
    const/4 v7, 0x0

    mul-float/2addr v7, v3

    const/high16 v8, -0x4080

    mul-float/2addr v8, v4

    add-float v2, v7, v8

    .line 572
    .local v2, uv:F
    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-double v9, v9

    mul-double v0, v7, v9

    .line 573
    .local v0, rad:D
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Wheel;->wrapAngle(D)D

    move-result-wide v0

    .line 574
    return-wide v0
.end method

.method private updateAngleParams()V
    .locals 4

    .prologue
    .line 525
    iget-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaMax:D

    iget-wide v2, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaIvl:D

    .line 526
    iget-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    iput-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    .line 527
    iget-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Wheel;->wrapAngle(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    .line 528
    return-void
.end method

.method private final wrapAngle(D)D
    .locals 5
    .parameter "angle"

    .prologue
    const-wide/16 v3, 0x0

    const-wide v1, 0x401921fb54442d18L

    .line 593
    :cond_0
    :goto_0
    cmpg-double v0, p1, v3

    if-ltz v0, :cond_1

    cmpl-double v0, p1, v1

    if-ltz v0, :cond_3

    .line 594
    :cond_1
    cmpg-double v0, p1, v3

    if-gez v0, :cond_2

    .line 595
    add-double/2addr p1, v1

    goto :goto_0

    .line 596
    :cond_2
    cmpl-double v0, p1, v1

    if-ltz v0, :cond_0

    .line 597
    sub-double/2addr p1, v1

    goto :goto_0

    .line 600
    :cond_3
    return-wide p1
.end method

.method private final wrapIndex(II)I
    .locals 0
    .parameter "index"
    .parameter "size"

    .prologue
    .line 604
    if-gez p1, :cond_1

    .line 605
    const/4 p1, 0x0

    .line 609
    :cond_0
    :goto_0
    return p1

    .line 606
    :cond_1
    if-lt p1, p2, :cond_0

    .line 607
    add-int/lit8 p1, p2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, -0x1

    const-wide v7, 0x3ff921fb54442d18L

    const/4 v5, 0x0

    .line 422
    iget-boolean v3, p0, Lcom/scalado/app/ui/Wheel;->mVisible:Z

    if-nez v3, :cond_0

    .line 465
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 427
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 428
    .local v1, clipPath:Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 429
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mRectF:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 430
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 431
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 432
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v5, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 436
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 439
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mWheelBmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mBmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v5, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 441
    invoke-direct {p0}, Lcom/scalado/app/ui/Wheel;->getIndex()I

    move-result v2

    .line 445
    .local v2, index:I
    int-to-double v3, v2

    iget-wide v5, p0, Lcom/scalado/app/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    add-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 447
    .local v0, angle:F
    iget v3, p0, Lcom/scalado/app/ui/Wheel;->mMarkedIndex:I

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lcom/scalado/app/ui/Wheel;->mDrawMarked:Z

    if-eqz v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 450
    iget v3, p0, Lcom/scalado/app/ui/Wheel;->mMarkedIndex:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/scalado/app/ui/Wheel;->mThetaIvl:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/scalado/app/ui/Wheel;->mThetaOffset:D

    add-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-float v0, v3

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;F)V

    .line 452
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 457
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/ui/Wheel;->drawIndicator(Landroid/graphics/Canvas;F)V

    goto :goto_0

    .line 434
    .end local v0           #angle:F
    .end local v2           #index:I
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v5, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 460
    .restart local v0       #angle:F
    .restart local v2       #index:I
    :cond_3
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    iget-object v3, p0, Lcom/scalado/app/ui/Wheel;->mPaintCfg:Lcom/scalado/app/ui/PaintConfig;

    iget-object v4, p0, Lcom/scalado/app/ui/Wheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/PaintConfig;->apply(Landroid/graphics/Paint;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/scalado/app/ui/Wheel;->getIndicatorAngle(I)F

    move-result v0

    .line 463
    invoke-direct {p0, p1, v0}, Lcom/scalado/app/ui/Wheel;->drawPointer(Landroid/graphics/Canvas;F)V

    goto :goto_0
.end method

.method public getIndicatorExtraY()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorExtraY:F

    return v0
.end method

.method public getRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dst"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    return-void
.end method

.method public markPosition(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 220
    iput p1, p0, Lcom/scalado/app/ui/Wheel;->mMarkedIndex:I

    .line 221
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    iget-boolean v7, p0, Lcom/scalado/app/ui/Wheel;->mVisible:Z

    if-nez v7, :cond_0

    .line 391
    :goto_0
    return v5

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 356
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 358
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7

    .line 359
    invoke-direct {p0, v3, v4}, Lcom/scalado/app/ui/Wheel;->contains(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 362
    :cond_1
    iput-boolean v6, p0, Lcom/scalado/app/ui/Wheel;->mDown:Z

    .line 363
    const/4 v7, -0x1

    iput v7, p0, Lcom/scalado/app/ui/Wheel;->mPrevIndex:I

    .line 367
    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp2:Landroid/graphics/Bitmap;

    .line 370
    int-to-double v7, v3

    int-to-double v9, v4

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/scalado/app/ui/Wheel;->getAngleRestricted(DD)D

    move-result-wide v0

    .line 371
    .local v0, angle:D
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Wheel;->angleToIndex(D)I

    move-result v2

    .line 372
    .local v2, index:I
    iget v7, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    invoke-direct {p0, v2, v7}, Lcom/scalado/app/ui/Wheel;->wrapIndex(II)I

    move-result v2

    .line 374
    iget v7, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v2, v7, v2

    .line 375
    invoke-direct {p0, v3, v4}, Lcom/scalado/app/ui/Wheel;->contains(II)Z

    move-result v7

    if-nez v7, :cond_3

    .line 376
    iget v2, p0, Lcom/scalado/app/ui/Wheel;->mCurIndex:I

    .line 379
    :cond_3
    iget v7, p0, Lcom/scalado/app/ui/Wheel;->mPrevIndex:I

    if-eq v2, v7, :cond_5

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 381
    iget-object v7, p0, Lcom/scalado/app/ui/Wheel;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v7, p0, v2}, Lcom/scalado/app/ui/UiManager;->onIndexFocused(Lcom/scalado/app/ui/Widget;I)V

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/ui/Wheel;->getImage()V

    .line 384
    iput v2, p0, Lcom/scalado/app/ui/Wheel;->mPrevIndex:I

    .line 386
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_6

    .line 387
    iput-boolean v5, p0, Lcom/scalado/app/ui/Wheel;->mDown:Z

    .line 388
    iget-object v5, p0, Lcom/scalado/app/ui/Wheel;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v5, p0, v2}, Lcom/scalado/app/ui/UiManager;->onIndexSelected(Lcom/scalado/app/ui/Widget;I)V

    .line 390
    :cond_6
    iput v2, p0, Lcom/scalado/app/ui/Wheel;->mCurIndex:I

    move v5, v6

    .line 391
    goto :goto_0

    .line 364
    .end local v0           #angle:D
    .end local v2           #index:I
    :cond_7
    iget-boolean v7, p0, Lcom/scalado/app/ui/Wheel;->mDown:Z

    if-nez v7, :cond_2

    goto :goto_0
.end method

.method public select(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 210
    iput p1, p0, Lcom/scalado/app/ui/Wheel;->mCurIndex:I

    .line 211
    return-void
.end method

.method public setAngleInterval(DD)V
    .locals 0
    .parameter "angleMin"
    .parameter "angleMax"

    .prologue
    .line 326
    iput-wide p1, p0, Lcom/scalado/app/ui/Wheel;->mThetaMin:D

    .line 327
    iput-wide p3, p0, Lcom/scalado/app/ui/Wheel;->mThetaMax:D

    .line 328
    invoke-direct {p0}, Lcom/scalado/app/ui/Wheel;->updateAngleParams()V

    .line 329
    return-void
.end method

.method public setCallback(Lcom/scalado/app/ui/Wheel$WheelCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/scalado/app/ui/Wheel;->mCallback:Lcom/scalado/app/ui/Wheel$WheelCallback;

    .line 202
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/ui/Wheel;->createBitmap(II)V

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 401
    .local v0, size:I
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 402
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 405
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 406
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/scalado/app/ui/Wheel;->mIntBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_0
.end method

.method public setImage(Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "img"

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 411
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/ui/Wheel;->createBitmap(II)V

    .line 412
    iget-object v1, p0, Lcom/scalado/app/ui/Wheel;->mMagBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 413
    return-void
.end method

.method public setLayoutParams(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFFF)V
    .locals 1
    .parameter "wheelBitmap"
    .parameter "indicator"
    .parameter "relCenter"
    .parameter "relR"
    .parameter "relRimW"
    .parameter "indicatorOffsetY"
    .parameter "indicatorExtraY"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/scalado/app/ui/Wheel;->mWheelBmp:Landroid/graphics/Bitmap;

    .line 167
    iput-object p2, p0, Lcom/scalado/app/ui/Wheel;->mIndicatorBmp:Landroid/graphics/Bitmap;

    .line 168
    iget-object v0, p0, Lcom/scalado/app/ui/Wheel;->mRelCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 169
    iput p4, p0, Lcom/scalado/app/ui/Wheel;->mRelR:F

    .line 170
    iput p5, p0, Lcom/scalado/app/ui/Wheel;->mRelRimW:F

    .line 171
    iput p6, p0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorY:F

    .line 172
    iput p7, p0, Lcom/scalado/app/ui/Wheel;->mRelIndicatorExtraY:F

    .line 173
    return-void
.end method

.method public setPivot(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 191
    iput p1, p0, Lcom/scalado/app/ui/Wheel;->mPivot:I

    .line 192
    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/scalado/app/ui/Wheel;->setPosition(IIII)V

    .line 232
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 181
    iput p1, p0, Lcom/scalado/app/ui/Wheel;->mElemCount:I

    .line 182
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/scalado/app/ui/Wheel;->updateAngleParams()V

    .line 508
    invoke-super {p0}, Lcom/scalado/app/ui/Widget;->show()V

    .line 509
    return-void
.end method
