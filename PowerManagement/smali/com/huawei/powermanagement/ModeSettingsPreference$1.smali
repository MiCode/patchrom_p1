.class Lcom/huawei/powermanagement/ModeSettingsPreference$1;
.super Ljava/lang/Object;
.source "ModeSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/powermanagement/ModeSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;


# direct methods
.method constructor <init>(Lcom/huawei/powermanagement/ModeSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maximum_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    const-string v1, "maximum_mode"

    #calls: Lcom/huawei/powermanagement/ModeSettingsPreference;->startModeActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$000(Lcom/huawei/powermanagement/ModeSettingsPreference;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    const-string v1, "night_mode"

    #calls: Lcom/huawei/powermanagement/ModeSettingsPreference;->startModeActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$000(Lcom/huawei/powermanagement/ModeSettingsPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performance_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    const-string v1, "performance_mode"

    #calls: Lcom/huawei/powermanagement/ModeSettingsPreference;->startModeActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$000(Lcom/huawei/powermanagement/ModeSettingsPreference;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$1;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    const-string v1, "custom_mode"

    #calls: Lcom/huawei/powermanagement/ModeSettingsPreference;->startModeActivity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$000(Lcom/huawei/powermanagement/ModeSettingsPreference;Ljava/lang/String;)V

    goto :goto_0
.end method
