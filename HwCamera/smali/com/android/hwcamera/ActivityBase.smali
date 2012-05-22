.class public abstract Lcom/android/hwcamera/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# static fields
.field private static LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityBase"


# instance fields
.field protected mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mOnResumePending:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 2

    .prologue
    .line 136
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 139
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract doOnResume()V
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setVolumeControlStream(I)V

    .line 48
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setRequestedOrientation(I)V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 102
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onRsume. mOnResumePending=true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityBase"

    const-string v1, "onRsume. mOnResumePending=false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->doOnResume()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged.hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mOnResumePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->doOnResume()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mOnResumePending:Z

    .line 66
    :cond_1
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ActivityBase;->setResult(I)V

    .line 113
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 117
    iput-object p2, p0, Lcom/android/hwcamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 119
    return-void
.end method
