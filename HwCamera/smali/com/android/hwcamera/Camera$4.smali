.class Lcom/android/hwcamera/Camera$4;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 1167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    const-string v1, "Camera"

    const-string v2, "[Flow] onReceive get screen off"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v1, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->screenChange:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/Camera;->access$4802(Lcom/android/hwcamera/Camera;Z)Z

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    const-string v1, "Camera"

    const-string v2, "[Flow] onReceive get screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/Camera;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method
