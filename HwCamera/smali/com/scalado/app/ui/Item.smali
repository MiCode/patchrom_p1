.class public Lcom/scalado/app/ui/Item;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/Item$ItemConfig;
    }
.end annotation


# instance fields
.field mAnim:Lcom/scalado/app/ui/Interpolation;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

.field mIndex:I

.field mInteractible:Z

.field private mInterpol:Lcom/scalado/app/ui/Interpolation;

.field mOffset:F

.field mOffsetPos:Landroid/graphics/Point;

.field protected mRect:Landroid/graphics/Rect;

.field protected mRectF:Landroid/graphics/RectF;

.field protected mSelected:Z

.field protected mSelectedBitmap:Landroid/graphics/Bitmap;

.field protected mStartPos:Landroid/graphics/Point;

.field protected mStartSize:Lcom/scalado/base/Size;

.field mStrip:Lcom/scalado/app/ui/Strip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/ui/Item;->mInteractible:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/Item;->mSelected:Z

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mRectF:Landroid/graphics/RectF;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/scalado/app/ui/Item$ItemConfig;)V
    .locals 1
    .parameter "cfg"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/ui/Item;->mInteractible:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/Item;->mSelected:Z

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mRectF:Landroid/graphics/RectF;

    .line 39
    iput-object p1, p0, Lcom/scalado/app/ui/Item;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    .line 40
    return-void
.end method

.method public static createDefaultConfig()Lcom/scalado/app/ui/Item$ItemConfig;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/scalado/app/ui/Item$ItemConfig;

    invoke-direct {v0}, Lcom/scalado/app/ui/Item$ItemConfig;-><init>()V

    .line 151
    .local v0, itemCfg:Lcom/scalado/app/ui/Item$ItemConfig;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    .line 152
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v1, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 159
    return-object v0
.end method


# virtual methods
.method public animateFrom(IIIIJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "t"

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    .line 58
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p3, p4}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    .line 59
    new-instance v0, Lcom/scalado/app/ui/Interpolation;

    invoke-direct {v0}, Lcom/scalado/app/ui/Interpolation;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    .line 60
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p5, p6}, Lcom/scalado/app/ui/Interpolation;->startTimed(J)V

    .line 61
    return-void
.end method

.method public animateFrom(IIJ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    .line 52
    new-instance v0, Lcom/scalado/app/ui/Interpolation;

    invoke-direct {v0}, Lcom/scalado/app/ui/Interpolation;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    .line 53
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p3, p4}, Lcom/scalado/app/ui/Interpolation;->startTimed(J)V

    .line 54
    return-void
.end method

.method animationPos(Landroid/graphics/Point;)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v0

    .line 97
    .local v0, x:F
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v1

    .line 98
    .local v1, y:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 99
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 101
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    return-void
.end method

.method animationSize(Lcom/scalado/base/Size;)V
    .locals 5
    .parameter "size"

    .prologue
    .line 104
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p0, Lcom/scalado/app/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v1

    .line 107
    .local v1, w:F
    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    iget-object v3, p0, Lcom/scalado/app/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/scalado/app/ui/Interpolation;->getValue(FF)F

    move-result v0

    .line 109
    .local v0, h:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 110
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 112
    .end local v0           #h:F
    .end local v1           #w:F
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "rect"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scalado/app/ui/Item;->mSelected:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scalado/app/ui/Item;->mSelected:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v5, 0x0

    .line 131
    .local v5, curPaint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mConfig:Lcom/scalado/app/ui/Item$ItemConfig;

    iget-object v5, v0, Lcom/scalado/app/ui/Item$ItemConfig;->mPaint:Landroid/graphics/Paint;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v1, p0, Lcom/scalado/app/ui/Item;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b4

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "canvas"
    .parameter "rect"
    .parameter "selected"

    .prologue
    .line 120
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method index()F
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mStrip:Lcom/scalado/app/ui/Strip;

    iget-object v1, p0, Lcom/scalado/app/ui/Item;->mStrip:Lcom/scalado/app/ui/Strip;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Strip;->curPos()F

    move-result v1

    iget-object v2, p0, Lcom/scalado/app/ui/Item;->mStrip:Lcom/scalado/app/ui/Strip;

    iget v3, p0, Lcom/scalado/app/ui/Item;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/Strip;->getOffset(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Strip;->wrapIndex(F)F

    move-result v0

    return v0
.end method

.method isMoving()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/scalado/app/ui/Item;->mBitmap:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method

.method public setInteractible(Z)V
    .locals 0
    .parameter "interactible"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/scalado/app/ui/Item;->mInteractible:Z

    .line 65
    return-void
.end method

.method protected setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/scalado/app/ui/Item;->mSelected:Z

    .line 77
    return-void
.end method

.method public setSelectedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scalado/app/ui/Item;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 73
    return-void
.end method

.method update(J)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/Interpolation;->update(J)V

    .line 86
    iget-object v0, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Interpolation;->done()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iput-object v1, p0, Lcom/scalado/app/ui/Item;->mInterpol:Lcom/scalado/app/ui/Interpolation;

    .line 88
    iput-object v1, p0, Lcom/scalado/app/ui/Item;->mStartPos:Landroid/graphics/Point;

    .line 89
    iput-object v1, p0, Lcom/scalado/app/ui/Item;->mStartSize:Lcom/scalado/base/Size;

    .line 92
    :cond_0
    return-void
.end method
