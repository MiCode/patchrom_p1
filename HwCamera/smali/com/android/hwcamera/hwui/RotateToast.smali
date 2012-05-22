.class public Lcom/android/hwcamera/hwui/RotateToast;
.super Ljava/lang/Object;
.source "RotateToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateToast"


# instance fields
.field mContext:Landroid/content/Context;

.field private mOrigenToast:Landroid/widget/Toast;

.field private mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mContext:Landroid/content/Context;

    .line 28
    const-string v1, " "

    invoke-static {p1, v1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    .line 29
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 30
    .local v0, lay:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 31
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    .line 32
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 34
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 35
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 36
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 38
    return-void
.end method

.method public static makeRotateText(Landroid/content/Context;II)Lcom/android/hwcamera/hwui/RotateToast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 40
    new-instance v0, Lcom/android/hwcamera/hwui/RotateToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 41
    .local v0, result:Lcom/android/hwcamera/hwui/RotateToast;
    iget-object v1, v0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 73
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 82
    return-void
.end method

.method public setGravity(III)V
    .locals 1
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 76
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 50
    move v0, p1

    .line 51
    .local v0, degree:I
    div-int/lit8 v0, v0, 0x5a

    .line 52
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 53
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    return-void
.end method
