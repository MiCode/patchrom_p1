.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 192
    const-string v7, "ShutdownThread"

    const-string v8, "begin shutdownThread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v7, "persist.sys.quickpoweron"

    const-string/jumbo v8, "startshutdown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v7, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V

    .line 197
    iget-object v7, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/Powerstate;->savePhoneState(Landroid/content/Context;)V

    .line 198
    iget-object v7, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/Powerstate;->setPoweroffState(Landroid/content/Context;)V

    .line 199
    iget-object v7, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/Powerstate;->killRunningProcess(Landroid/content/Context;)V

    .line 201
    const-string v7, "ShutdownThread"

    const-string v8, " before setModemPower(false)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 205
    .local v4, modePhone:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    const-string v7, "ShutdownThread"

    const-string v8, " after setModemPower(false)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    .line 215
    .local v6, vibrator:Landroid/os/Vibrator;
    const-wide/16 v7, 0x1f4

    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_1
    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 225
    :goto_2
    const-string/jumbo v7, "persist.sys.quickpoweron"

    const-string/jumbo v8, "shutdown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_3
    const-string/jumbo v7, "persist.sys.quickpoweron"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, tmp1:Ljava/lang/String;
    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 231
    .local v3, mPowerManagerService:Landroid/os/IPowerManager;
    const-string/jumbo v7, "startpoweron"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-interface {v3, v7, v8}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 236
    :cond_0
    const-wide/16 v7, 0x3e8

    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 240
    :goto_3
    const/4 v0, 0x0

    .line 242
    .local v0, bBattery:Z
    :try_start_5
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    .line 247
    :goto_4
    if-nez v0, :cond_3

    .line 249
    :try_start_6
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 250
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 251
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/app/ShutdownThread;->access$102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 253
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 254
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_2
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v8, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    const-wide/16 v9, 0x2328

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    const-string v7, "ShutdownThread"

    const-string v8, "going to showPoweroffCharge"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->showPowerOffCharge()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 265
    .end local v0           #bBattery:Z
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    .end local v5           #tmp1:Ljava/lang/String;
    :cond_3
    :goto_5
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 266
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 267
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 268
    invoke-static {v11}, Lcom/android/internal/app/ShutdownThread;->access$102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 275
    :cond_4
    :goto_6
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$400()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 276
    const/4 v7, 0x0

    :try_start_7
    invoke-static {v7}, Lcom/android/internal/app/ShutdownThread;->access$502(Z)Z

    .line 277
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 278
    return-void

    .line 206
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 216
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v6       #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to vibrate during shutdown."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 243
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bBattery:Z
    .restart local v3       #mPowerManagerService:Landroid/os/IPowerManager;
    .restart local v5       #tmp1:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 244
    .local v1, e:Landroid/os/RemoteException;
    :try_start_8
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException:"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 245
    const/4 v0, 0x0

    goto :goto_4

    .line 261
    .end local v0           #bBattery:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    .end local v5           #tmp1:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 262
    .local v2, ex:Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "go to sleep error "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 271
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_5
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 272
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6

    .line 277
    :catchall_0
    move-exception v7

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v7

    .line 223
    :catch_4
    move-exception v7

    goto/16 :goto_2

    .line 237
    .restart local v3       #mPowerManagerService:Landroid/os/IPowerManager;
    .restart local v5       #tmp1:Ljava/lang/String;
    :catch_5
    move-exception v7

    goto/16 :goto_3
.end method
