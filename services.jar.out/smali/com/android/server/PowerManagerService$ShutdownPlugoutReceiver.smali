.class final Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownPlugoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 505
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v1, "ro.config.hw_quickpoweron"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/PowerManagerService;->setBatteryLight(ZI)V

    .line 509
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;Z)I

    .line 510
    const-string v0, "PowerManagerService OoO"

    const-string v1, "onReceive::ShutdownPlugout E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 512
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 513
    const-string v0, "PowerManagerService OoO"

    const-string v1, "onReceive::ShutdownPlugout X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return-void
.end method
