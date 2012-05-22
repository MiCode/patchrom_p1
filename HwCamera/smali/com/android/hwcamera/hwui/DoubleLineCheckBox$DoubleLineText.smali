.class public Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;
.super Landroid/widget/LinearLayout;
.source "DoubleLineCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/DoubleLineCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleLineText"
.end annotation


# instance fields
.field private mCheckSummary:Landroid/widget/TextView;

.field private mCheckTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/hwui/DoubleLineCheckBox;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->this$0:Lcom/android/hwcamera/hwui/DoubleLineCheckBox;

    .line 124
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    iput-object p2, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->initdlintext()V

    .line 127
    return-void
.end method

.method private initdlintext()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x15

    const/4 v3, -0x2

    .line 130
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setOrientation(I)V

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setGravity(I)V

    .line 137
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    const-string v1, "the first"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setId(I)V

    .line 151
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void

    .line 135
    :cond_3
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->setGravity(I)V

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public setSummarySize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckSummary:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setTitleSize(F)V
    .locals 2
    .parameter "size"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineCheckBox$DoubleLineText;->mCheckTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    return-void
.end method
