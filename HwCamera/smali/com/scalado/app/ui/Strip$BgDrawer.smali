.class Lcom/scalado/app/ui/Strip$BgDrawer;
.super Ljava/lang/Object;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/Strip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgDrawer"
.end annotation


# instance fields
.field private mCurMinRect:Landroid/graphics/Rect;

.field private mCurRect:Landroid/graphics/Rect;

.field private mDrawRectF:Landroid/graphics/RectF;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mInteriorFillPaint:Landroid/graphics/Paint;

.field private mLastDrawn:Landroid/graphics/Rect;

.field private mMaxRect:Landroid/graphics/Rect;

.field private mMinRect:Landroid/graphics/Rect;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/ui/Strip;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/Strip;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter
    .parameter "minRect"
    .parameter "maxRect"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/16 v2, 0x3c

    .line 1455
    iput-object p1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    .line 1445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;

    .line 1446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    .line 1447
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    .line 1448
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    .line 1449
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    .line 1450
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    .line 1451
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    .line 1452
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    .line 1453
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    .line 1456
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1457
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1458
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1459
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1460
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1461
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1462
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1464
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1465
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1466
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1467
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1468
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1470
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1471
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1472
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1473
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1474
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/ui/Strip;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/scalado/app/ui/Strip$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1443
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/ui/Strip$BgDrawer;-><init>(Lcom/scalado/app/ui/Strip;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/ui/Strip$BgDrawer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMaxRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scalado/app/ui/Strip$BgDrawer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/scalado/app/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Strip$BgDrawer;->drawMax(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$900(Lcom/scalado/app/ui/Strip$BgDrawer;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Strip$BgDrawer;->drawMin(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawMax(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4120

    .line 1494
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    #getter for: Lcom/scalado/app/ui/Strip;->mTransParam:F
    invoke-static {v0}, Lcom/scalado/app/ui/Strip;->access$1200(Lcom/scalado/app/ui/Strip;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/Strip$BgDrawer;->update(F)V

    .line 1495
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1496
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1497
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1498
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1499
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    #getter for: Lcom/scalado/app/ui/Strip;->mItemAlpha:I
    invoke-static {v1}, Lcom/scalado/app/ui/Strip;->access$1300(Lcom/scalado/app/ui/Strip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1500
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mInteriorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1501
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1502
    return-void
.end method

.method private drawMin(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4120

    .line 1505
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1506
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1507
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1508
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mLastDrawn:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mMinRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1509
    return-void
.end method

.method private update(F)V
    .locals 4
    .parameter "t"

    .prologue
    .line 1477
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/Strip;->getArea(Landroid/graphics/Rect;)V

    .line 1478
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, src:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1481
    .local v1, trg:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    #getter for: Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;
    invoke-static {v2}, Lcom/scalado/app/ui/Strip;->access$1100(Lcom/scalado/app/ui/Strip;)Lcom/scalado/app/ui/StripLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1482
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    iget-object v3, v3, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v3, v3, Lcom/scalado/app/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1483
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    #getter for: Lcom/scalado/app/ui/Strip;->mDstLayout:Lcom/scalado/app/ui/StripLayout;
    invoke-static {v2}, Lcom/scalado/app/ui/Strip;->access$1100(Lcom/scalado/app/ui/Strip;)Lcom/scalado/app/ui/StripLayout;

    move-result-object v2

    iget-object v1, v2, Lcom/scalado/app/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 1490
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurMinRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->mCurRect:Landroid/graphics/Rect;

    invoke-static {v2, v1, p1, v3}, Lcom/scalado/app/ui/AnimUtils;->interpolateRects(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 1491
    return-void

    .line 1485
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/ui/Strip$BgDrawer;->this$0:Lcom/scalado/app/ui/Strip;

    iget-object v2, v2, Lcom/scalado/app/ui/Strip;->mLayout:Lcom/scalado/app/ui/StripLayout;

    iget-object v1, v2, Lcom/scalado/app/ui/StripLayout;->mExtendedArea:Landroid/graphics/Rect;

    .line 1486
    const/high16 p1, 0x3f80

    goto :goto_0
.end method
