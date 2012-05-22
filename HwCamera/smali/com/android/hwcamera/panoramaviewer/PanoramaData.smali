.class public Lcom/android/hwcamera/panoramaviewer/PanoramaData;
.super Ljava/lang/Object;
.source "PanoramaData.java"


# static fields
.field static final BG_IMG_HEIGHT:I = 0x8

.field static final BG_IMG_WIDTH:I = 0x43a

.field public static final DEBUG_RESTRICTION_ANGLES:Z = false

.field static final DECODE_INTERNAL_RESOURCE:Z = true

.field static final LOGO_TEXTURE_HEIGHT:I = 0x100

.field static final LOGO_TEXTURE_WIDTH:I = 0x100

.field static final NUMBER_OF_INTRO:I = 0x18

.field static final NUMBER_OF_SEGMENTS:I = 0x32

.field static final SCALADO_LOGO_HEIGHT:I = 0x32

.field static final SCALADO_LOGO_WIDTH:I = 0xe3

.field static final SPHERICAL:Z = false

.field static final TEST_HACK_IT_UP:Z = false

.field static final TEXTURE_SIZE:I = 0x400

.field static final TEXTURE_SIZE_F:F = 1024.0f

.field static final UPPER_MENU_HEIGHT:I = 0x1d

.field static final USE_LIB_JPEG:Z = false

.field static final WORLD_RADIUS:F = 1.5f

.field private static final angleFormat:Ljava/text/DecimalFormat;

.field static bgTextureBuffer:Ljava/nio/ByteBuffer;

.field static final df:Ljava/text/DecimalFormat;

.field static logoTextureBuffer:Ljava/nio/ByteBuffer;


# instance fields
.field public CAMERA_FOV:F

.field public PANORAMA_IMAGE_FOV:F

.field public final bufferCount:I

.field context:Landroid/content/Context;

.field private flatMode:Z

.field public final fractalSegWidthPerTex:I

.field public final fractalSegmentWidth:I

.field public final hasEvenBlockSizes:Z

.field height:F

.field imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

.field public final imageSize:Landroid/graphics/Rect;

.field isOnRendered:Z

.field public maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field public minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field panoramaImagePath:Ljava/lang/String;

.field radius:F

.field resources:Landroid/content/res/Resources;

.field public final segmentWidth:I

.field public final segments:I

.field public final segmentsMod:I

.field public final segmentsPerTexture:I

.field public final textureWidth:I

.field public final usableWidth:I

.field private wallpaperMode:Z

.field width:F

