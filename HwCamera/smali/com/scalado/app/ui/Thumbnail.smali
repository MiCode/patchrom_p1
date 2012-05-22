.class public Lcom/scalado/app/ui/Thumbnail;
.super Lcom/scalado/app/ui/Item;
.source "Thumbnail.java"


# direct methods
.method public constructor <init>(Lcom/scalado/base/Image;)V
    .locals 1
    .parameter "img"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/ui/Thumbnail;-><init>(Lcom/scalado/base/Image;Lcom/scalado/app/ui/Item$ItemConfig;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Image;Lcom/scalado/app/ui/Item$ItemConfig;)V
    .locals 4
    .parameter "img"
    .parameter "itemCfg"

    .prologue
    .line 15
    invoke-direct {p0, p2}, Lcom/scalado/app/ui/Item;-><init>(Lcom/scalado/app/ui/Item$ItemConfig;)V

    .line 16
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 17
    .local v0, size:Lcom/scalado/base/Size;
    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 25
    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 27
    :cond_1
    return-void
.end method

.method public static createDefaultConfig()Lcom/scalado/app/ui/Item$ItemConfig;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40a0

    const/high16 v5, 0x4000

    const/high16 v4, -0x4000

    const/high16 v3, -0x100

    .line 68
    new-instance v0, Lcom/scalado/app/ui/Item$ItemConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/Item$ItemConfig;-><init>()V

    .line 71
    .local v0, itemCfg:Lcom/scalado/app/ui/Item$ItemConfig;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    .line 72
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 75
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 84
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    return-object v0
.end method


# virtual methods
.method drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 5
    .parameter "canvas"
    .parameter "rect"
    .parameter "selected"

    .prologue
    const/4 v4, 0x2

    .line 50
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    iget-object v2, v2, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    const/4 v0, -0x5

    .line 53
    .local v0, dx:I
    const/4 v1, -0x5

    .line 54
    .local v1, dy:I
    if-eqz p3, :cond_0

    .line 55
    const/16 v0, -0xa

    .line 56
    const/16 v1, -0xa

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 59
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Thumbnail;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    iget-object v3, v3, Lcom/scalado/app/ui/Item$ItemConfig;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    iget-object v2, v2, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 62
    iget-object v2, p0, Lcom/scalado/app/ui/Thumbnail;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Thumbnail;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    iget-object v3, v3, Lcom/scalado/app/ui/Item$ItemConfig;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_1
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public setImage(Lcom/scalado/base/Image;)V
    .locals 3
    .parameter "img"

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 35
    .local v0, size:Lcom/scalado/base/Size;
    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 39
    :cond_0
    return-void
.end method
