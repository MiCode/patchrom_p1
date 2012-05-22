.class public Lcom/android/hwcamera/hwui/RotateRecordingTime;
.super Landroid/widget/FrameLayout;
.source "RotateRecordingTime.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateRecordingTime"


# instance fields
.field private mOrientation:I

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateRecordingTime;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 70
    .local v1, width:F
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateRecordingTime;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 71
    .local v0, height:F
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    return-void

    .line 75
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextSize:F

    const/high16 v3, 0x4120

    add-float/2addr v2, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateRecordingTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextView:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextSize:F

    .line 47
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 51
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_1

    .line 52
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    .line 53
    iget v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mOrientation:I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "RotateRecordingTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateRecordingTime;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    return-void
.end method
