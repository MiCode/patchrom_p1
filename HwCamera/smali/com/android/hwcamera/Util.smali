.class public Lcom/android/hwcamera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Util$ImageFileNamer;,
        Lcom/android/hwcamera/Util$Coordinate;
    }
.end annotation


# static fields
.field public static final BLINK_TAG:Ljava/lang/String; = "BlinkDetection"

.field public static final BRIGHTNESS_VALUE_ERR:I = -0x64

.field public static final CONTRAST_VALUE_ERR:I = -0x64

.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.7f

.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final FIRSTQUARTER:I = 0x5a

.field public static final FORTHQUARTER:I = 0x0

.field private static HwExtCameraClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static HwExtCameraFieldList:[Ljava/lang/reflect/Field; = null

.field private static HwExtCameraInstance:Ljava/lang/Object; = null

.field private static HwExtCameraMethodList:[Ljava/lang/reflect/Method; = null

.field public static final KEY_HUAWEI_BRIGHTNESS:Ljava/lang/String; = "KEY_HUAWEI_BRIGHTNESS"

.field public static final KEY_HUAWEI_CONTRAST:Ljava/lang/String; = "KEY_HUAWEI_CONTRAST"

.field public static final KEY_HUAWEI_ISO:Ljava/lang/String; = "KEY_HUAWEI_ISO"

.field public static final KEY_HUAWEI_SATURATION:Ljava/lang/String; = "KEY_HUAWEI_SATURATION"

.field private static ParameterClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field private static final QUALITY_LIST_END:I = 0x7

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.cooliris.media.action.REVIEW"

.field public static final REVIEW_ACTION_ICS:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final SATURATION_VALUE_ERR:I = -0x64

.field public static final SECONDQUARTER:I = 0xb4

.field public static final SHOOTING_MODE_ACTION:I = 0x7

.field public static final SHOOTING_MODE_BEAUTY:I = 0x6

.field public static final SHOOTING_MODE_BURST:I = 0x3

.field public static final SHOOTING_MODE_HDR:I = 0x4

.field public static final SHOOTING_MODE_LOWLIGHT:I = 0x9

.field public static final SHOOTING_MODE_NORMAL:I = 0x0

.field public static final SHOOTING_MODE_PANORAMA:I = 0x1

.field public static final SHOOTING_MODE_REWIND:I = 0x2

.field public static final SHOOTING_MODE_SMILE:I = 0x5

.field public static final SHOOTING_MODE_ZSL:I = 0x8

.field public static final STR_SHOOTING_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final STR_SHOOTING_MODE_BEAUTY:Ljava/lang/String; = "beauty"

.field public static final STR_SHOOTING_MODE_BURST:Ljava/lang/String; = "burst"

.field public static final STR_SHOOTING_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final STR_SHOOTING_MODE_LOWLIGHT:Ljava/lang/String; = "lowlight"

.field public static final STR_SHOOTING_MODE_NORMAL:Ljava/lang/String; = "single"

.field public static final STR_SHOOTING_MODE_PANORAMA:Ljava/lang/String; = "panorama"

.field public static final STR_SHOOTING_MODE_REWIND:Ljava/lang/String; = "group"

.field public static final STR_SHOOTING_MODE_SMILE:Ljava/lang/String; = "smile"

.field public static final STR_SHOOTING_MODE_ZSL:Ljava/lang/String; = "zsl"

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final THIRDQUARTER:I = 0x10e

.field public static final TOUCH_AF_OFF:Ljava/lang/String; = "touch-off"

.field public static final TOUCH_AF_ON:Ljava/lang/String; = "touch-on"

.field public static final UPDATE_REWIND_THUMBNAIL:I = 0x26

.field private static mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

.field private static sIsTabletUI:Z

.field private static sPixelDensity:F

.field public static touchPostion:Lcom/android/hwcamera/Util$Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 567
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 568
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 569
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    .line 570
    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraFieldList:[Ljava/lang/reflect/Field;

    .line 572
    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 574
    sput-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 575
    sput-object v1, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;

    .line 216
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 217
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 392
    if-nez p0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2136
    return-void
.end method

.method public static cancelPanorama()V
    .locals 5

    .prologue
    .line 1458
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1459
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "cancelPanorama"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1460
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1461
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1463
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1470
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1471
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1466
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static cancelTakePictureEx()Z
    .locals 6

    .prologue
    .line 1603
    const/4 v0, 0x0

    .line 1605
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1606
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "cancelTakePictureEx"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1607
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1608
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const/4 v0, 0x1

    .line 1620
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1611
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "cancelTakePictureEx interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1616
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1617
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1618
    const/4 v0, 0x0

    goto :goto_0

    .line 1614
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 464
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 492
    if-le p0, p2, :cond_0

    .line 494
    .end local p2
    :goto_0
    return p2

    .line 493
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 494
    goto :goto_0
.end method

.method public static clearShootMode()V
    .locals 5

    .prologue
    .line 1898
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1899
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "clearShotMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1900
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1901
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    :cond_0
    :goto_0
    return-void

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 359
    if-nez p0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 361
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 325
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 326
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 328
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 330
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 334
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 345
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 328
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 330
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 339
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 341
    goto :goto_2

    .line 342
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 345
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 305
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 309
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 310
    const/4 v1, 0x1

    .line 311
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 312
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 318
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 2127
    sget-object v1, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    monitor-enter v1

    .line 2128
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/hwcamera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 486
    sub-float v0, p0, p2

    .line 487
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 488
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 240
    sget v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .parameter "rect"
    .parameter "msg"

    .prologue
    .line 2092
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    return-void
.end method

.method public static enterLightsOutMode(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 2266
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2267
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2268
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2269
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 468
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2158
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2160
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2162
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2163
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2167
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2173
    :goto_0
    return-void

    .line 2169
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2170
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2171
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2172
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 643
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 644
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    sget-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    .line 650
    :cond_0
    return-object v1
.end method

.method public static getBrightnessStep()I
    .locals 5

    .prologue
    .line 1785
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1786
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1787
    const/4 v1, 0x0

    .line 1788
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 1789
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 1792
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 4
    .parameter "cr"
    .parameter "value"
    .parameter "defaultvalue"

    .prologue
    const/4 v3, 0x1

    .line 1884
    const/4 v0, 0x1

    .line 1886
    .local v0, bReturnValue:Z
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1887
    .local v1, configValue:I
    if-ne v1, v3, :cond_0

    move v0, v3

    .line 1893
    .end local v1           #configValue:I
    :goto_0
    return v0

    .line 1887
    .restart local v1       #configValue:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1888
    .end local v1           #configValue:I
    :catch_0
    move-exception v2

    .line 1889
    .local v2, error:Ljava/lang/NoClassDefFoundError;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    const/4 v0, 0x0

    goto :goto_0

    .line 1891
    .end local v2           #error:Ljava/lang/NoClassDefFoundError;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public static getContrastStep()I
    .locals 5

    .prologue
    .line 1649
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1650
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1651
    const/4 v1, 0x0

    .line 1652
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 1653
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 1656
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getDelayTime(I)I
    .locals 3
    .parameter "time"

    .prologue
    .line 2286
    const-string v1, "ro.autotest.delaytimes"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2287
    .local v0, times:I
    mul-int v1, p0, v0

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 528
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 529
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 531
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 532
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 533
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 537
    :goto_0
    return v1

    .line 535
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 500
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 506
    :goto_0
    :pswitch_0
    return v1

    .line 502
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 503
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 504
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDistortionValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1182
    const/4 v1, 0x0

    .line 1183
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1184
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getFaceDistortion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1185
    .local v0, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1186
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1191
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1195
    :goto_0
    return-object v2

    .line 1192
    :catch_0
    move-exception v2

    .line 1195
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 1974
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public static getFaceDetectionMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1035
    const/4 v2, 0x0

    .line 1036
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 1037
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getFaceDetectionMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1038
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1039
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1043
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1047
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 1044
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1045
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getHdrMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 745
    const/4 v2, 0x0

    .line 746
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 747
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getHdrMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 749
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 750
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 761
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 753
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 754
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 756
    :cond_2
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "getHdrMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 757
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 758
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 762
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHdrSaveMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 810
    const/4 v2, 0x0

    .line 811
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 812
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getHdrSetting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 813
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 814
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 819
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 823
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 820
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 821
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 823
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;
    .locals 7
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x0

    .line 588
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "U8860"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    :goto_0
    return-object v2

    .line 592
    :cond_0
    :try_start_0
    const-string v3, "com.huawei.hwextcamera.HwExtCamera"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    .line 593
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 594
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    .line 607
    new-instance v3, Lcom/android/hwcamera/HwCamera;

    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/hwcamera/HwCamera;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 608
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 609
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 1854
    const-string v0, "KEY_HUAWEI_BRIGHTNESS"

    if-ne p0, v0, :cond_0

    .line 1855
    const-string v0, "getBrightnessKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1863
    :goto_0
    return-object v0

    .line 1856
    :cond_0
    const-string v0, "KEY_HUAWEI_CONTRAST"

    if-ne p0, v0, :cond_1

    .line 1857
    const-string v0, "getContrastKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1858
    :cond_1
    const-string v0, "KEY_HUAWEI_ISO"

    if-ne p0, v0, :cond_2

    .line 1859
    const-string v0, "getIsoKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1860
    :cond_2
    const-string v0, "KEY_HUAWEI_SATURATION"

    if-ne p0, v0, :cond_3

    .line 1861
    const-string v0, "getSaturationKey"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1863
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private static getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "methodStr"

    .prologue
    .line 1867
    const-string v2, ""

    .line 1869
    .local v2, keyValue:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 1870
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1871
    .local v4, method:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 1872
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1879
    .end local v2           #keyValue:Ljava/lang/String;
    .end local v4           #method:Ljava/lang/reflect/Method;
    .local v3, keyValue:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1876
    .end local v3           #keyValue:Ljava/lang/String;
    .restart local v2       #keyValue:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1877
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 1879
    .end local v2           #keyValue:Ljava/lang/String;
    .restart local v3       #keyValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMaxBrightness()I
    .locals 2

    .prologue
    .line 1799
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1800
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1801
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1803
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxContrast()I
    .locals 2

    .prologue
    .line 1663
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1664
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1665
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1667
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 1965
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public static getMaxSaturation()I
    .locals 2

    .prologue
    .line 1928
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 1929
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1930
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1932
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinBrightness()I
    .locals 2

    .prologue
    .line 1810
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessValues()Ljava/util/List;

    move-result-object v0

    .line 1811
    .local v0, BrightnessValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1812
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1814
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinContrast()I
    .locals 2

    .prologue
    .line 1674
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastValues()Ljava/util/List;

    move-result-object v0

    .line 1675
    .local v0, contrastValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1676
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1678
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 1970
    sget-object v0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public static getMinSaturation()I
    .locals 2

    .prologue
    .line 1939
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 1940
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1941
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1943
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x64

    goto :goto_0
.end method

.method public static getMiniPanorama()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 1409
    const/4 v2, 0x0

    .line 1410
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1411
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getMiniPanorama"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1412
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1413
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1425
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 1415
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1419
    :cond_1
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getParameterInstance()V
    .locals 3

    .prologue
    .line 624
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    .line 627
    sget-object v1, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/Util;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 631
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 632
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "Util"

    const-string v2, "Got getParameterInstance exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRedEyeReductionSupported()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1015
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 1016
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "setRedEyeReduction"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1017
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1026
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 1026
    goto :goto_0
.end method

.method public static getSaturationStep()I
    .locals 5

    .prologue
    .line 1914
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationValues()Ljava/util/List;

    move-result-object v0

    .line 1915
    .local v0, SaturationValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1916
    const/4 v1, 0x0

    .line 1917
    .local v1, firstValueIndex:I
    const/4 v2, 0x1

    .line 1918
    .local v2, secondValueIndex:I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v3, v4, v3

    .line 1921
    .end local v1           #firstValueIndex:I
    .end local v2           #secondValueIndex:I
    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x64

    goto :goto_0
.end method

.method public static getSupportedBrightnessDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1821
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v5

    div-int v3, v4, v5

    .line 1822
    .local v3, startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxBrightness()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v5

    div-int v1, v4, v5

    .line 1824
    .local v1, endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1825
    .local v0, BrightnessValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1828
    :cond_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public static getSupportedBrightnessValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1763
    const/4 v1, 0x0

    .line 1765
    .local v1, BrightnessValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1766
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedBrightnessValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1767
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1768
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1770
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedBrightnessValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1775
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1776
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1773
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedContrastDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1685
    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v4

    const/16 v5, -0x64

    if-ne v4, v5, :cond_0

    .line 1686
    const/4 v4, 0x0

    .line 1695
    .local v0, contrastValue:Ljava/lang/String;
    .local v1, endIndex:I
    .local v2, i:I
    .local v3, startIndex:I
    :goto_0
    return-object v4

    .line 1688
    .end local v0           #contrastValue:Ljava/lang/String;
    .end local v1           #endIndex:I
    .end local v2           #i:I
    .end local v3           #startIndex:I
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v5

    div-int v3, v4, v5

    .line 1689
    .restart local v3       #startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxContrast()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v5

    div-int v1, v4, v5

    .line 1691
    .restart local v1       #endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1692
    .restart local v0       #contrastValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .restart local v2       #i:I
    :goto_1
    if-gt v2, v1, :cond_1

    .line 1693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1692
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1695
    :cond_1
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0
.end method

.method public static getSupportedContrastValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1627
    const/4 v1, 0x0

    .line 1629
    .local v1, contrastValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1630
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedContrastValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1631
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1632
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1634
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedContrastValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1639
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1640
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1637
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedDistortionValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v2, 0x0

    .line 1152
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 1153
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getSupportFaceDistortions"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1154
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1155
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1159
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 1160
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1161
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1163
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSupportedFaceDetectionModes()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    const/4 v3, 0x0

    .line 961
    .local v3, isSupported:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 962
    .local v4, result:Ljava/lang/String;
    :try_start_0
    const-string v1, "FaceTracking"

    .line 963
    .local v1, faceTag:Ljava/lang/String;
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 964
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v6, "isFeatureSupported"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 965
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 966
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 967
    const-string v4, "on,off"

    .line 972
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #isSupported:Ljava/lang/Object;
    :cond_0
    invoke-static {v4}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 975
    .end local v1           #faceTag:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 975
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getSupportedHdrMode()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 683
    const/4 v3, 0x0

    .line 684
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v7, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 685
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v5, supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "on"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    const-string v7, "off"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v4

    .line 689
    .local v4, shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "hdr"

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 690
    .local v0, bRetVal:Z
    if-eqz v0, :cond_0

    .line 707
    .end local v0           #bRetVal:Z
    .end local v3           #result:Ljava/lang/Object;
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, ex:Ljava/lang/Exception;
    :goto_0
    return-object v5

    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #bRetVal:Z
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v4       #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v5, v6

    .line 693
    goto :goto_0

    .line 695
    .end local v0           #bRetVal:Z
    .end local v4           #shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #supportHdrMode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 696
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 698
    :cond_2
    sget-object v7, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v8, "getSupportedHdrMode"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 699
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_3

    .line 700
    sget-object v7, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    .end local v3           #result:Ljava/lang/Object;
    :cond_3
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    goto :goto_0

    .line 704
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 705
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 707
    goto :goto_0
.end method

.method public static getSupportedIsoValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1203
    const/4 v2, 0x0

    .line 1204
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1205
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedIsoValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1206
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1207
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1220
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 1226
    :goto_1
    return-object v3

    .line 1212
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 1213
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getSupportedIsoValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1214
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1215
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1223
    .end local v2           #result:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSupportedSaturationDegrees()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1950
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v5

    div-int v3, v4, v5

    .line 1951
    .local v3, startIndex:I
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxSaturation()I

    move-result v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v5

    div-int v1, v4, v5

    .line 1953
    .local v1, endIndex:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, SaturationValue:Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1957
    :cond_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public static getSupportedSaturationValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1835
    const/4 v1, 0x0

    .line 1837
    .local v1, SaturationValue:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1838
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getSupportedSaturationValues"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1839
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1840
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1842
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_1
    const-string v4, "Util"

    const-string v5, "getSupportedSaturationValues interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1847
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 1848
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1845
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getSupportedShootModeValues()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 1257
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .local v5, shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1259
    .local v3, result:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 1260
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v7, "getSupportedShootingModes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1261
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1262
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1264
    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 1265
    .local v4, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1266
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1267
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v4           #resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string v6, "action"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v9, :cond_2

    .line 1279
    const-string v6, "action"

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1285
    .end local v5           #shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-object v5

    .line 1270
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v5       #shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v6, "single"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedHdrMode()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1272
    const-string v6, "hdr"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_4
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1275
    const-string v6, "panorama"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1282
    .end local v3           #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1283
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1285
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getSupportedTouchAfMode()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    const/4 v2, 0x0

    .line 834
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 835
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "getSupportedTouchAfMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 836
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 837
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 848
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 852
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 840
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 841
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 843
    :cond_2
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "getSupportedTouchAfAec"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 844
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 845
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 849
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 850
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 852
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getTouchAfMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 884
    const/4 v1, 0x0

    .line 885
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 886
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "getTouchAfMode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 887
    .local v0, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 888
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 900
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .line 892
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 893
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 895
    :cond_2
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "getTouchAfAec"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 896
    .restart local v0       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 897
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 901
    .end local v0           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 904
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTouchPosition()Lcom/android/hwcamera/Util$Coordinate;
    .locals 9

    .prologue
    .line 932
    const/4 v3, 0x0

    .line 933
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 934
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "getTouchPosition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 935
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 936
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v4, v3

    .line 946
    :goto_0
    check-cast v4, Lcom/android/hwcamera/Util$Coordinate;

    .line 950
    :goto_1
    return-object v4

    .line 940
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v3       #result:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getTouchIndexAf"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 941
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 942
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 944
    .end local v3           #result:Ljava/lang/Object;
    :cond_2
    const-string v5, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTouchIndexAf = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v3

    check-cast v0, Lcom/android/hwcamera/Util$Coordinate;

    move-object v4, v0

    iget v4, v4, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_0

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static hasHwExtCamera()Z
    .locals 1

    .prologue
    .line 619
    sget-object v0, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 351
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    .end local v0           #i:I
    :goto_1
    return v0

    .line 350
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    .line 225
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 228
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 229
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 231
    new-instance v2, Lcom/android/hwcamera/Util$ImageFileNamer;

    const v3, 0x7f0c009a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/hwcamera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    .line 233
    return-void

    .line 222
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "win"
    .parameter "resolver"

    .prologue
    .line 2273
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2275
    .local v0, mode:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2276
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2277
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2278
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2280
    .end local v1           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static isBuildVersionAboveICS()Z
    .locals 2

    .prologue
    .line 2282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFeatureSupported(Ljava/lang/String;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 661
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 662
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "isFeatureSupported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 663
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 664
    .local v2, result:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 671
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHdrSupported()Z
    .locals 9

    .prologue
    .line 1292
    const/4 v0, 0x0

    .line 1294
    .local v0, bSupported:Z
    const/4 v3, 0x0

    .line 1295
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 1296
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "isFeatureSupported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1297
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 1298
    const/4 v0, 0x0

    .line 1300
    :cond_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "hdr"

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1301
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1302
    const/4 v0, 0x1

    .line 1322
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Object;
    :cond_1
    :goto_0
    return v0

    .line 1305
    .restart local v3       #result:Ljava/lang/Object;
    :cond_2
    sget-boolean v4, Lcom/android/hwcamera/Camera;->HAS_HDR_FEATURE:Z

    if-eqz v4, :cond_1

    .line 1306
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v4, :cond_3

    .line 1307
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 1309
    :cond_3
    sget-object v4, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v5, "getSupportedHdrMode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1310
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_4

    .line 1311
    sget-object v4, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v4}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1313
    .end local v3           #result:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 1314
    const/4 v0, 0x1

    goto :goto_0

    .line 1318
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1319
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0

    .line 1320
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public static isPanoramaSupported()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1327
    const/4 v2, 0x0

    .line 1328
    .local v2, isSupported:Ljava/lang/Object;
    :try_start_0
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 1329
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v6, "isFeatureSupported"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1330
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return v3

    .line 1333
    :cond_1
    sget-object v5, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Panorama"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1335
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPanoramaSupported(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1369
    .local p0, shootmodeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "panorama"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanoramaSupportedByScalado()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1350
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v4, shootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1352
    .local v3, result:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 1353
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v7, "getSupportedShootingModes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1354
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1355
    sget-object v6, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1357
    .end local v3           #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 1358
    invoke-static {v4}, Lcom/android/hwcamera/Util;->isPanoramaSupported(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1365
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return v5

    .line 1362
    :catch_0
    move-exception v1

    .line 1363
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 472
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedLocation()Z
    .locals 8

    .prologue
    .line 1586
    const/4 v3, 0x0

    .line 1588
    .local v3, isSupportedSetLocation:Z
    :try_start_0
    const-string v4, "android.media.MediaRecorder"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1589
    .local v0, cls:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1590
    const-string v4, "setLocation"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1591
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1592
    const/4 v3, 0x1

    .line 1598
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v3

    .line 1595
    :catch_0
    move-exception v1

    .line 1596
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTabletUI()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/hwcamera/Util;->sIsTabletUI:Z

    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 2076
    if-nez p0, :cond_0

    .line 2088
    :goto_0
    return v2

    .line 2079
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2080
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 2081
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2085
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 2086
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 2084
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2088
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static lockPanoramaDirection(I)V
    .locals 7
    .parameter "direction"

    .prologue
    .line 1483
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1484
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "lockPanoramaDirection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1485
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1486
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1488
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find lockDirection()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1495
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1496
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1491
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "lockDirection HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 369
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 370
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 371
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 373
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 387
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 377
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/hwcamera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 382
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 383
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 385
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 386
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 476
    add-int/lit8 p0, p0, -0x1

    .line 477
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 478
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 479
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 480
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 481
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 482
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;
    .locals 9
    .parameter "rect"
    .parameter "point"
    .parameter "screenRatio"

    .prologue
    .line 2317
    const/4 v3, 0x0

    .line 2319
    .local v3, result:Landroid/graphics/Rect;
    :try_start_0
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 2320
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v5, "optmizeFocusAreaRect"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Rect;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2323
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2324
    sget-object v4, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Rect;

    move-object v3, v0

    .line 2335
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2327
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v4, "Util"

    const-string v5, "optmizeFocusAreaRect interface not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2332
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2333
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2330
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v4, "Util"

    const-string v5, "HwExtCameraClass not support"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2148
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2149
    .local v0, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2150
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2153
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mediacenter.mediaplayerservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2154
    .local v1, toHWmusic:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2155
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2156
    return-void
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 2106
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2108
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2111
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2112
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2113
    return-void

    :cond_0
    move v0, v1

    .line 2106
    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 3
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 2118
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2120
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2122
    div-int v0, p3, p5

    int-to-float v0, v0

    div-int v1, p4, p6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2123
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2124
    return-void

    :cond_0
    move v0, v1

    .line 2118
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 2097
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2098
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2099
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2100
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2101
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 252
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 253
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 254
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 255
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 256
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 257
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 258
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 265
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 267
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 271
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 273
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 274
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    move-object p0, v7

    .line 281
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 259
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 260
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 262
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 321
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static setBlinkDetection(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1112
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1113
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setBlinkDetection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1114
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1115
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBrightnessValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1742
    const/4 v0, 0x0

    .line 1744
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1745
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setBrightnessValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1746
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1747
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1749
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setBrightnessValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1754
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1755
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1752
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setBurstShootingInterval(I)Z
    .locals 8
    .parameter "millisecond"

    .prologue
    .line 1528
    const/4 v0, 0x0

    .line 1530
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1531
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setBurstShotInterval"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1532
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1533
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/4 v0, 0x1

    .line 1545
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1536
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setBurstShootingInterval interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1541
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1542
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1543
    const/4 v0, 0x0

    goto :goto_0

    .line 1539
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setBurstTotalCaptures(I)V
    .locals 7
    .parameter "num"

    .prologue
    .line 1552
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1553
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setBurstTotalCaptures"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1554
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1555
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1557
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "setBurstShootingInterval interface not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1562
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1563
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1560
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setCameraDevice(Lcom/android/hwcamera/HwCamera;)V
    .locals 0
    .parameter "cameraDevice"

    .prologue
    .line 578
    sput-object p0, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 579
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V
    .locals 5
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 548
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 549
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 550
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 552
    .local v0, degrees:I
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 553
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 554
    .local v2, result:I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 558
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 559
    return-void

    .line 556
    .end local v2           #result:I
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public static setContrastValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1701
    const/4 v0, 0x0

    .line 1703
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1704
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setContrastValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1705
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1706
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1708
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setContrastValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1713
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1714
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1711
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDistortionValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1168
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1169
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setFaceDistortion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1170
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1171
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFaceDetectionMode(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 985
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 986
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setFaceDetectionMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 987
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 988
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFaceOrientation(I)Z
    .locals 8
    .parameter "degree"

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1127
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1128
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setFaceOrientation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1129
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1130
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const/4 v0, 0x1

    .line 1142
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1133
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setFaceOrientation interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1139
    .local v1, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 1140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1136
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 2229
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 2232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2235
    if-eqz p1, :cond_1

    .line 2236
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 2237
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 2238
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2240
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 2241
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 2243
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 2244
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2246
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 2253
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 2256
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 2257
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2263
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_1
    :goto_2
    return-void

    .line 2238
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2251
    .restart local v0       #hasLatLon:Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 2260
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setHWExtCameraHandler(Landroid/os/Handler;)V
    .locals 7
    .parameter "handler"

    .prologue
    .line 1056
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1057
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setHandler"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1058
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1059
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHdrMode(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 717
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 718
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setHdrMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 719
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 720
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 725
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 727
    :cond_2
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setHdrMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 729
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 730
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 734
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHdrSaveMode(Z)V
    .locals 8
    .parameter "value"

    .prologue
    .line 775
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 776
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setHdrSaveMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 778
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 779
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 784
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 786
    :cond_2
    const/4 v2, 0x0

    .line 787
    .local v2, tmpVal:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 788
    const-string v2, "true"

    .line 792
    :goto_1
    sget-object v3, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v4, "setHdrSetting"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 794
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 795
    sget-object v3, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v2           #tmpVal:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 799
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 790
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #tmpVal:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setISOValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1232
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1233
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setISOValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1234
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1235
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1240
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setISOValue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1241
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1242
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1246
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1247
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLocation(FF)V
    .locals 7
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1571
    :try_start_0
    const-string v3, "android.media.MediaRecorder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1572
    .local v0, cls:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 1573
    const-string v3, "setLocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1574
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1575
    sget-object v3, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1581
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1578
    :catch_0
    move-exception v1

    .line 1579
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setMediaRecord(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter "mediarecorder"

    .prologue
    .line 582
    sput-object p0, Lcom/android/hwcamera/Util;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 583
    return-void
.end method

.method public static setRedEyeReduction(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1000
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1001
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setRedEyeReduction"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1002
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1003
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 2212
    const/4 v1, 0x0

    .line 2213
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 2214
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 2215
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2216
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 2221
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2222
    return-void

    .line 2218
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static setSaturationValue(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1721
    const/4 v0, 0x0

    .line 1723
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1724
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setSaturationValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1725
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1727
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1729
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setSaturationValue interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1734
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1735
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1732
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass not support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setShootingMode(Ljava/lang/String;)Z
    .locals 8
    .parameter "mode"

    .prologue
    .line 1506
    const/4 v0, 0x0

    .line 1508
    .local v0, bReturnValue:Z
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1509
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "setShotMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1511
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1512
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const/4 v0, 0x1

    .line 1524
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v0

    .line 1515
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "setShootingMode interface not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1521
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1522
    const/4 v0, 0x0

    goto :goto_0

    .line 1518
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setSilentOption(Ljava/lang/Object;Z)V
    .locals 7
    .parameter "instance"
    .parameter "slient"

    .prologue
    .line 2293
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    .line 2294
    .local v0, cameraClass:Ljava/lang/Class;
    if-eqz v0, :cond_1

    .line 2295
    const-string v3, "setSilentOption"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2297
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 2298
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    .end local v0           #cameraClass:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 2300
    .restart local v0       #cameraClass:Ljava/lang/Class;
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "cameraClass can\'t find setSilentOption(boolean silent)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2306
    .end local v0           #cameraClass:Ljava/lang/Class;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 2307
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2303
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #cameraClass:Ljava/lang/Class;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "cameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setSmileDetection(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1098
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1099
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setSmileDetection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1100
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1101
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTouchAfMode(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 862
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 863
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setTouchAfMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 864
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 865
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 870
    invoke-static {}, Lcom/android/hwcamera/Util;->getParameterInstance()V

    .line 872
    :cond_2
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setTouchAfAec"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 873
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 874
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 878
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTouchPosition(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 909
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 910
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "setTouchFocusPosition"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 912
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 913
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    sget-object v2, Lcom/android/hwcamera/Util;->ParameterClass:Ljava/lang/Class;

    const-string v3, "setTouchIndexAf"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 920
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 921
    sget-object v2, Lcom/android/hwcamera/Util;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 926
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 399
    new-instance v0, Lcom/android/hwcamera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 405
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0098

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 412
    return-void
.end method

.method public static slideIn(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "from"

    .prologue
    const/4 v2, 0x0

    .line 439
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 457
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 458
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 459
    return-object v0

    .line 446
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 447
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 449
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 450
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 452
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 453
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    .line 415
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    packed-switch p1, :pswitch_data_0

    .line 431
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 433
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 434
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    return-object v0

    .line 422
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 423
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 425
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 426
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 428
    .end local v0           #anim:Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 429
    .restart local v0       #anim:Landroid/view/animation/Animation;
    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1981
    if-nez p0, :cond_1

    .line 1982
    const/4 v0, 0x0

    .line 1990
    :cond_0
    return-object v0

    .line 1985
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1987
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1988
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private splitCoordinate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/hwcamera/Util$Coordinate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2039
    if-nez p1, :cond_1

    move-object v1, v3

    .line 2051
    :cond_0
    :goto_0
    return-object v1

    .line 2042
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    .local v1, coordinateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/hwcamera/Util$Coordinate;>;"
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2045
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->strToCoordinate(Ljava/lang/String;)Lcom/android/hwcamera/Util$Coordinate;

    move-result-object v0

    .line 2046
    .local v0, c:Lcom/android/hwcamera/Util$Coordinate;
    if-eqz v0, :cond_2

    .line 2047
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2049
    .end local v0           #c:Lcom/android/hwcamera/Util$Coordinate;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 2050
    goto :goto_0
.end method

.method public static startFaceDetection()V
    .locals 5

    .prologue
    .line 1070
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1071
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "startFaceDetectionEx"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1072
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1073
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startPanorama(IIFLandroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8
    .parameter "height"
    .parameter "num"
    .parameter "rate"
    .parameter "thumbnailCallback"
    .parameter "finalJpegCallback"

    .prologue
    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 1383
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v4, "startPanorama"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/hardware/Camera$PictureCallback;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/hardware/Camera$PictureCallback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1385
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1386
    sget-object v3, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    aput-object p4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1389
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass can\'t find startPanorama()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1396
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1397
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1393
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v3, "Util"

    const-string v4, "startPanorama HwExtCameraClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static stopFMRadioPlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v0, toFM:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2142
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2143
    return-void
.end method

.method public static stopFaceDetection()V
    .locals 5

    .prologue
    .line 1084
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1085
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "stopFaceDetectionEx"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1086
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1087
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopPanorama(Z)V
    .locals 7
    .parameter "ShotLast"

    .prologue
    .line 1436
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1437
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraClass:Ljava/lang/Class;

    const-string v3, "stopPanorama"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1439
    .local v1, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 1440
    sget-object v2, Lcom/android/hwcamera/Util;->HwExtCameraInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1442
    .restart local v1       #invodeMethod:Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass can\'t find stopPanorama()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1449
    .end local v1           #invodeMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1450
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1445
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Util"

    const-string v3, "stopPanorama HwExtCameraClass is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static strToCoordinate(Ljava/lang/String;)Lcom/android/hwcamera/Util$Coordinate;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 2059
    if-nez p0, :cond_0

    .line 2072
    :goto_0
    return-object v3

    .line 2061
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2062
    .local v0, pos:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 2063
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2064
    .local v1, x:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2065
    .local v2, y:Ljava/lang/String;
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    .line 2068
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/hwcamera/Util$Coordinate;->yCoordinate:I

    .line 2069
    sget-object v3, Lcom/android/hwcamera/Util;->touchPostion:Lcom/android/hwcamera/Util$Coordinate;

    goto :goto_0

    .line 2071
    .end local v1           #x:Ljava/lang/String;
    .end local v2           #y:Ljava/lang/String;
    :cond_1
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Coordinate parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static transformDPtoPX(ILandroid/content/Context;)I
    .locals 4
    .parameter "width"
    .parameter "contex"

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 541
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v2, 0x1

    int-to-float v3, p0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 542
    .local v1, widthf:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    return-void

    .line 516
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cooliris.media.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 519
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
