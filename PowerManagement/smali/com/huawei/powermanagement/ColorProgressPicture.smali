.class public Lcom/huawei/powermanagement/ColorProgressPicture;
.super Landroid/view/View;
.source "ColorProgressPicture.java"


# instance fields
.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private progress:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint1:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint2:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 33
    iget-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint1:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ColorProgressPicture;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/huawei/powermanagement/ColorProgressPicture;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    iget-object v0, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint2:Landroid/graphics/Paint;

    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-wide v2, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->progress:D

    invoke-virtual {p0}, Lcom/huawei/powermanagement/ColorProgressPicture;->getWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v3, v2

    invoke-virtual {p0}, Lcom/huawei/powermanagement/ColorProgressPicture;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/huawei/powermanagement/ColorProgressPicture;->mPaint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    return-void
.end method
