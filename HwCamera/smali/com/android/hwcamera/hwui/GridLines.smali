.class public Lcom/android/hwcamera/hwui/GridLines;
.super Landroid/view/View;
.source "GridLines.java"


# static fields
.field private static final VISABLE_ANIMATION_DURATION:I = 0x96


# instance fields
.field private bAnimation:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0xe6

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 34
    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 35
    .local v10, mHeight:I
    invoke-super {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 37
    .local v11, mWith:I
    div-int/lit8 v9, v11, 0x3

    .line 38
    .local v9, mGridWith:I
    div-int/lit8 v8, v10, 0x3

    .line 39
    .local v8, mGridHeight:I
    const-string v0, "GridLines"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWith="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v6, Landroid/graphics/Point;

    const/16 v0, 0x64

    invoke-direct {v6, v9, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    .local v6, firstPoint:Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    add-int/lit8 v0, v10, -0x64

    invoke-direct {v7, v9, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 43
    .local v7, firstPoint1:Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 44
    iget v0, v6, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 45
    iget v0, v7, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 46
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    const/16 v0, 0x28

    iput v0, v6, Landroid/graphics/Point;->x:I

    .line 49
    iput v8, v6, Landroid/graphics/Point;->y:I

    .line 50
    add-int/lit8 v0, v11, -0x28

    iput v0, v7, Landroid/graphics/Point;->x:I

    .line 51
    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 52
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    iget v0, v6, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v6, Landroid/graphics/Point;->y:I

    .line 55
    iget v0, v7, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v7, Landroid/graphics/Point;->y:I

    .line 56
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public setAnimationState(Z)V
    .locals 0
    .parameter "animationState"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    .line 31
    return-void
.end method

.method public setVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0x96

    const/high16 v4, 0x3f80

    const v3, 0x3e99999a

    .line 61
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/GridLines;->bAnimation:Z

    if-eqz v2, :cond_1

    .line 63
    if-nez p1, :cond_2

    .line 64
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 65
    .local v0, animatIn:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 66
    invoke-super {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    .end local v0           #animatIn:Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .local v1, animatOut:Landroid/view/animation/Animation;
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    invoke-super {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
