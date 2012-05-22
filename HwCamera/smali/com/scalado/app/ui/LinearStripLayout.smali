.class public Lcom/scalado/app/ui/LinearStripLayout;
.super Lcom/scalado/app/ui/StripLayout;
.source "LinearStripLayout.java"


# instance fields
.field private mGeomLength:F

.field private mP0:Landroid/graphics/Point;

.field private mP1:Landroid/graphics/Point;

.field private mVec0:[F

.field private mVec1:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 12
    invoke-direct {p0}, Lcom/scalado/app/ui/StripLayout;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    .line 7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    .line 8
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec0:[F

    .line 9
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec1:[F

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mCyclic:Z

    .line 15
    return-void
.end method

.method private final initDiffVector(Landroid/graphics/Point;Landroid/graphics/Point;[F)V
    .locals 3
    .parameter "p0"
    .parameter "p1"
    .parameter "vec"

    .prologue
    .line 42
    const/4 v0, 0x0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p3, v0

    .line 43
    const/4 v0, 0x1

    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, p3, v0

    .line 44
    return-void
.end method

.method private final projectOnVector([F[F)F
    .locals 4
    .parameter "u"
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p2}, Lcom/scalado/app/ui/LinearStripLayout;->vectorLength([F)F

    move-result v0

    .line 52
    .local v0, vLength:F
    aget v1, p1, v2

    aget v2, p2, v2

    mul-float/2addr v1, v2

    aget v2, p1, v3

    aget v3, p2, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    return v1
.end method

.method private final vectorLength([F)F
    .locals 3
    .parameter "vec"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    aget v0, p1, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p1, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected getCenter()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 57
    .local v0, c:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 58
    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 59
    return-object v0
.end method

.method protected getDelta(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4
    .parameter "p0"
    .parameter "p1"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec0:[F

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/app/ui/LinearStripLayout;->initDiffVector(Landroid/graphics/Point;Landroid/graphics/Point;[F)V

    .line 36
    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec1:[F

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/ui/LinearStripLayout;->initDiffVector(Landroid/graphics/Point;Landroid/graphics/Point;[F)V

    .line 37
    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec1:[F

    iget-object v2, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec0:[F

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/ui/LinearStripLayout;->projectOnVector([F[F)F

    move-result v0

    .line 38
    .local v0, d:F
    iget v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mGeomLength:F

    div-float v1, v0, v1

    float-to-double v1, v1

    return-wide v1
.end method

.method protected getPosition(Lcom/scalado/app/ui/Item;FLandroid/graphics/Point;)V
    .locals 5
    .parameter "item"
    .parameter "index"
    .parameter "pos"

    .prologue
    const/high16 v4, 0x3f80

    .line 27
    sub-float v2, v4, p2

    iget-object v3, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float v0, v2, v3

    .line 28
    .local v0, x:F
    sub-float v2, v4, p2

    iget-object v3, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float v1, v2, v3

    .line 29
    .local v1, y:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 30
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 31
    return-void
.end method

.method public set(IIII)V
    .locals 3
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 20
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iput p3, v0, Landroid/graphics/Point;->x:I

    .line 21
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 22
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP0:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/scalado/app/ui/LinearStripLayout;->mP1:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec0:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/scalado/app/ui/LinearStripLayout;->initDiffVector(Landroid/graphics/Point;Landroid/graphics/Point;[F)V

    .line 23
    iget-object v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mVec0:[F

    invoke-direct {p0, v0}, Lcom/scalado/app/ui/LinearStripLayout;->vectorLength([F)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/LinearStripLayout;->mGeomLength:F

    .line 24
    return-void
.end method
