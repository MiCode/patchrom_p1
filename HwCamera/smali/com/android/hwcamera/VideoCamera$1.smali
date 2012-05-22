.class Lcom/android/hwcamera/VideoCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->screenChange:Z
    invoke-static {v1, v2}, Lcom/android/hwcamera/VideoCamera;->access$2402(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/VideoCamera;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$1;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/VideoCamera;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method
