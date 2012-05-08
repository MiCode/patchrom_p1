.class final Lcom/android/server/PowerManagerService$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ShutdownReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ShutdownReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 469
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "true"

    const-string v6, "ro.config.hw_quickpoweron"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 471
    const-string v5, "persist.sys.quickpoweron"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, strPower:Ljava/lang/String;
    const-string v5, "startshutdown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "shutdown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 473
    :cond_0
    const-string v5, "persist.sys.quickpoweron"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, statePower:Ljava/lang/String;
    const-string v5, "startpoweron"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 475
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ShutdownReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/PowerManagerService;->goToSleep(J)V

    .line 478
    :cond_1
    const-wide/16 v5, 0x3e8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    :goto_0
    const/4 v0, 0x0

    .line 483
    .local v0, bBattery:Z
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ShutdownReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 488
    :goto_1
    if-nez v0, :cond_2

    .line 490
    const-string v5, "PowerManagerService"

    const-string v6, "onReceive::Power.shutdown E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v5, p0, Lcom/android/server/PowerManagerService$ShutdownReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I
    invoke-static {v5, v6}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;Z)I

    move-result v2

    .line 492
    .local v2, err:I
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v6, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v6, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2328

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 494
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->showPowerOffCharge()V

    .line 495
    const-string v5, "PowerManagerService"

    const-string v6, "onReceive::Power.shutdown X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v0           #bBattery:Z
    .end local v2           #err:I
    .end local v3           #statePower:Ljava/lang/String;
    .end local v4           #strPower:Ljava/lang/String;
    :cond_2
    return-void

    .line 484
    .restart local v0       #bBattery:Z
    .restart local v3       #statePower:Ljava/lang/String;
    .restart local v4       #strPower:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "PowerManagerService"

    const-string v6, "RemoteException:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    const/4 v0, 0x0

    goto :goto_1

    .line 479
    .end local v0           #bBattery:Z
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
