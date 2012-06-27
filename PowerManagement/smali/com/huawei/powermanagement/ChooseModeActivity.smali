.class public Lcom/huawei/powermanagement/ChooseModeActivity;
.super Landroid/app/Activity;
.source "ChooseModeActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mData:Landroid/content/SharedPreferences;

.field private mFrag:Landroid/preference/PreferenceFragment;

.field private mLF:Landroid/view/LayoutInflater;

.field private maximum_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

.field private night_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

.field private performance_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseModeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_z
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/huawei/powermanagement/ChooseModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mLF:Landroid/view/LayoutInflater;

    .line 61
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/huawei/powermanagement/ChooseModeActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseModeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mFrag:Landroid/preference/PreferenceFragment;

    .line 67
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mFrag:Landroid/preference/PreferenceFragment;

    const-string v1, "maximum_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/huawei/powermanagement/ModeSettingsPreference;

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->maximum_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    .line 69
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mFrag:Landroid/preference/PreferenceFragment;

    const-string v1, "performance_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/huawei/powermanagement/ModeSettingsPreference;

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->performance_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    .line 71
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mFrag:Landroid/preference/PreferenceFragment;

    const-string v1, "night_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/huawei/powermanagement/ModeSettingsPreference;

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->night_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    .line 76
    const-string v0, "user_mode_data"

    invoke-virtual {p0, v0, v2}, Lcom/huawei/powermanagement/ChooseModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v1, "performance_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->performance_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0, v3}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setChecked(Z)V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v1, "night_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->night_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0, v3}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v1, "maximum_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->maximum_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0, v3}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setChecked(Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->maximum_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0, v3}, Lcom/huawei/powermanagement/ModeSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wheather is same object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->maximum_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v2, "maximum_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->performance_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v2, "performance_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->night_mode:Lcom/huawei/powermanagement/ModeSettingsPreference;

    invoke-virtual {v0}, Lcom/huawei/powermanagement/ModeSettingsPreference;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseModeActivity;->mData:Landroid/content/SharedPreferences;

    const-string v2, "night_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseModeActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
