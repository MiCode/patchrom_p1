.class public Lcom/android/hwcamera/rewind/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static backgroundSelectionEnabled:Z

.field public static burstSize:I

.field public static externalViewer:Ljava/lang/String;

.field public static previewCallbacksEnabled:Z

.field public static previewEnabled:Z

.field public static rewindMode:I

.field public static saveEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    const/4 v0, 0x5

    sput v0, Lcom/android/hwcamera/rewind/Config;->burstSize:I

    .line 9
    sput-boolean v1, Lcom/android/hwcamera/rewind/Config;->previewEnabled:Z

    .line 10
    sput-boolean v1, Lcom/android/hwcamera/rewind/Config;->backgroundSelectionEnabled:Z

    .line 11
    sput-boolean v1, Lcom/android/hwcamera/rewind/Config;->saveEnabled:Z

    .line 14
    const-string v0, "com.android.hwcamera.panoramaviewer.PanoramaActivity"

    sput-object v0, Lcom/android/hwcamera/rewind/Config;->externalViewer:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/rewind/Config;->rewindMode:I

    .line 17
    sput-boolean v1, Lcom/android/hwcamera/rewind/Config;->previewCallbacksEnabled:Z

    .line 21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Blaze generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Full Android on Blaze or SDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    :cond_0
    const/16 v0, 0xb

    sput v0, Lcom/android/hwcamera/rewind/Config;->burstSize:I

    .line 26
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "myTouch_4G_Slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
