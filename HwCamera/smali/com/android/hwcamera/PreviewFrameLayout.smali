.class public Lcom/android/hwcamera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    .line 36
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const-wide/high16 v11, 0x3fe0

    const/high16 v10, 0x4000

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, previewWidth:I
    const/4 v1, 0x0

    .line 56
    .local v1, previewHeight:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 69
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 72
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 73
    sub-int/2addr v1, v3

    .line 74
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 75
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v11

    double-to-int v2, v4

    .line 81
    :goto_1
    add-int/2addr v2, v0

    .line 82
    add-int/2addr v1, v3

    .line 86
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 96
    :goto_2
    return-void

    .line 62
    .end local v0           #hPadding:I
    .end local v3           #vPadding:I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 63
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    .line 77
    .restart local v0       #hPadding:I
    .restart local v3       #vPadding:I
    :cond_1
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v11

    double-to-int v1, v4

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_2
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_0
    iget-wide v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 41
    iput-wide p1, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    .line 42
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->requestLayout()V

    .line 44
    :cond_1
    return-void
.end method

.method public showBorder(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 48
    return-void
.end method
