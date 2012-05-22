.class public Lcom/android/hwcamera/hwui/SubPopupWindows;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubPopupWindows"


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

.field private isPopupWindowShowing:Z

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

.field private mDefaultRect:Landroid/graphics/Rect;

.field private mFirstQuarterRect:Landroid/graphics/Rect;

.field private mHasDataState:Z

.field private mKey:Ljava/lang/String;

.field private mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

.field private mListpre:Lcom/android/hwcamera/ListPreference;

.field private mParent:Landroid/view/View;

.field private mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRadioDrawable:[I

.field private mScenceDefaultValue:Ljava/lang/String;

.field private mSecondQuarterRect:Landroid/graphics/Rect;

.field private mSetValue:Ljava/lang/String;

.field private mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mShootModeadpter:Landroid/widget/SimpleAdapter;

.field private mThirdQuarterRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "parent"
    .parameter "mSuperPanel"
    .parameter "prefer"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    .line 55
    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    .line 56
    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    .line 57
    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    .line 58
    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    .line 62
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 276
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$4;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

    .line 285
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$5;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 65
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParent:Landroid/view/View;

    .line 67
    iput-object p4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 68
    iput-object p5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getSettingmenu()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 73
    :cond_0
    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SubPopupWindows;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method private calculateRect()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, defaultXoffset:I
    const/4 v1, 0x0

    .line 303
    .local v1, defaultYoffset:I
    const/4 v2, 0x0

    .line 304
    .local v2, firstXoffset:I
    const/4 v3, 0x0

    .line 305
    .local v3, firstYoffset:I
    const/4 v4, 0x0

    .line 306
    .local v4, secondXoffset:I
    const/4 v5, 0x0

    .line 307
    .local v5, secondYoffset:I
    const/4 v6, 0x0

    .line 308
    .local v6, thirdXoffset:I
    const/4 v7, 0x0

    .line 310
    .local v7, thirdYoffset:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 312
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthLandscape()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getMenuCollapseLength()I

    move-result v9

    sub-int v0, v8, v9

    .line 313
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v1, v8, 0x2

    .line 314
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthPortrait()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 315
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v3

    .line 316
    move v4, v0

    .line 317
    move v5, v1

    .line 318
    move v6, v2

    .line 319
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuWidth()I

    move-result v9

    sub-int v7, v8, v9

    .line 332
    :goto_0
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v3, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    .line 333
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    .line 334
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    .line 335
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v1, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    .line 336
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getMenuCollapseLength()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuWidth()I

    move-result v9

    sub-int v0, v8, v9

    .line 323
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthPortrait()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v1, v8, 0x2

    .line 324
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 325
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthLandscape()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getMenuCollapseLength()I

    move-result v9

    sub-int v3, v8, v9

    .line 326
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v4

    .line 327
    move v5, v1

    .line 328
    move v6, v2

    .line 329
    move v7, v3

    goto :goto_0
.end method

.method private initHaveKeydata()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    .line 202
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    .line 203
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    if-nez v3, :cond_0

    .line 204
    iput-boolean v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    .line 226
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    .line 209
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, defalueValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    const-string v4, "pref_camera_scenemode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 216
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 219
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_2
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 225
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    goto :goto_0
.end method

.method private setPopupShowing(Z)V
    .locals 0
    .parameter "isshowing"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    .line 185
    return-void
.end method


# virtual methods
.method public ChangeRadioImg(IZ)V
    .locals 5
    .parameter "selectedItem"
    .parameter "state"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    .line 190
    .local v0, currentShootAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 191
    .local v1, currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 192
    const-string v2, "Radioimage"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v2, "ItemTitle"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    .line 197
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 198
    return-void

    .line 195
    :cond_0
    const-string v2, "Radioimage"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public creatPopupWindows()V
    .locals 3

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->calculateRect()V

    .line 124
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    new-instance v2, Lcom/android/hwcamera/hwui/SubPopupWindows$3;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$3;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 134
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 142
    .local v0, photoFlyAnimation:Landroid/view/animation/Animation;
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    .line 145
    return-void

    .line 139
    .end local v0           #photoFlyAnimation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #photoFlyAnimation:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public dismissPopupWindowNoAni()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;->onPopupWindowDismiss()V

    .line 179
    :cond_0
    return-void
.end method

.method public dismissPopupWindows(Z)V
    .locals 3
    .parameter "isCloseParent"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 160
    .local v0, popWindowdismissAnimation:Landroid/view/animation/Animation;
    :goto_0
    if-eqz p1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    invoke-interface {v1}, Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;->onPopupWindowDismiss()V

    .line 171
    .end local v0           #popWindowdismissAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #popWindowdismissAnimation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public getSetValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    return-object v0
.end method

.method public initHaveKeySettingView()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getSettingmenu()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 77
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeydata()V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    .line 80
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f03001c

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemTitle"

    aput-object v6, v4, v5

    const-string v5, "Radioimage"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->creatPopupWindows()V

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$1;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$2;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    return v0

    .line 80
    :array_0
    .array-data 0x4
        0x91t 0x0t 0x8t 0x7ft
        0x92t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    return v0
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    .line 240
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 243
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 251
    .local v0, mRelativeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 268
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 253
    :sswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 254
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 258
    :sswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 263
    :sswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 264
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setSceceDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 342
    return-void
.end method
