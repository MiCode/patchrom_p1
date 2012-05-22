.class Lcom/android/hwcamera/JpegEncodingQualityMappings;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field private static final DEFAULT_QUALITY:I = 0x55

.field private static final TAG:Ljava/lang/String; = "JpegEncodingQualityMappings"

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    .line 5542
    sget-object v0, Lcom/android/hwcamera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5543
    sget-object v0, Lcom/android/hwcamera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "fine"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5544
    sget-object v0, Lcom/android/hwcamera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    const-string v1, "superfine"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5545
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualityNumber(Ljava/lang/String;)I
    .locals 6
    .parameter "jpegQuality"

    .prologue
    const/16 v2, 0x55

    .line 5551
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5552
    .local v1, qualityPercentile:I
    if-ltz v1, :cond_0

    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    .line 5564
    .end local v1           #qualityPercentile:I
    :goto_0
    return v1

    .restart local v1       #qualityPercentile:I
    :cond_0
    move v1, v2

    .line 5555
    goto :goto_0

    .line 5556
    .end local v1           #qualityPercentile:I
    :catch_0
    move-exception v3

    .line 5559
    sget-object v3, Lcom/android/hwcamera/JpegEncodingQualityMappings;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5560
    .local v0, quality:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 5561
    const-string v3, "JpegEncodingQualityMappings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Jpeg quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5562
    goto :goto_0

    .line 5564
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v1

    goto :goto_0
.end method
