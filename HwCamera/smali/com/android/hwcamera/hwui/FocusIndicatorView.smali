.class public Lcom/android/hwcamera/hwui/FocusIndicatorView;
.super Landroid/view/View;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/FocusIndicator;


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusIndicatorView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private setDrawable(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f02008b

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 51
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f02008d

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 41
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f02008c

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setDrawable(I)V

    .line 46
    return-void
.end method
