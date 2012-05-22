.class public Lcom/scalado/app/ui/Button;
.super Lcom/scalado/app/ui/Widget;
.source "Button.java"


# static fields
.field private static final DOWN:I = 0x1

.field private static final IDLE:I


# instance fields
.field private mBgCol:I

.field private mBgOutlinePaint:Landroid/graphics/Paint;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mCenter:Landroid/graphics/Point;

.field private mDrawRectF:Landroid/graphics/RectF;

.field private mFitBitmap:Z

.field private mPressedBgCol:I

.field private mPressedBitmap:Landroid/graphics/Bitmap;

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mSizeRect:Landroid/graphics/Rect;

.field private mState:I

.field private mText:Ljava/lang/String;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mTxtRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 8
    .parameter "uiManager"

    .prologue
    const/high16 v3, -0x4000

    const/16 v7, 0xff

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    const v4, -0x777778

    .line 43
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mRectF:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mDrawRectF:Landroid/graphics/RectF;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtRect:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mSizeRect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mBitmapRect:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    .line 32
    iput-boolean v5, p0, Lcom/scalado/app/ui/Button;->mFitBitmap:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/ui/Button;->mState:I

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 50
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    const/16 v0, 0x80

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/Button;->mBgCol:I

    .line 65
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/Button;->mPressedBgCol:I

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    return-void
.end method

.method private contains(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private updateRect()V
    .locals 8

    .prologue
    const v7, 0x3dcccccd

    .line 208
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/ui/Button;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 210
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/scalado/app/ui/Button;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/scalado/app/ui/Button;->mTxtRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 213
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v0, v2

    .line 214
    .local v0, dx:I
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v1, v2

    .line 215
    .local v1, dy:I
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 216
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 217
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mSizeRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4120

    .line 177
    iget-boolean v0, p0, Lcom/scalado/app/ui/Button;->mVisible:Z

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p0, Lcom/scalado/app/ui/Button;->mState:I

    if-ne v0, v7, :cond_6

    .line 181
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scalado/app/ui/Button;->mPressedBgCol:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 186
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPopupChild:Lcom/scalado/app/ui/Widget;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPopupChild:Lcom/scalado/app/ui/Widget;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Widget;->getArea(Landroid/graphics/Rect;)V

    .line 188
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/scalado/app/ui/Button;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->union(FFFF)V

    .line 191
    :cond_2
    iget-boolean v0, p0, Lcom/scalado/app/ui/Button;->mFitBitmap:Z

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mDrawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mBgOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    :cond_3
    iget v0, p0, Lcom/scalado/app/ui/Button;->mState:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPressedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scalado/app/ui/Button;->mBgCol:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 199
    :cond_7
    iget v0, p0, Lcom/scalado/app/ui/Button;->mState:I

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPressedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPressedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/scalado/app/ui/Button;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dst"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mSizeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPopupChild:Lcom/scalado/app/ui/Widget;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mPopupChild:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 145
    iget-boolean v4, p0, Lcom/scalado/app/ui/Button;->mVisible:Z

    if-nez v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 149
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 152
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/ui/Button;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iput v3, p0, Lcom/scalado/app/ui/Button;->mState:I

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 166
    iget-object v4, p0, Lcom/scalado/app/ui/Button;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, p0}, Lcom/scalado/app/ui/UiManager;->onSelected(Lcom/scalado/app/ui/Widget;)V

    .line 168
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 170
    :cond_4
    iput v2, p0, Lcom/scalado/app/ui/Button;->mState:I

    .line 172
    :cond_5
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    move v2, v3

    .line 173
    goto :goto_0
.end method

.method public setBackgroundColor(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 77
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/Button;->mBgCol:I

    .line 78
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/scalado/app/ui/Button;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 120
    invoke-direct {p0}, Lcom/scalado/app/ui/Button;->updateRect()V

    .line 121
    return-void
.end method

.method public setPressedBackgroundColor(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 81
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/ui/Button;->mPressedBgCol:I

    .line 82
    return-void
.end method

.method public setPressedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/scalado/app/ui/Button;->mPressedBitmap:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 8
    .parameter "rect"

    .prologue
    const v7, 0x3dcccccd

    .line 131
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 133
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mCenter:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x3f40

    iget-object v6, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 136
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    iget-boolean v2, p0, Lcom/scalado/app/ui/Button;->mFitBitmap:Z

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 139
    .local v0, idx:I
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 140
    .local v1, idy:I
    iget-object v2, p0, Lcom/scalado/app/ui/Button;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 142
    .end local v0           #idx:I
    .end local v1           #idy:I
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/scalado/app/ui/Button;->mSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/scalado/app/ui/Button;->mText:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/scalado/app/ui/Button;->updateRect()V

    .line 96
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/scalado/app/ui/Button;->mTxtPaint:Landroid/graphics/Paint;

    .line 86
    invoke-direct {p0}, Lcom/scalado/app/ui/Button;->updateRect()V

    .line 87
    return-void
.end method
