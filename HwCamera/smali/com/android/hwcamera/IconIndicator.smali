.class public Lcom/android/hwcamera/IconIndicator;
.super Landroid/widget/ImageView;
.source "IconIndicator.java"


# instance fields
.field private mIcons:[Landroid/graphics/drawable/Drawable;

.field private mModes:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/hwcamera/IconIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    sget-object v3, Lcom/android/hwcamera/R$styleable;->IconIndicator:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/IconIndicator;->loadIcons(Landroid/content/res/Resources;I)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    .local v1, icons:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 46
    .local v2, modes:[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-direct {p0, v2, v1}, Lcom/android/hwcamera/IconIndicator;->setModesAndIcons([Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v3, p0, Lcom/android/hwcamera/IconIndicator;->mIcons:[Landroid/graphics/drawable/Drawable;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/IconIndicator;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/IconIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadIcons(Landroid/content/res/Resources;I)[Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "resources"
    .parameter "iconsId"

    .prologue
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    .line 59
    .local v4, n:I
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    .line 60
    .local v1, drawable:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 62
    .local v3, id:I
    if-nez v3, :cond_0

    const/4 v5, 0x0

    :goto_1
    aput-object v5, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 64
    .end local v3           #id:I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-object v1
.end method

.method private setModesAndIcons([Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "modes"
    .parameter "icons"

    .prologue
    .line 69
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_1
    iput-object p2, p0, Lcom/android/hwcamera/IconIndicator;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p1, p0, Lcom/android/hwcamera/IconIndicator;->mModes:[Ljava/lang/CharSequence;

    .line 74
    return-void
.end method


# virtual methods
.method public setMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/hwcamera/IconIndicator;->mModes:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/android/hwcamera/IconIndicator;->mModes:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/hwcamera/IconIndicator;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/IconIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
