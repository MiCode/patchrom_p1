.class public Lcom/android/hwcamera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;,
        Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 83
    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->isPressed()Z

    move-result v0

    .line 84
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 85
    if-nez v0, :cond_1

    .line 107
    new-instance v1, Lcom/android/hwcamera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/hwcamera/ShutterButton$1;-><init>(Lcom/android/hwcamera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 115
    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    .line 117
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;->onShutterButtonLongPressed()V

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 128
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 131
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    .line 69
    return-void
.end method

.method public setOnShutterButtonLongPressListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    .line 73
    return-void
.end method
