.class public Lcom/scalado/app/rewind/RewindZoomer;
.super Ljava/lang/Object;
.source "RewindZoomer.java"


# instance fields
.field private mBgIndex:I

.field private mCurFaceRect:Landroid/graphics/Rect;

.field private mCurId:I

.field private mCurZoomRect:Landroid/graphics/Rect;

.field private mFaceRectScale:F

.field private mFeathering:I

.field private mFgIndex:I

.field private mFixedMagniferPos:Z

.field private mFixedMagniferSize:Z

.field private mLTW:Lcom/scalado/app/rewind/RewindSession;

.field private mLensRect:Landroid/graphics/Rect;

.field private mMagPreviewRect:Lcom/scalado/base/Rect;

.field private mMagnifierMaxSize:Lcom/scalado/base/Size;

.field private mMagnifierPos:Landroid/graphics/Point;

.field private mMaxTranslation:I

.field private mMaxZoomSize:Lcom/scalado/base/Size;

.field private mNumImages:I

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mReplaceArea:Landroid/graphics/Rect;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mZoomRectFactor:F


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RectTracker;)V
    .locals 2
    .parameter "ltw"
    .parameter "rectTracker"

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagnifierPos:Landroid/graphics/Point;

    .line 26
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mScreenDims:Lcom/scalado/base/Size;

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFaceRectScale:F

    .line 33
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFixedMagniferPos:Z

    .line 34
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFixedMagniferSize:Z

    .line 35
    const/high16 v0, 0x4060

    iput v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mZoomRectFactor:F

    .line 36
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMaxZoomSize:Lcom/scalado/base/Size;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurZoomRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mReplaceArea:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagPreviewRect:Lcom/scalado/base/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLensRect:Landroid/graphics/Rect;

    .line 61
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLTW:Lcom/scalado/app/rewind/RewindSession;

    .line 62
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 63
    return-void
.end method

.method private calculateFeathering(Landroid/graphics/Rect;)I
    .locals 4
    .parameter "r"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFaceRectScale:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 183
    .local v0, feathering:I
    return v0
.end method

.method private calculateMaxTranslation(III)I
    .locals 10
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, maxTranslation:I
    if-eq p1, p2, :cond_0

    .line 166
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 167
    .local v3, r0:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v7, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 168
    .local v4, r1:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 169
    .local v0, dx:F
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 170
    .local v1, dy:F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 171
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v8, p0, Lcom/scalado/app/rewind/RewindZoomer;->mNumImages:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v9, v8}, Lcom/scalado/app/rewind/RectTracker;->deltaX(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 172
    .local v5, xTransl:I
    iget-object v7, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v8, p0, Lcom/scalado/app/rewind/RewindZoomer;->mNumImages:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v9, v8}, Lcom/scalado/app/rewind/RectTracker;->deltaY(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 173
    .local v6, yTransl:I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 174
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 175
    const/16 v7, 0x32

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 177
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v3           #r0:Landroid/graphics/Rect;
    .end local v4           #r1:Landroid/graphics/Rect;
    .end local v5           #xTransl:I
    .end local v6           #yTransl:I
    :cond_0
    return v2
.end method

.method private setReplaceArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mReplaceArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    return-void
.end method

.method private setupLens()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLensRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    new-instance v0, Lcom/scalado/base/Size;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    .line 96
    .local v0, magSize:Lcom/scalado/base/Size;
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFixedMagniferSize:Z

    if-nez v1, :cond_2

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLensRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 105
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFixedMagniferSize:Z

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLensRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/scalado/app/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFixedMagniferPos:Z

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLensRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagnifierPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagnifierPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 111
    :cond_1
    return-void

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    goto :goto_0
.end method

.method private setupRewindParams(III)V
    .locals 1
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "id"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RewindZoomer;->calculateMaxTranslation(III)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMaxTranslation:I

    .line 116
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindZoomer;->calculateFeathering(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFeathering:I

    .line 117
    return-void
.end method

.method private setupZoomRect(IILandroid/graphics/Rect;)V
    .locals 7
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "dstZoomRect"

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, replaceArea:Landroid/graphics/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 122
    .local v2, replaceAreaCAPS:Lcom/scalado/base/Rect;
    if-ne p1, p2, :cond_3

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #replaceArea:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 127
    .restart local v1       #replaceArea:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #replaceArea:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .restart local v1       #replaceArea:Landroid/graphics/Rect;
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v4, zoomRect:Landroid/graphics/Rect;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 134
    .local v0, capsRect:Lcom/scalado/base/Rect;
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 135
    invoke-direct {p0, v2, v2}, Lcom/scalado/app/rewind/RewindZoomer;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 136
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 137
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 139
    iget v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mZoomRectFactor:F

    invoke-static {v4, v5}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 140
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 141
    .local v3, wh:I
    invoke-static {v4, v3, v3}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 143
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mScreenDims:Lcom/scalado/base/Size;

    iget-object v6, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {v4, v5, v6}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 144
    invoke-static {v4, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 145
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mMagPreviewRect:Lcom/scalado/base/Rect;

    invoke-static {v0, v5}, Lcom/scalado/app/rewind/Geom;->setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 147
    if-eqz p3, :cond_2

    .line 148
    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 150
    :cond_2
    return-void

    .line 124
    .end local v0           #capsRect:Lcom/scalado/base/Rect;
    .end local v3           #wh:I
    .end local v4           #zoomRect:Landroid/graphics/Rect;
    :cond_3
    if-eq p1, p2, :cond_0

    iget v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurId:I

    if-ltz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v6, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurId:I

    invoke-virtual {v5, p2, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method private transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mLTW:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 160
    return-void
.end method


# virtual methods
.method public set(IIILandroid/graphics/Rect;)V
    .locals 1
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "id"
    .parameter "faceRect"

    .prologue
    .line 66
    iput p1, p0, Lcom/scalado/app/rewind/RewindZoomer;->mBgIndex:I

    .line 67
    iput p2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFgIndex:I

    .line 68
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    iput p3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurId:I

    .line 70
    return-void
.end method

.method public zoomTo()V
    .locals 5

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v0, enlargedReplaceArea:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mBgIndex:I

    iget v4, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurId:I

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindZoomer;->setReplaceArea(Landroid/graphics/Rect;)V

    .line 79
    iget v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mBgIndex:I

    iget v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFgIndex:I

    iget v4, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/scalado/app/rewind/RewindZoomer;->setupRewindParams(III)V

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v1, zoomRect:Landroid/graphics/Rect;
    iget v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mBgIndex:I

    iget v3, p0, Lcom/scalado/app/rewind/RewindZoomer;->mFgIndex:I

    invoke-direct {p0, v2, v3, v1}, Lcom/scalado/app/rewind/RewindZoomer;->setupZoomRect(IILandroid/graphics/Rect;)V

    .line 84
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindZoomer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindZoomer;->setupLens()V

    .line 87
    return-void
.end method
