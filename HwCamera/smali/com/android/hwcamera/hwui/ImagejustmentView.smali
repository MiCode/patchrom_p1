.class public Lcom/android/hwcamera/hwui/ImagejustmentView;
.super Ljava/lang/Object;
.source "ImagejustmentView.java"


# static fields
.field private static final CONTRAST_LEVEL:I = 0x5

.field private static final PROGRESS_SCALE:I = 0x64


# instance fields
.field private mBrightnessEntryValues:[Ljava/lang/CharSequence;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field private mBrightnessPref:Lcom/android/hwcamera/ListPreference;

.field private mBrightnessValue:Ljava/lang/String;

.field private mContrastDegreeValue:Ljava/lang/String;

.field private mContrastEntryValues:[Ljava/lang/CharSequence;

.field private mContrastLayout:Landroid/widget/LinearLayout;

.field private mContrastPref:Lcom/android/hwcamera/ListPreference;

.field private mContrastStep:I

.field private mContrastValue:Ljava/lang/String;

.field private mExposureEntryValues:[Ljava/lang/CharSequence;

.field private mExposureLayout:Landroid/widget/LinearLayout;

.field private mExposureValue:Ljava/lang/String;

.field private mImageBrightness:Landroid/widget/SeekBar;

.field private mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageContrast:Landroid/widget/SeekBar;

.field private mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageExposure:Landroid/widget/SeekBar;

.field private mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageSaturation:Landroid/widget/SeekBar;

.field private mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mLastBrightnessProgress:I

.field private mLastContrastProgress:I

.field private mLastExposureProgress:I

.field private mLastSaturationProgress:I

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mMaxExposure:I

.field private mMinContrastValue:I

.field private mMinExposure:I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mSaturationEntryValues:[Ljava/lang/CharSequence;

.field private mSaturationLayout:Landroid/widget/LinearLayout;

.field private mSaturationPref:Lcom/android/hwcamera/ListPreference;

.field private mSaturationValue:Ljava/lang/String;

.field private mSeekbarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 1
    .parameter "seekbarView"
    .parameter "preferenceGroup"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    .line 53
    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    .line 59
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/ImagejustmentView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    return p1
.end method

.method private getBrightnessProgress()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContrastMaxProgress()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExposureBegin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExposureEnd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExposureMiddle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSaturationProgress()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBrightnessDegreeBar()V
    .locals 5

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    .local v0, brightnessBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 193
    .local v2, brightnessMiddle:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 196
    .local v1, brightnessEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method private setBrightnessFilterDegrees()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    .line 161
    :cond_0
    return-void
.end method

.method private setContrastDegreeBar()V
    .locals 5

    .prologue
    .line 178
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, contrastBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, contrastMiddle:Landroid/widget/TextView;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 185
    .local v1, contrastEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method private setContrastFilterDegrees()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    .line 151
    :cond_0
    return-void
.end method

.method private setExposureDegreeBar()V
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    .local v0, exposureBegin:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureBegin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, exposureMiddle:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureMiddle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f08005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 240
    .local v1, exposureEnd:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureEnd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method private setExposureProgress()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 249
    return-void
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$1;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$2;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 338
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$3;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 368
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$4;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 397
    :cond_3
    return-void
.end method

.method private setSaturationDegreeBar()V
    .locals 5

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, saturationBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    .local v2, saturationMiddle:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f080064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    .local v1, saturationEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method private setSaturationFilterDegrees()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public initImagejustment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "exposure"
    .parameter "saturation"
    .parameter "contrast"
    .parameter "brightness"

    .prologue
    const/16 v6, -0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_contrast_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_5

    .line 65
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    .line 66
    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    .line 67
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setContrastFilterDegrees()V

    .line 69
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setContrastDegreeBar()V

    .line 75
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    .line 77
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setExposureDegreeBar()V

    .line 79
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_saturation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setSaturationFilterDegrees()V

    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setSaturationDegreeBar()V

    .line 85
    iput-object p4, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_brightness_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    .line 88
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setBrightnessFilterDegrees()V

    .line 89
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setBrightnessDegreeBar()V

    .line 90
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setListeners()V

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v0

    if-ne v6, v0, :cond_7

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v0

    if-ne v6, v0, :cond_8

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getContrastMaxProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 141
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    iget v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    .line 144
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    :cond_4
    return-void

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    .line 97
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setExposureProgress()V

    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_1

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getSaturationProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 114
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_2

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getBrightnessProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 129
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_3
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 400
    return-void
.end method
