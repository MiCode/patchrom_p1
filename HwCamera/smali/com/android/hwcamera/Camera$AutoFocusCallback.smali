.class final Lcom/android/hwcamera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1561
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1564
    iget-object v1, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPausing:Z
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    :goto_0
    return-void

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusStartTime:J
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$7600(Lcom/android/hwcamera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/hwcamera/Camera;->mAutoFocusTime:J

    .line 1568
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] AutoFocusCallback, AutoFocusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    iget-wide v3, v3, Lcom/android/hwcamera/Camera;->mAutoFocusTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1571
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1572
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1573
    iget-object v1, p0, Lcom/android/hwcamera/Camera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
