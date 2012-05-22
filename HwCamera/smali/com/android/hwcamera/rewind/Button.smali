.class public Lcom/android/hwcamera/rewind/Button;
.super Landroid/widget/ImageView;
.source "Button.java"

# interfaces
.implements Lcom/scalado/app/rewind/ExtWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/rewind/Button$1;,
        Lcom/android/hwcamera/rewind/Button$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_HIDE:I = 0x2

.field private static final MSG_SHOW:I = 0x1


# instance fields
.field private mHandler:Lcom/android/hwcamera/rewind/Button$MyHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Lcom/android/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/rewind/Button$MyHandler;-><init>(Lcom/android/hwcamera/rewind/Button;Lcom/android/hwcamera/rewind/Button$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/rewind/Button;->mHandler:Lcom/android/hwcamera/rewind/Button$MyHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public getRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dst"

    .prologue
    .line 33
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Button;->mHandler:Lcom/android/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 29
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/rewind/Button;->mHandler:Lcom/android/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 25
    return-void
.end method
