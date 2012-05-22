.class Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindViewerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onAllImagesAdded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public onFaceDetecionComplete(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    new-instance v1, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;-><init>(Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public onNewFaceUpdated()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 486
    const-string v1, "RewindActivity"

    const-string v2, "Image saved. Informing MediaStore..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;

    iget-object v2, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    iget-object v3, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "image/jpeg"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/hwcamera/rewind/RewindActivity$MediaScannerNotifier;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->addToMediaStore(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1700(Lcom/android/hwcamera/rewind/RewindActivity;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 492
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/rewind/RewindActivity;->setResult(ILandroid/content/Intent;)V

    .line 493
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;
    invoke-static {v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1800(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;
    invoke-static {v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1800(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$1900(Lcom/android/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    return-void
.end method
