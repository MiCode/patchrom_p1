.class public Lcom/android/hwcamera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# static fields
.field private static final SYSTEM_PROPERTY_SHUTTERSOUND:Ljava/lang/String; = "ro.camera.key.shortpress"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    .line 47
    .local v1, holder:Lcom/android/hwcamera/CameraHolder;
    new-instance v4, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v4, p1}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    .line 48
    .local v4, pref:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 49
    .local v0, cameraId:I
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraHolder;->tryOpen(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v5

    if-nez v5, :cond_0

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 53
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 54
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, i:Landroid/content/Intent;
    const-string v5, "ro.camera.key.shortpress"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 58
    .local v3, keyEvent:Landroid/view/KeyEvent;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    const-class v5, Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    .end local v3           #keyEvent:Landroid/view/KeyEvent;
    :cond_1
    :goto_1
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    .restart local v3       #keyEvent:Landroid/view/KeyEvent;
    :cond_2
    const-class v5, Lcom/android/hwcamera/Camera;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method
