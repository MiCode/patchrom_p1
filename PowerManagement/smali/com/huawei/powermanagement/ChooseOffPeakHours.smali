.class public Lcom/huawei/powermanagement/ChooseOffPeakHours;
.super Landroid/preference/ListPreference;
.source "ChooseOffPeakHours.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndTime:Landroid/widget/Button;

.field private mHour:I

.field private mMinute:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTime:Landroid/widget/Button;

.field private mTextFlage:I

.field private mTimePickerDialog:Landroid/app/TimePickerDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private TimetoString(II)Ljava/lang/String;
    .locals 7
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v6, 0xa

    .line 262
    const-string v3, "PowerManagement "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " format time to string: hour = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", minute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    if-ge p1, v6, :cond_0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, reHour:Ljava/lang/String;
    :goto_0
    if-ge p2, v6, :cond_3

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, reMinute:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, result:Ljava/lang/String;
    return-object v2

    .line 274
    .end local v0           #reHour:Ljava/lang/String;
    .end local v1           #reMinute:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #reHour:Ljava/lang/String;
    goto :goto_0

    .line 279
    .end local v0           #reHour:Ljava/lang/String;
    :cond_1
    const/16 v3, 0xc

    if-le p1, v3, :cond_2

    .line 280
    rem-int/lit8 p1, p1, 0xc

    .line 283
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #reHour:Ljava/lang/String;
    goto :goto_0

    .line 289
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #reMinute:Ljava/lang/String;
    goto :goto_1
.end method

.method private notifyService()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.powermanagement.action.USER_DATA_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private saveOffPeakHours()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 302
    const-string v3, "PowerManagement "

    const-string v4, "update Off-peak hours."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v4, "user_mode_data"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 306
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "view_mode"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 308
    .local v1, mode:I
    if-ne v1, v5, :cond_0

    .line 309
    iget-object v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v4, "night_mode_data"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 311
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    if-nez v3, :cond_1

    .line 315
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mHour:I

    iput v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartHour:I

    .line 316
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mMinute:I

    iput v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartMinute:I

    .line 317
    const-string v3, "offpeak_start_hour"

    iget v4, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartHour:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    const-string v3, "offpeak_start_minute"

    iget v4, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartMinute:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 322
    :cond_1
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    if-ne v3, v5, :cond_2

    .line 323
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mHour:I

    iput v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndHour:I

    .line 324
    iget v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mMinute:I

    iput v3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndMinute:I

    .line 325
    const-string v3, "offpeak_end_hour"

    iget v4, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndHour:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 326
    const-string v3, "offpeak_end_minute"

    iget v4, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndMinute:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 330
    return-void
.end method

.method private showTimePicker()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, showHour:I
    const/4 v4, 0x0

    .line 98
    .local v4, showMinute:I
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "PowerManagement "

    const-string v1, "mTimePickerDialog is already showing."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v1, "user_mode_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 111
    .local v6, sp:Landroid/content/SharedPreferences;
    iget v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    if-nez v0, :cond_2

    .line 112
    const-string v0, "offpeak_start_hour"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 113
    const-string v0, "offpeak_start_minute"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 120
    :goto_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 122
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, p0}, Landroid/app/TimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 123
    iget-object v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 124
    return-void

    .line 103
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_1
    const-string v0, "PowerManagement "

    const-string v1, "mTimePickerDialog is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_2
    const-string v0, "offpeak_end_hour"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 117
    const-string v0, "offpeak_end_minute"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1
.end method

.method private updateText()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->updateTextStartTime()V

    .line 157
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->updateTextEndTime()V

    .line 158
    return-void
.end method

.method private updateTextEndTime()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 216
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v7, "user_mode_data"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 218
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "view_mode"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 220
    .local v1, mode:I
    if-eqz v1, :cond_0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 221
    :cond_0
    const/4 v4, 0x0

    .line 222
    .local v4, toHour:I
    const/4 v5, 0x0

    .line 234
    .local v5, toMinute:I
    :goto_0
    const-string v6, "PowerManagement "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update text : toHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", toMinute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, am:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, pm:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 241
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    invoke-direct {p0, v4, v5}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_1
    return-void

    .line 224
    .end local v0           #am:Ljava/lang/String;
    .end local v2           #pm:Ljava/lang/String;
    .end local v4           #toHour:I
    .end local v5           #toMinute:I
    :cond_1
    if-ne v1, v9, :cond_2

    .line 225
    const-string v6, "PowerManagement "

    const-string v7, "in night mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v7, "night_mode_data"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    :cond_2
    const-string v6, "offpeak_end_hour"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 231
    .restart local v4       #toHour:I
    const-string v6, "offpeak_end_minute"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .restart local v5       #toMinute:I
    goto :goto_0

    .line 242
    .restart local v0       #am:Ljava/lang/String;
    .restart local v2       #pm:Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    .line 243
    const/16 v4, 0xc

    .line 244
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4, v5}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 247
    :cond_4
    const/16 v6, 0xc

    if-ge v4, v6, :cond_5

    .line 248
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4, v5}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 250
    :cond_5
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v4, v5}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTextStartTime()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 168
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v7, "user_mode_data"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 170
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "view_mode"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, mode:I
    if-eqz v3, :cond_0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, fromHour:I
    const/4 v2, 0x0

    .line 187
    .local v2, fromMinute:I
    :goto_0
    const-string v6, "PowerManagement "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update text : fromHour = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fromMinute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, am:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, pm:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    invoke-direct {p0, v1, v2}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_1
    return-void

    .line 176
    .end local v0           #am:Ljava/lang/String;
    .end local v1           #fromHour:I
    .end local v2           #fromMinute:I
    .end local v4           #pm:Ljava/lang/String;
    :cond_1
    if-ne v3, v9, :cond_2

    .line 177
    const-string v6, "PowerManagement "

    const-string v7, "in night mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mContext:Landroid/content/Context;

    const-string v7, "night_mode_data"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 182
    :cond_2
    const-string v6, "offpeak_start_hour"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .restart local v1       #fromHour:I
    const-string v6, "offpeak_start_minute"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #fromMinute:I
    goto :goto_0

    .line 194
    .restart local v0       #am:Ljava/lang/String;
    .restart local v4       #pm:Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 195
    const/16 v1, 0xc

    .line 196
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 200
    :cond_4
    const/16 v6, 0xc

    if-ge v1, v6, :cond_5

    .line 201
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 203
    :cond_5
    iget-object v6, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->TimetoString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 342
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070006

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070008

    if-ne v0, v1, :cond_1

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->showTimePicker()V

    .line 89
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, timeChooseView:Landroid/view/View;
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    .line 68
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mStartTime:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mEndTime:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->updateText()V

    .line 74
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 59
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 134
    iput p2, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mHour:I

    .line 135
    iput p3, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mMinute:I

    .line 137
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->saveOffPeakHours()V

    .line 139
    iget v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->updateTextStartTime()V

    .line 143
    :cond_0
    iget v0, p0, Lcom/huawei/powermanagement/ChooseOffPeakHours;->mTextFlage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->updateTextEndTime()V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/huawei/powermanagement/ChooseOffPeakHours;->notifyService()V

    .line 149
    return-void
.end method
