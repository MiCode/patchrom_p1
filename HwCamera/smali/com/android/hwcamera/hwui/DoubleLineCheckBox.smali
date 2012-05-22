.class public Lcom/android/hwcamera/hwui/DoubleLineCheckBox;
.super Landroid/widget/LinearLayout;
.source "DoubleLineCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;
    }
.end annotation


# static fields
.field private static final LAYOUT_LEFT_ARIGN:I = 0xc

.field private static final MINI_HIGHT:I = 0x3c


# instance fields
.field private mCheckBox:Landroid/widget/ImageView;

.field private mCheckBoxState:Z

.field private mContext:Landroid/content/Context;

.field private mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBoxState:Z

    .line 25
    iput-object p1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;-><init>(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    .line 27
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->initdlincheck()V

    .line 28
    return-void
.end method

.method private initdlincheck()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setGravity(I)V

    .line 32
    const v0, 0x7f0200a4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setBackgroundResource(I)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->layoutStyle(Z)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->layoutStyle(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBoxState:Z

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public layoutStyle(Z)V
    .locals 12
    .parameter "leftStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 47
    .local v6, resources:Landroid/content/res/Resources;
    const/high16 v7, 0x4270

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 50
    .local v1, fMinHeightPx:F
    const/high16 v7, 0x4140

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 53
    .local v0, fLeftArginPx:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 54
    .local v3, iMinHeightPx:I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55
    .local v2, iLeftArginPx:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->setMinimumHeight(I)V

    .line 57
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v4, v10, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 59
    .local v4, lpTextContent:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v5, lpcheckBox:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    invoke-virtual {v5, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v4, v2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v5, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    iget-object v7, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {p0, v7, v4}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v7, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {v4, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {v5, v2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    iget-object v7, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v7, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {p0, v7, v4}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCheckBoxState(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBoxState:Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setSummary(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setSummarySize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setSummarySize(F)V

    .line 103
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setTitle(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setTitleSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox;->mdlintext:Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setTitleSize(F)V

    .line 99
    return-void
.end method
