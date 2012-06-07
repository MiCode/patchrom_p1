.class Lcom/huawei/powermanagement/PowerManagementService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/powermanagement/PowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/powermanagement/PowerManagementService;


# direct methods
.method constructor <init>(Lcom/huawei/powermanagement/PowerManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/huawei/powermanagement/PowerManagementService$1;->this$0:Lcom/huawei/powermanagement/PowerManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.huawei.powermanagement.action.POWER_SAVE_ATONCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "PowerManagement "

    const-string v2, "service POWER_SAVE_ATONCE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService$1;->this$0:Lcom/huawei/powermanagement/PowerManagementService;

    #calls: Lcom/huawei/powermanagement/PowerManagementService;->initServiceData()V
    invoke-static {v1}, Lcom/huawei/powermanagement/PowerManagementService;->access$000(Lcom/huawei/powermanagement/PowerManagementService;)V

    .line 95
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService$1;->this$0:Lcom/huawei/powermanagement/PowerManagementService;

    #calls: Lcom/huawei/powermanagement/PowerManagementService;->powerSaveAction()V
    invoke-static {v1}, Lcom/huawei/powermanagement/PowerManagementService;->access$100(Lcom/huawei/powermanagement/PowerManagementService;)V

    .line 96
    iget-object v1, p0, Lcom/huawei/powermanagement/PowerManagementService$1;->this$0:Lcom/huawei/powermanagement/PowerManagementService;

    #calls: Lcom/huawei/powermanagement/PowerManagementService;->setPhonePolicy()V
    invoke-static {v1}, Lcom/huawei/powermanagement/PowerManagementService;->access$200(Lcom/huawei/powermanagement/PowerManagementService;)V

    .line 99
    :cond_0
    return-void
.end method
