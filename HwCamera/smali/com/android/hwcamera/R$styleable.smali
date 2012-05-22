.class public final Lcom/android/hwcamera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I = null

.field public static final CameraPreference_title:I = 0x0

.field public static final GridLines:[I = null

.field public static final GridLines_DoAnimation:I = 0x0

.field public static final IconIndicator:[I = null

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I = null

.field public static final IconListPreference_icons:I = 0x0

.field public static final IconListPreference_largeIcons:I = 0x1

.field public static final ListPreference:[I = null

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x3

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_key:I = 0x0

.field public static final Panel:[I = null

.field public static final Panel_animationDuration:I = 0x0

.field public static final Panel_closedHandle:I = 0x4

.field public static final Panel_linearFlying:I = 0x2

.field public static final Panel_openedHandle:I = 0x3

.field public static final Panel_position:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2155
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->CameraPreference:[I

    .line 2182
    new-array v0, v3, [I

    const v1, 0x7f01000d

    aput v1, v0, v2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->GridLines:[I

    .line 2211
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/R$styleable;->IconIndicator:[I

    .line 2246
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/hwcamera/R$styleable;->IconListPreference:[I

    .line 2285
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->ListPreference:[I

    .line 2354
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/hwcamera/R$styleable;->Panel:[I

    return-void

    .line 2211
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 2246
    :array_1
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    .line 2285
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2354
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
