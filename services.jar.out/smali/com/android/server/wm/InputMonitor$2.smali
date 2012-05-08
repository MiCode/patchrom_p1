.class Lcom/android/server/wm/InputMonitor$2;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    .line 395
    const-string v1, "true"

    const-string v3, "ro.poweroff_alarm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "persist.sys.powerup_reason"

    const-string v3, "NORMAL"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    new-instance v14, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mSetModemPowerOn:Ljava/lang/Runnable;

    invoke-direct {v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 399
    .local v14, setModemOnThread:Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    #getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 401
    .local v11, mContext:Landroid/content/Context;
    const-string v1, "persist.sys.quickpoweron"

    const-string v3, "startpoweron"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Power;->setScreenState(Z)I

    .line 405
    invoke-static {v11}, Lcom/android/internal/policy/Powerstate;->restorePhoneState(Landroid/content/Context;)V

    .line 407
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v13

    .line 417
    .local v13, mPowerManagerService:Landroid/os/IPowerManager;
    sget-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v1, :cond_1

    .line 418
    sget-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 419
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 422
    :cond_1
    const-wide/16 v3, 0x12c

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    #calls: Lcom/android/server/wm/InputMonitor;->quitNatuallySleep()V
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)V

    .line 427
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 430
    const-string v1, "input monitor OoO"

    const-string v3, "I am going to Powerstate.showAnimationAgain"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v12, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 433
    .local v12, mHomeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const/high16 v1, 0x1020

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    invoke-virtual {v11, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 437
    invoke-static {v11}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 443
    const/16 v1, 0xb4

    :try_start_1
    invoke-interface {v13, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    :goto_1
    const-string v1, "persist.sys.actualpoweron"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    .local v2, bootComIntent:Landroid/content/Intent;
    const-string v1, "hwbootcompleted"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 457
    .local v0, mActivityManager:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    .end local v0           #mActivityManager:Landroid/app/IActivityManager;
    :goto_2
    invoke-static {v11}, Lcom/android/internal/policy/Powerstate;->restoreSensorState(Landroid/content/Context;)V

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-static {}, Lcom/android/server/wm/InputMonitor;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/InputMonitor$2$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor$2$1;-><init>(Lcom/android/server/wm/InputMonitor$2;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 480
    :cond_2
    return-void

    .line 423
    .end local v2           #bootComIntent:Landroid/content/Intent;
    .end local v12           #mHomeIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 444
    .restart local v12       #mHomeIntent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 460
    .restart local v2       #bootComIntent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    goto :goto_2
.end method
