.class public Lcom/android/hwcamera/ListPreference;
.super Lcom/android/hwcamera/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v2, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 46
    sget-object v1, Lcom/android/hwcamera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 132
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 133
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/hwcamera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    .end local v0           #i:I
    :goto_1
    return v0

    .line 101
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 120
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 72
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 73
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 76
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 77
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    return-void
.end method