.field public world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->logoTextureBuffer:Ljava/nio/ByteBuffer;

    .line 66
    sput-object v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bgTextureBuffer:Ljava/nio/ByteBuffer;

    .line 70
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    .line 300
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->angleFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(IILandroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 11
    .parameter "segments"
    .parameter "textureWidth"
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->panoramaImagePath:Ljava/lang/String;

    .line 73
    const v4, 0x42ec23d7

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    .line 75
    const/high16 v4, 0x42b4

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->CAMERA_FOV:F

    .line 80
    const/high16 v4, 0x3fc0

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->radius:F

    .line 84
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    .line 92
    new-instance v4, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v4}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 93
    new-instance v4, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v4}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 189
    iput p2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    .line 190
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segments:I

    .line 192
    iget-boolean v4, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    if-nez v4, :cond_0

    .line 193
    iget v4, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    .line 197
    :cond_0
    iget-boolean v4, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    iput-boolean v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    .line 199
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanoramaData:  angle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanoramaData:  PANORAMA_IMAGE_FOV="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    .line 230
    .local v1, texProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "down panoramaImagePath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    .end local v1           #texProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;
    const/16 v4, 0x32

    iget-object v5, p4, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;-><init>(ILjava/lang/String;)V

    .line 236
    .restart local v1       #texProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;
    if-nez v1, :cond_1

    .line 237
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not load textures"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_1
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegWidthPerTex:I

    .line 244
    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v0

    .line 245
    .local v0, imageWidth:I
    mul-int/lit8 v4, p2, 0x6

    if-lt v0, v4, :cond_3

    .line 246
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    .line 247
    const/16 v4, 0x8

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    .line 253
    :goto_0
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    .line 256
    int-to-float v4, v0

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    .line 258
    int-to-float v4, v0

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    .line 262
    add-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v0

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    mul-int/2addr v4, p2

    if-ne v0, v4, :cond_4

    .line 263
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    .line 264
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    .line 272
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    .line 276
    invoke-direct {p0, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->createWorld(Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;)Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    .line 279
    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    const/high16 v6, 0x4000

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->radius:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    const/high16 v7, 0x43b4

    div-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v6

    int-to-float v6, v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->height:F

    .line 285
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    new-instance v5, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v5, v10, v10, v10}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v5, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 288
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iput v5, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    .line 289
    iget-boolean v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    if-eqz v4, :cond_2

    .line 290
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->refreshWall(Landroid/content/res/Resources;)V

    .line 294
    :cond_2
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    .line 295
    return-void

    .line 249
    :cond_3
    const/16 v4, 0x40

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    .line 250
    const/16 v4, 0x10

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    goto/16 :goto_0

    .line 267
    :cond_4
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    .line 268
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    rem-int v4, v0, v4

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    goto :goto_1

    :cond_5
    move v2, v3

    .line 294
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 2
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/16 v0, 0x32

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;-><init>(IILandroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V

    .line 100
    return-void
.end method

.method private createIntroWall(Lcom/android/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V
    .locals 42
    .parameter "world"
    .parameter "context"
    .parameter "introCount"
    .parameter "panorama_fov"
    .parameter "segments"
    .parameter "radius"
    .parameter "height"

    .prologue
    .line 323
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v4}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v16

    .line 324
    .local v16, imageHeight:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v4}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v17

    .line 327
    .local v17, imageWidth:I
    const/16 v26, 0x0

    .line 328
    .local v26, screenHeight:I
    const/16 v27, 0x0

    .line 329
    .local v27, screenWidth:I
    if-eqz p2, :cond_1

    .line 330
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 331
    .local v19, metrics:Landroid/util/DisplayMetrics;
    check-cast p2, Landroid/app/Activity;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 332
    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v26, v4, -0x1d

    .line 333
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 343
    .end local v19           #metrics:Landroid/util/DisplayMetrics;
    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 345
    .local v20, myColors:[J
    add-int/lit8 v23, p5, 0x1

    .line 347
    .local v23, pointCount:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v6, v0

    div-float/2addr v4, v6

    mul-float v10, p4, v4

    .line 348
    .local v10, angleFragmentSeg:F
    sub-float v4, p4, v10

    add-int/lit8 v6, p5, -0x1

    int-to-float v6, v6

    div-float v11, v4, v6

    .line 356
    .local v11, anglePerSegment:F
    add-int/lit8 v4, p5, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v10

    neg-float v4, v4

    const/high16 v6, 0x4000

    div-float v29, v4, v6

    .line 359
    .local v29, startingAngle:F
    move/from16 v9, v29

    .line 361
    .local v9, angle:F
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v22, v0

    .line 363
    .local v22, pointArray:[Lcom/android/hwcamera/panoramaviewer/Point3D;
    add-int/lit8 v4, p3, 0x18

    add-int/lit8 p3, v4, 0x1

    .line 366
    const/16 v30, 0x0

    .line 367
    .local v30, tempX:F
    const/16 v31, 0x0

    .line 370
    .local v31, tempZ:F
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide/high16 v34, 0x4000

    div-double v6, v6, v34

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v14, v6

    .line 371
    .local v14, flatX:F
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v23

    if-ge v15, v0, :cond_4

    .line 373
    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 377
    .local v12, angle_radians:D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    if-eqz v4, :cond_2

    .line 378
    move/from16 v0, p6

    float-to-double v6, v0

    mul-double/2addr v6, v12

    double-to-float v0, v6

    move/from16 v30, v0

    .line 379
    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v31, v0

    .line 391
    :goto_2
    new-instance v21, Lcom/android/hwcamera/panoramaviewer/Point3D;

    move/from16 v0, p7

    neg-float v4, v0

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v4, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    .line 395
    .local v21, point:Lcom/android/hwcamera/panoramaviewer/Point3D;
    aput-object v21, v22, v15

    .line 397
    add-int/lit8 v4, v23, -0x2

    if-ne v15, v4, :cond_3

    .line 398
    add-float/2addr v9, v10

    .line 403
    :goto_3
    if-nez v15, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    neg-float v6, v6

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 371
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 335
    .end local v9           #angle:F
    .end local v10           #angleFragmentSeg:F
    .end local v11           #anglePerSegment:F
    .end local v12           #angle_radians:D
    .end local v14           #flatX:F
    .end local v15           #i:I
    .end local v20           #myColors:[J
    .end local v21           #point:Lcom/android/hwcamera/panoramaviewer/Point3D;
    .end local v22           #pointArray:[Lcom/android/hwcamera/panoramaviewer/Point3D;
    .end local v23           #pointCount:I
    .end local v29           #startingAngle:F
    .end local v30           #tempX:F
    .end local v31           #tempZ:F
    .restart local p2
    :cond_1
    move/from16 v26, v16

    .line 336
    move/from16 v27, v17

    goto/16 :goto_0

    .line 381
    .end local p2
    .restart local v9       #angle:F
    .restart local v10       #angleFragmentSeg:F
    .restart local v11       #anglePerSegment:F
    .restart local v12       #angle_radians:D
    .restart local v14       #flatX:F
    .restart local v15       #i:I
    .restart local v20       #myColors:[J
    .restart local v22       #pointArray:[Lcom/android/hwcamera/panoramaviewer/Point3D;
    .restart local v23       #pointCount:I
    .restart local v29       #startingAngle:F
    .restart local v30       #tempX:F
    .restart local v31       #tempZ:F
    :cond_2
    move/from16 v0, p6

    float-to-double v6, v0

    mul-double/2addr v6, v12

    const-wide/high16 v34, 0x3ff0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4038

    div-double v36, v36, v38

    const-wide/high16 v38, 0x4000

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v4, v0

    float-to-double v0, v4

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3ff0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    div-double v40, v40, v12

    sub-double v38, v38, v40

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    mul-double v6, v6, v34

    double-to-float v0, v6

    move/from16 v30, v0

    .line 385
    move/from16 v0, p6

    neg-float v4, v0

    const/high16 v6, 0x3f80

    move/from16 v0, p3

    int-to-double v7, v0

    const-wide/high16 v34, 0x4038

    div-double v7, v7, v34

    const-wide/high16 v34, 0x4000

    move-wide/from16 v0, v34

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const-wide/high16 v34, 0x3ff0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v31, v4, v6

    goto/16 :goto_2

    .line 400
    .restart local v21       #point:Lcom/android/hwcamera/panoramaviewer/Point3D;
    :cond_3
    add-float/2addr v9, v11

    goto/16 :goto_3

    .line 419
    .end local v12           #angle_radians:D
    .end local v21           #point:Lcom/android/hwcamera/panoramaviewer/Point3D;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    move/from16 v0, v26

    int-to-float v7, v0

    mul-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setZoomAmount(F)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->clearShape()V

    .line 425
    const/16 v25, 0x0

    .local v25, s:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, p5

    if-ge v0, v1, :cond_7

    .line 430
    new-instance v5, Lcom/android/hwcamera/panoramaviewer/Point3D;

    add-int/lit8 v4, v25, 0x1

    aget-object v4, v22, v4

    invoke-direct {v5, v4}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(Lcom/android/hwcamera/panoramaviewer/Point3D;)V

    .line 431
    .local v5, otherP:Lcom/android/hwcamera/panoramaviewer/Point3D;
    iget v4, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    add-float v4, v4, p7

    iput v4, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 433
    new-instance v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;

    aget-object v4, v22, v25

    rem-int/lit8 v6, v25, 0x4

    aget-wide v6, v20, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/android/hwcamera/panoramaviewer/Rectangle;-><init>(Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;JI)V

    .line 439
    .local v3, rect:Lcom/android/hwcamera/panoramaviewer/Rectangle;
    iget-object v4, v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 440
    iget-object v4, v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 441
    iget-object v4, v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 444
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    div-int v4, v25, v4

    add-int/lit8 v33, v4, 0x1

    .line 446
    .local v33, textureIndex:I
    move/from16 v0, v33

    iput v0, v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureIndex:I

    .line 449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    rem-int v28, v25, v4

    .line 450
    .local v28, segmentWithinTexture:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    mul-int v18, v28, v4

    .line 452
    .local v18, leftTextureX:I
    const/16 v24, 0x0

    .line 453
    .local v24, rightTextureX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    move/from16 v0, v33

    if-ne v0, v4, :cond_6

    .line 454
    add-int/lit8 v4, p5, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    add-int v24, v18, v4

    .line 463
    :goto_5
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v32, v0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    aput v6, v32, v4

    const/4 v4, 0x2

    move/from16 v0, v24

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x3

    const/high16 v6, 0x3f80

    aput v6, v32, v4

    const/4 v4, 0x4

    move/from16 v0, v18

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput v6, v32, v4

    const/4 v4, 0x6

    move/from16 v0, v24

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x7

    const/4 v6, 0x0

    aput v6, v32, v4

    .line 474
    .local v32, textureCoordinateArray:[F
    move/from16 v0, v33

    iput v0, v3, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureIndex:I

    .line 475
    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->setTextureCoordinates([F)V

    .line 477
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->addShape(Lcom/android/hwcamera/panoramaviewer/Shape;)V

    .line 425
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 457
    .end local v32           #textureCoordinateArray:[F
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    add-int v24, v18, v4

    goto :goto_5

    .line 460
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    add-int v24, v18, v4

    goto :goto_5

    .line 481
    .end local v3           #rect:Lcom/android/hwcamera/panoramaviewer/Rectangle;
    .end local v5           #otherP:Lcom/android/hwcamera/panoramaviewer/Point3D;
    .end local v18           #leftTextureX:I
    .end local v24           #rightTextureX:I
    .end local v28           #segmentWithinTexture:I
    .end local v33           #textureIndex:I
    :cond_7
    return-void

    .line 343
    nop

    :array_0
    .array-data 0x8
        0xfft 0x0t 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0xfft 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createSphericalPanoramaWall(Lcom/android/hwcamera/panoramaviewer/OGLWorld;FIFF)V
    .locals 42
    .parameter "world"
    .parameter "panorama_fov"
    .parameter "segments"
    .parameter "radius"
    .parameter "height"

    .prologue
    .line 485
    const/high16 v25, 0x4480

    .line 487
    .local v25, texSize:F
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v3}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v14

    .line 488
    .local v14, imageHeight:I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v3}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v15

    .line 492
    .local v15, imageWidth:I
    const/4 v3, 0x4

    new-array v0, v3, [J

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 494
    .local v17, myColors:[J
    int-to-float v3, v14

    int-to-float v4, v15

    div-float v20, v3, v4

    .line 496
    .local v20, ratio:F
    move/from16 v31, p3

    .line 497
    .local v31, xSegments:I
    move/from16 v0, v31

    int-to-float v3, v0

    mul-float v3, v3, v20

    float-to-int v0, v3

    move/from16 v38, v0

    .line 499
    .local v38, ySegments:I
    add-int/lit8 v30, v31, 0x1

    .line 500
    .local v30, xPointCount:I
    add-int/lit8 v37, v38, 0x1

    .line 502
    .local v37, yPointCount:I
    move/from16 v0, v31

    int-to-float v3, v0

    div-float v10, p2, v3

    .line 503
    .local v10, XanglePerSegment:F
    mul-float v3, p2, v20

    move/from16 v0, v38

    int-to-float v4, v0

    div-float v11, v3, v4

    .line 505
    .local v11, YanglePerSegment:F
    move/from16 v0, v38

    int-to-float v3, v0

    div-float v12, v25, v3

    .line 507
    .local v12, YpixelsPerSegment:F
    move/from16 v0, v31

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-float v3, v3

    mul-float v23, v3, v10

    .line 508
    .local v23, startingXAngle:F
    move/from16 v0, v38

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-float v3, v3

    mul-float v24, v3, v11

    .line 517
    .local v24, startingYAngle:F
    move/from16 v39, v24

    .line 519
    .local v39, y_angle:F
    move/from16 v0, v30

    move/from16 v1, v37

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 523
    .local v19, pointMatrix:[[Lcom/android/hwcamera/panoramaviewer/Point3D;
    const/16 v36, 0x0

    .local v36, y:I
    :goto_0
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 525
    move/from16 v32, v23

    .line 526
    .local v32, x_angle:F
    const/16 v29, 0x0

    .local v29, x:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 528
    new-instance v18, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct/range {v18 .. v18}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    .line 530
    .local v18, p:Lcom/android/hwcamera/panoramaviewer/Point3D;
    move/from16 v0, v32

    float-to-double v3, v0

    const-wide v5, 0x4076800000000000L

    div-double/2addr v3, v5

    const-wide v5, 0x401921fb54442d18L

    mul-double v33, v3, v5

    .line 531
    .local v33, x_angle_radians:D
    move/from16 v0, v39

    float-to-double v3, v0

    const-wide v5, 0x4076800000000000L

    div-double/2addr v3, v5

    const-wide v5, 0x401921fb54442d18L

    mul-double v40, v3, v5

    .line 534
    .local v40, y_angle_radians:D
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    move/from16 v0, p4

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 535
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 v0, p4

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v0, v3

    move/from16 v35, v0

    .line 537
    .local v35, xz_plane_radius:F
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    move/from16 v0, v35

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 538
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 v0, v35

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    neg-float v3, v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 541
    aget-object v3, v19, v29

    aput-object v18, v3, v36

    .line 542
    add-float v32, v32, v10

    .line 526
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 545
    .end local v18           #p:Lcom/android/hwcamera/panoramaviewer/Point3D;
    .end local v33           #x_angle_radians:D
    .end local v35           #xz_plane_radius:F
    .end local v40           #y_angle_radians:D
    :cond_0
    add-float v39, v39, v11

    .line 523
    add-int/lit8 v36, v36, 0x1

    goto :goto_0

    .line 552
    .end local v29           #x:I
    .end local v32           #x_angle:F
    :cond_1
    const/16 v36, 0x0

    :goto_2
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 554
    const/16 v29, 0x0

    .restart local v29       #x:I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    .line 576
    new-instance v2, Lcom/android/hwcamera/panoramaviewer/Rectangle;

    aget-object v3, v19, v29

    aget-object v3, v3, v36

    add-int/lit8 v4, v29, 0x1

    aget-object v4, v19, v4

    aget-object v4, v4, v36

    aget-object v5, v19, v29

    add-int/lit8 v6, v36, 0x1

    aget-object v5, v5, v6

    add-int/lit8 v6, v29, 0x1

    aget-object v6, v19, v6

    add-int/lit8 v7, v36, 0x1

    aget-object v6, v6, v7

    add-int v7, v29, v36

    rem-int/lit8 v7, v7, 0x4

    aget-wide v7, v17, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/hwcamera/panoramaviewer/Rectangle;-><init>(Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;JI)V

    .line 601
    .local v2, rect:Lcom/android/hwcamera/panoramaviewer/Rectangle;
    iget-object v3, v2, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 602
    iget-object v3, v2, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 603
    iget-object v3, v2, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 606
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    div-int v3, v29, v3

    add-int/lit8 v27, v3, 0x1

    .line 612
    .local v27, textureIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    rem-int v22, v29, v3

    .line 613
    .local v22, segmentWithinTexture:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    mul-int v3, v3, v22

    int-to-float v0, v3

    move/from16 v16, v0

    .line 614
    .local v16, leftTextureX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    int-to-float v3, v3

    add-float v21, v16, v3

    .line 617
    .local v21, rightTextureX:F
    div-float v16, v16, v25

    .line 618
    div-float v21, v21, v25

    .line 620
    move/from16 v0, v36

    int-to-float v3, v0

    mul-float/2addr v3, v12

    div-float v13, v3, v25

    .line 621
    .local v13, bottomTextureY:F
    add-int/lit8 v3, v36, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v12

    div-float v28, v3, v25

    .line 624
    .local v28, topTextureY:F
    const/high16 v3, 0x3f80

    sub-float v13, v3, v13

    .line 625
    const/high16 v3, 0x3f80

    sub-float v28, v3, v28

    .line 630
    move/from16 v0, v27

    iput v0, v2, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureIndex:I

    .line 638
    const/16 v3, 0x8

    new-array v0, v3, [F

    move-object/from16 v26, v0

    const/4 v3, 0x0

    aput v16, v26, v3

    const/4 v3, 0x1

    aput v13, v26, v3

    const/4 v3, 0x2

    aput v21, v26, v3

    const/4 v3, 0x3

    aput v13, v26, v3

    const/4 v3, 0x4

    aput v16, v26, v3

    const/4 v3, 0x5

    aput v28, v26, v3

    const/4 v3, 0x6

    aput v21, v26, v3

    const/4 v3, 0x7

    aput v28, v26, v3

    .line 643
    .local v26, textureCoordinateArray:[F
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->setTextureCoordinates([F)V

    .line 659
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->addShape(Lcom/android/hwcamera/panoramaviewer/Shape;)V

    .line 554
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 552
    .end local v2           #rect:Lcom/android/hwcamera/panoramaviewer/Rectangle;
    .end local v13           #bottomTextureY:F
    .end local v16           #leftTextureX:F
    .end local v21           #rightTextureX:F
    .end local v22           #segmentWithinTexture:I
    .end local v26           #textureCoordinateArray:[F
    .end local v27           #textureIndex:I
    .end local v28           #topTextureY:F
    :cond_2
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 663
    .end local v29           #x:I
    :cond_3
    return-void

    .line 492
    nop

    :array_0
    .array-data 0x8
        0xfft 0x0t 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0xfft 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8
    .parameter "introCount"
    .parameter "introMode"
    .parameter "context"
    .parameter "resources"

    .prologue
    .line 124
    if-eqz p2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->height:F

    move-object v0, p0

    move-object v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->createIntroWall(Lcom/android/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V

    .line 158
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->height:F

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->createIntroWall(Lcom/android/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V

    goto :goto_0
.end method

.method private createWorld(Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;)Lcom/android/hwcamera/panoramaviewer/OGLWorld;
    .locals 2
    .parameter "texProvider"

    .prologue
    .line 314
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->CAMERA_FOV:F

    invoke-direct {v0, v1, p1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;-><init>(FLcom/android/hwcamera/panoramaviewer/OGLTextureProvider;)V

    .line 316
    .local v0, world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;
    return-object v0
.end method


# virtual methods
.method public introWall(I)V
    .locals 3
    .parameter "introCount"

    .prologue
    .line 116
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V

    .line 117
    return-void
.end method

.method public isFlatMode()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    return v0
.end method

.method public refreshWall(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V

    .line 121
    return-void
.end method

.method public setFlatMode(Z)V
    .locals 0
    .parameter "flatMode"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    .line 109
    return-void
.end method

.method public setIntroInfo(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "context"
    .parameter "resources"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->resources:Landroid/content/res/Resources;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanoramaData [imageSize=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], segmentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segmentsPerTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usableWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fractalSegmentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasEvenBlockSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
