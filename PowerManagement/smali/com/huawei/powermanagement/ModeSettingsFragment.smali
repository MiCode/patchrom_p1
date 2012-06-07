.class public Lcom/huawei/powermanagement/ModeSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "ModeSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/huawei/powermanagement/ModeSettingsFragment;->addPreferencesFromResource(I)V

    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 25
    return-void
.end method
