.class public Lcom/huawei/powermanagement/OffPeakPreference;
.super Landroid/preference/ListPreference;
.source "OffPeakPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOffPeakView:Landroid/view/View;

.field private mTextTile:Landroid/widget/TextView;

.field private mTurnOffTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private initCustomMode()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "user_mode_data"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "offpeak_turnoff_time"

    const/16 v5, 0xf

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 89
    .local v3, time:I
    const-string v4, "PowerManagement "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offpeak time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez v3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, showText:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1           #showText:Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, munites:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initMixmumMode()V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, munites:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method private initNightMode()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, munites:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private initPerformanceMode()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, showText:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user_mode_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, spre:Landroid/content/SharedPreferences;
    const-string v2, "view_mode"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, mode:I
    iget-object v2, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 61
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initCustomMode()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initMixmumMode()V

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initNightMode()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initPerformanceMode()V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initCustomMode()V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveData(I)V
    .locals 5
    .parameter "time"

    .prologue
    .line 145
    const-string v2, "PowerManagement "

    const-string v3, "save Off-peak turn off time."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mContext:Landroid/content/Context;

    const-string v3, "user_mode_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "offpeak_turnoff_time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    iget-object v2, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.powermanagement.action.USER_DATA_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private upDateText()V
    .locals 7

    .prologue
    .line 117
    iget-object v4, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.huawei.powermanagement_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 119
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "offpeakPreference"

    const-string v5, "15"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, time:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const-string v4, "PowerManagement "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time contains @ = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v3, "15"

    .line 126
    :cond_0
    const-string v4, "PowerManagement "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offpeak time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, showText:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v1           #showText:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/powermanagement/OffPeakPreference;->saveData(I)V

    .line 138
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #time:Ljava/lang/String;
    :cond_1
    return-void

    .line 132
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    .restart local v3       #time:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, munites:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030007

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mOffPeakView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mOffPeakView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/huawei/powermanagement/OffPeakPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mOffPeakView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/huawei/powermanagement/OffPeakPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTextTile:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mTextTile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->initView()V

    .line 36
    iget-object v0, p0, Lcom/huawei/powermanagement/OffPeakPreference;->mOffPeakView:Landroid/view/View;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 110
    invoke-direct {p0}, Lcom/huawei/powermanagement/OffPeakPreference;->upDateText()V

    .line 111
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 104
    return-void
.end method
