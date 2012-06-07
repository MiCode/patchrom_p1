.class Lcom/huawei/powermanagement/ModeSettingsPreference$2;
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
    .line 67
    iput-object p1, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #getter for: Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "maximum_mode"

    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, "maximum_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #getter for: Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "night_mode"

    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, "night_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #getter for: Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "performance_mode"

    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, "performance_mode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #getter for: Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "custom_mode"

    iget-object v4, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v4}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "custom_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #getter for: Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference$2;->this$0:Lcom/huawei/powermanagement/ModeSettingsPreference;

    #calls: Lcom/huawei/powermanagement/ModeSettingsPreference;->setMode()V
    invoke-static {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->access$200(Lcom/huawei/powermanagement/ModeSettingsPreference;)V

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 74
    goto :goto_1

    :cond_2
    move v0, v2

    .line 76
    goto :goto_2

    :cond_3
    move v1, v2

    .line 78
    goto :goto_3
.end method
