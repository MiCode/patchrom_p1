.class public Lcom/android/hwcamera/hwui/ListSubSettingView;
.super Ljava/lang/Object;
.source "ListSubSettingView.java"


# static fields
.field private static final RADIO_IMAGE:Ljava/lang/String; = "Radioimage"

.field private static final RADIO_TITLE:Ljava/lang/String; = "ItemTitle"


# instance fields
.field private keyvalues:[Ljava/lang/CharSequence;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mHasDataState:Z

.field private mKey:Ljava/lang/String;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mListpre:Lcom/android/hwcamera/ListPreference;

.field private mModeadpter:Landroid/widget/SimpleAdapter;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRadioDrawable:[I

.field private mSetValue:Ljava/lang/String;

.field private modeList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "key"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    .line 41
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    .line 42
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method private initSubMenudata()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    .line 84
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    .line 85
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    if-nez v3, :cond_1

    .line 86
    iput-boolean v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 110
    :cond_0
    return-void

    .line 89
    :cond_1
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 90
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    .line 91
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, defaultValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    const-string v4, "pref_video_quality_key"

    if-ne v3, v4, :cond_2

    .line 93
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 98
    const-string v3, "enter"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 103
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public ChangeRadioImg(IZ)V
    .locals 5
    .parameter "selectedItem"
    .parameter "state"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    .line 115
    .local v0, currentShootAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 116
    .local v1, currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 117
    const-string v2, "Radioimage"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "ItemTitle"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    .line 122
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 123
    return-void

    .line 120
    :cond_0
    const-string v2, "Radioimage"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public initModeView()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 53
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->initSubMenudata()V

    .line 54
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f03001d

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemTitle"

    aput-object v6, v4, v5

    const-string v5, "Radioimage"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    .line 57
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/ListSubSettingView$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/ListSubSettingView$1;-><init>(Lcom/android/hwcamera/hwui/ListSubSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    return v0

    .line 54
    :array_0
    .array-data 0x4
        0x91t 0x0t 0x8t 0x7ft
        0x92t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 51
    return-void
.end method

.method public setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "combopreference"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 48
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 45
    return-void
.end method
