.class public Lcom/huawei/powermanagement/PeakPreference;
.super Landroid/preference/ListPreference;
.source "PeakPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPeakView:Landroid/view/View;

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
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private initCustomMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "user_mode_data"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "peak_turnoff_time"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 87
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

    .line 89
    if-nez v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, showText:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v1           #showText:Ljava/lang/String;
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, munites:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

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
    .line 68
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, munites:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

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

    .line 71
    return-void
.end method

.method private initNightMode()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, showText:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method private initPerformanceMode()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, showText:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "user_mode_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, spre:Landroid/content/SharedPreferences;
    const-string v2, "view_mode"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, mode:I
    iget-object v2, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 48
    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initCustomMode()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initMixmumMode()V

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initNightMode()V

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initPerformanceMode()V

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initCustomMode()V

    goto :goto_0

    .line 48
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
    .line 143
    const-string v2, "PowerManagement "

    const-string v3, "save Off-peak turn off time."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/huawei/powermanagement/PeakPreference;->mContext:Landroid/content/Context;

    const-string v3, "user_mode_data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "peak_turnoff_time"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    iget-object v2, p0, Lcom/huawei/powermanagement/PeakPreference;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.powermanagement.action.USER_DATA_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method private upDateText()V
    .locals 7

    .prologue
    .line 115
    iget-object v4, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.huawei.powermanagement_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 117
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "peakPreference"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, time:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
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

    .line 121
    const-string v3, "0"

    .line 124
    :cond_0
    const-string v4, "PowerManagement "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "peak time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, showText:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v1           #showText:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/huawei/powermanagement/PeakPreference;->saveData(I)V

    .line 136
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #time:Ljava/lang/String;
    :cond_1
    return-void

    .line 130
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    .restart local v3       #time:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, munites:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

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
    invoke-virtual {p0}, Lcom/huawei/powermanagement/PeakPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030007

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mPeakView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mPeakView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/huawei/powermanagement/PeakPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mTurnOffTime:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mPeakView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/huawei/powermanagement/PeakPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mTextTile:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mTextTile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/huawei/powermanagement/PeakPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->initView()V

    .line 36
    iget-object v0, p0, Lcom/huawei/powermanagement/PeakPreference;->mPeakView:Landroid/view/View;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 108
    invoke-direct {p0}, Lcom/huawei/powermanagement/PeakPreference;->upDateText()V

    .line 109
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 102
    return-void
.end method
