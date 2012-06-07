.class public Lcom/huawei/powermanagement/BrightnessPreference;
.super Landroid/preference/ListPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mBrightnessView:Landroid/view/View;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mOldBrightness:I

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    .line 38
    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 77
    move v0, p1

    .line 80
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 95
    move v0, p1

    .line 98
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveBrightness()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 160
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 163
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 165
    invoke-direct {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->saveBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 144
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 128
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/powermanagement/BrightnessPreference;->setMode(I)V

    .line 131
    if-nez p2, :cond_0

    .line 132
    iget-object v0, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/huawei/powermanagement/BrightnessPreference;->setBrightness(I)V

    .line 134
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-direct {p0, v5}, Lcom/huawei/powermanagement/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    .line 44
    .local v0, mode:I
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mBrightnessView:Landroid/view/View;

    .line 46
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mBrightnessView:Landroid/view/View;

    const v6, 0x7f070001

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mBrightnessView:Landroid/view/View;

    const v6, 0x7f070003

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 48
    iget-object v6, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    if-ne v0, v4, :cond_1

    .line 50
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 54
    :goto_1
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v6, v6, 0xff

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 56
    invoke-virtual {p0}, Lcom/huawei/powermanagement/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "user_mode_data"

    invoke-virtual {v3, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "view_mode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, savingMode:I
    if-nez v1, :cond_2

    .line 60
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int/lit8 v4, v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    :goto_2
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mBrightnessView:Landroid/view/View;

    return-object v3

    .end local v1           #savingMode:I
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    move v3, v5

    .line 48
    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1

    .line 62
    .restart local v1       #savingMode:I
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0, v5}, Lcom/huawei/powermanagement/BrightnessPreference;->getBrightness(I)I

    move-result v3

    iput v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mOldBrightness:I

    .line 63
    iget-object v3, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mOldBrightness:I

    iget v5, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 109
    iget v0, p0, Lcom/huawei/powermanagement/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/huawei/powermanagement/BrightnessPreference;->setBrightness(I)V

    .line 110
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 116
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 122
    return-void
.end method
