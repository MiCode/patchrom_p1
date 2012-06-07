.class public Lcom/huawei/powermanagement/ModeSettingsPreference;
.super Landroid/preference/Preference;
.source "ModeSettingsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Landroid/content/SharedPreferences;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mView:Landroid/view/View;

.field private preference_linearlayout:Landroid/widget/LinearLayout;

.field private preference_radio:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    .line 28
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setLayoutResource(I)V

    .line 29
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    const-string v1, "user_mode_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    const-string v1, "user_mode_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mData:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/powermanagement/ModeSettingsPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/powermanagement/ModeSettingsPreference;->startModeActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/powermanagement/ModeSettingsPreference;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/powermanagement/ModeSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setMode()V

    return-void
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 126
    const/4 v0, -0x1

    .line 127
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "maximum_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "night_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "performance_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const/4 v0, 0x2

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private setMode()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "current_mode"

    invoke-direct {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.powermanagement.action.POWER_SAVE_ATONCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method private startModeActivity(Ljava/lang/String;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 107
    return-void
.end method


# virtual methods
.method public getRadioButton()Landroid/widget/RadioButton;
    .locals 4

    .prologue
    const v3, 0x7f070016

    .line 110
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    const v0, 0x7f070015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->preference_linearlayout:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->preference_radio:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->preference_radio:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mData:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->preference_linearlayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/huawei/powermanagement/ModeSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/huawei/powermanagement/ModeSettingsPreference$1;-><init>(Lcom/huawei/powermanagement/ModeSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->preference_radio:Landroid/widget/RadioButton;

    new-instance v1, Lcom/huawei/powermanagement/ModeSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/huawei/powermanagement/ModeSettingsPreference$2;-><init>(Lcom/huawei/powermanagement/ModeSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, v:Landroid/view/View;
    iput-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mView:Landroid/view/View;

    .line 99
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v0, p0, Lcom/huawei/powermanagement/ModeSettingsPreference;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method
