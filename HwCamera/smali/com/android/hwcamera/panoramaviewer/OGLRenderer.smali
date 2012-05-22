.class public Lcom/android/hwcamera/panoramaviewer/OGLRenderer;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_RESTRICTION_ANGLES:Z = false

.field public static final DEBUG_RESTRICTION_ANGLES2:Z = false

.field public static final DEBUG_ROTATION:Z = false

.field public static final DEBUG_ZOOMING_VERBOSE:Z = false

.field private static final MAX_INTRO_FRAMES:I = 0x37

.field private static final SHOW_FPS:Z = false

.field private static final angleFormat:Ljava/text/DecimalFormat; = null

.field private static final deg2radFactor:D = 0.017453292519943295

.field private static final rad2degFactor:D = 57.29577951308232


# instance fields
.field private final MAX_ZOOM_DEPTH:F

.field private final MIN_ZOOM_DEPTH:F

.field private NO_OF_FRAMES_TO_ZOOM:I

.field RESTRICTION_RATIO:F

.field private final RESTRICTION_ZOOM_DEPTH1:F

.field private final RESTRICTION_ZOOM_DEPTH2:F

.field private azimuth:D

.field bgTextureId:I

.field private distance:F

.field private elevation:D

.field private expandZoomLimits:Z

.field fps:F

.field frameTime:J

.field frameTimeDiff:J

.field framesRendered:I

.field private glider:I

.field private gliderEnabled:Z

.field private introCount:I

.field private introResidual:I

.field private isOnRendered:Z

.field private isZooming:Z

.field lastPrintout:J

.field logoTextureId:I

.field final matrixComb:[F

.field final matrixModel:[F

.field final matrixRot:[F

.field final oldRot:[F

.field public panHLimitAngle:F

.field public panVLimitAngle:F

.field private prevAngleX:F

.field private prevAngleY:F

.field prevDrawTime:J

.field private prevFov:F

.field private prevScrollHorizontal:F

.field private prevScrollUpDown:F

.field private prevStepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field private prevZoomAmount:F

.field final projM:[F

.field ratio:F

.field private scrollHorizontal:F

.field private scrollUpDown:F

.field private smoothZoomStep:I

.field private stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field private targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field textureId:I

.field private velocity:I

.field view:[I

.field private viewportHeight:I

.field private viewportWidth:I

.field private viewportX:I

.field private viewportY:I

.field private wallpaperMode:Z

.field winBottomPos:[F

.field winLeftPos:[F

.field winRightPos:[F

.field winTopPos:[F

.field private world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

.field zoomArray:[[F

.field private zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field private zoomIn:Z

.field private zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field private zoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->angleFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/panoramaviewer/OGLWorld;)V
    .locals 7
    .parameter "pWorld"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->framesRendered:I

    .line 35
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->fps:F

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevDrawTime:J

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->frameTimeDiff:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->lastPrintout:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->frameTime:J

    .line 44
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevFov:F

    .line 51
    const/16 v0, -0x18

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    .line 55
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    .line 56
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->MIN_ZOOM_DEPTH:F

    .line 57
    const v0, 0x3fb47ae1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->MAX_ZOOM_DEPTH:F

    .line 59
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->expandZoomLimits:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isZooming:Z

    .line 61
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    .line 64
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 65
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 66
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 67
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 70
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->elevation:D

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    .line 76
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 78
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevStepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 79
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleX:F

    .line 80
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleY:F

    .line 81
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollUpDown:F

    .line 82
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollHorizontal:F

    .line 83
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevZoomAmount:F

    .line 84
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    .line 86
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 88
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomRatio:F

    .line 91
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->gliderEnabled:Z

    .line 92
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->distance:F

    .line 93
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    .line 94
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->velocity:I

    .line 96
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    .line 97
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    .line 98
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportX:I

    .line 99
    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportY:I

    .line 101
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isOnRendered:Z

    .line 109
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    .line 110
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixRot:[F

    .line 111
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->oldRot:[F

    .line 112
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixModel:[F

    .line 113
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    .line 115
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winLeftPos:[F

    .line 116
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winRightPos:[F

    .line 117
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winTopPos:[F

    .line 118
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winBottomPos:[F

    .line 120
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panVLimitAngle:F

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v4, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomArray:[[F

    .line 144
    const v0, 0x3fa8f5c3

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_ZOOM_DEPTH1:F

    .line 145
    const v0, 0x3f9b851f

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_ZOOM_DEPTH2:F

    .line 147
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    .line 150
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    .line 153
    return-void

    .line 137
    :array_0
    .array-data 0x4
        0x85t 0xebt 0xb1t 0x3ft
        0x48t 0xe1t 0x3at 0x3ft
        0x52t 0xb8t 0x5et 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xcdt 0xcct 0xact 0x3ft
        0x85t 0xebt 0x51t 0x3ft
        0xd7t 0xa3t 0x70t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x14t 0xaet 0xa7t 0x3ft
        0xaet 0x47t 0x61t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0xa4t 0x70t 0x9dt 0x3ft
        0x1ft 0x85t 0x6bt 0x3ft
        0x8ft 0xc2t 0x75t 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x66t 0x66t 0x86t 0x3ft
        0xd7t 0xa3t 0x70t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private adaptiveZoom()F
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0

    const/4 v0, 0x0

    .line 564
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v3}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v1

    .line 566
    .local v1, zoomAmount:F
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    if-lez v3, :cond_3

    .line 571
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 574
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 582
    :cond_0
    const v3, 0x3d4ccccd

    const/high16 v4, 0x3f40

    invoke-static {v3, v4, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomAttenuationEffect(FFF)F

    move-result v2

    .line 584
    .local v2, zoomLevel:F
    iget-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-eqz v3, :cond_1

    .line 585
    float-to-double v3, v2

    mul-double/2addr v3, v6

    double-to-float v2, v3

    .line 591
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn(F)V

    .line 599
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 600
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 602
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 608
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomRotation()F

    move-result v0

    .line 610
    .local v0, rotation:F
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    if-ne v3, v4, :cond_2

    .line 613
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 684
    .end local v0           #rotation:F
    .end local v2           #zoomLevel:F
    :cond_2
    :goto_0
    return v0

    .line 618
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    neg-int v4, v4

    if-le v3, v4, :cond_8

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    if-gez v3, :cond_8

    .line 623
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 625
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 629
    :cond_4
    const v3, 0x3ca3d70a

    const/high16 v4, 0x3fc0

    invoke-static {v3, v4, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomAttenuationEffect(FFF)F

    move-result v2

    .line 632
    .restart local v2       #zoomLevel:F
    iget-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-eqz v3, :cond_5

    .line 633
    float-to-double v3, v2

    mul-double/2addr v3, v6

    double-to-float v2, v3

    .line 636
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOut(F)V

    .line 639
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 640
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 645
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_6

    .line 646
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    const v5, 0x3d8f5c29

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 652
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    const v5, 0x3e99999a

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 654
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 657
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomRotation()F

    move-result v0

    .line 669
    .restart local v0       #rotation:F
    goto/16 :goto_0

    .line 647
    .end local v0           #rotation:F
    :cond_6
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x3

    if-le v3, v4, :cond_7

    .line 648
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    const v5, 0x3dcccccd

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    goto :goto_1

    .line 650
    :cond_7
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    const v5, 0x3e4ccccd

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomDiff:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    goto :goto_1

    .line 675
    .end local v2           #zoomLevel:F
    :cond_8
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v3, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v3, v3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_2

    .line 676
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomRotation()F

    move-result v0

    .line 679
    .restart local v0       #rotation:F
    goto/16 :goto_0
.end method

.method private clearDrawing(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const-wide/16 v5, 0xff

    const v4, 0x3b808081

    const/4 v0, 0x0

    .line 1016
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1017
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    iget-wide v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    and-long/2addr v0, v5

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    iget-wide v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    and-long/2addr v1, v5

    long-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    iget-wide v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    and-long/2addr v2, v5

    long-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1021
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1022
    return-void
.end method

.method private getFilteredAngle(FF)F
    .locals 10
    .parameter "fovFiltered"
    .parameter "zoom"

    .prologue
    const/high16 v9, 0x3f80

    .line 1153
    float-to-double v2, p1

    const-wide v4, 0x3f91df46a2529d39L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1154
    .local v0, angleTan:F
    mul-float v2, v0, v0

    mul-float/2addr v2, p2

    mul-float v3, p2, p2

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    float-to-double v3, v3

    mul-float v5, v0, v0

    add-float/2addr v5, v9

    mul-float v6, p2, p2

    mul-float/2addr v6, v0

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v7, v7, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v8, v8, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-double v5, v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    mul-float v3, v0, v0

    add-float/2addr v3, v9

    div-float v1, v2, v3

    .line 1163
    .local v1, zFov:F
    float-to-double v2, v1

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private getGapAngle(F)F
    .locals 10
    .parameter "rotationAngle"

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x4080

    const/high16 v6, -0x3f80

    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 1272
    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winLeftPos:[F

    aget v2, v7, v8

    .line 1273
    .local v2, leftGap:F
    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winRightPos:[F

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v8, v8, v9

    int-to-float v8, v8

    sub-float v3, v7, v8

    .line 1275
    .local v3, rightGap:F
    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v7}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v7

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winLeftPos:[F

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isValidGap(FF)Z

    move-result v0

    .line 1276
    .local v0, isValidLeftGap:Z
    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v7}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v7

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winRightPos:[F

    aget v8, v8, v9

    invoke-direct {p0, v7, v8}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isValidGap(FF)Z

    move-result v1

    .line 1278
    .local v1, isValidRightGap:Z
    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v7, v7, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v7}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1279
    const/4 v0, 0x1

    .line 1280
    const/4 v1, 0x1

    .line 1283
    :cond_0
    cmpg-float v7, p1, v5

    if-gez v7, :cond_5

    .line 1284
    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    if-eqz v0, :cond_2

    .line 1285
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngleRatio(F)F

    move-result v4

    .line 1306
    :cond_1
    :goto_0
    return v4

    .line 1287
    :cond_2
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v6, v6, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v6}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1288
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget-wide v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panHLimitAngle:F

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v8, v8, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_1

    :cond_3
    move v4, v5

    .line 1292
    goto :goto_0

    .line 1290
    :cond_4
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget-wide v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panHLimitAngle:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    goto :goto_0

    .line 1294
    :cond_5
    cmpl-float v4, p1, v5

    if-lez v4, :cond_9

    .line 1295
    cmpg-float v4, v3, v5

    if-gez v4, :cond_6

    if-eqz v1, :cond_6

    .line 1296
    invoke-direct {p0, v3}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngleRatio(F)F

    move-result v4

    neg-float v4, v4

    goto :goto_0

    .line 1298
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v4, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v4}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1299
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget-wide v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v7, v7

    add-float/2addr v4, v7

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panHLimitAngle:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v8, v8, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    mul-float/2addr v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_8

    move v4, v6

    goto :goto_0

    .line 1301
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget-wide v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v7, v7

    add-float/2addr v4, v7

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panHLimitAngle:F

    neg-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_8

    move v4, v6

    goto :goto_0

    :cond_8
    move v4, v5

    .line 1303
    goto :goto_0

    :cond_9
    move v4, v5

    .line 1306
    goto :goto_0
.end method

.method private getGapAngleRatio(F)F
    .locals 5
    .parameter "gap"

    .prologue
    const/high16 v4, 0x4040

    .line 1254
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v0, v4

    .line 1257
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private getGapAngleVertical(F)F
    .locals 10
    .parameter "rotationAngle"

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1312
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v7, v7, v5

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winBottomPos:[F

    aget v7, v7, v5

    sub-float v0, v6, v7

    .line 1313
    .local v0, bottomGap:F
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winTopPos:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v7, v7, v5

    int-to-float v7, v7

    sub-float v3, v6, v7

    .line 1314
    .local v3, topGap:F
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winBottomPos:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winTopPos:[F

    aget v7, v7, v5

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v7, v7, v9

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v8, v8, v5

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move v2, v5

    .line 1315
    .local v2, isInsideScreen:Z
    :goto_0
    const/4 v1, 0x0

    .line 1316
    .local v1, insideGap:F
    if-eqz v2, :cond_1

    .line 1317
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winBottomPos:[F

    aget v7, v7, v5

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winTopPos:[F

    aget v5, v8, v5

    sub-float v5, v7, v5

    sub-float v5, v6, v5

    const/high16 v6, 0x4000

    div-float v1, v5, v6

    .line 1318
    sub-float/2addr v0, v1

    .line 1319
    sub-float/2addr v3, v1

    .line 1321
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_0

    const/high16 p1, -0x4080

    .line 1322
    :cond_0
    cmpg-float v5, v0, v4

    if-gtz v5, :cond_1

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    const/high16 p1, 0x3f80

    .line 1337
    :cond_1
    cmpl-float v5, p1, v4

    if-ltz v5, :cond_5

    .line 1338
    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    .line 1343
    invoke-direct {p0, v3}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getUpDownBoundaryRatio(F)F

    move-result v4

    neg-float v4, v4

    .line 1370
    :cond_2
    :goto_1
    return v4

    .line 1314
    .end local v1           #insideGap:F
    .end local v2           #isInsideScreen:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1345
    .restart local v1       #insideGap:F
    .restart local v2       #isInsideScreen:Z
    :cond_4
    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panVLimitAngle:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 1346
    const-string v4, "getGapAngleVerticalY"

    const-string v5, "world.xAngle>panVLimitAngle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/high16 v4, -0x4100

    goto :goto_1

    .line 1353
    :cond_5
    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    .line 1354
    cmpl-float v5, v0, v4

    if-lez v5, :cond_6

    .line 1359
    invoke-direct {p0, v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getUpDownBoundaryRatio(F)F

    move-result v4

    goto :goto_1

    .line 1361
    :cond_6
    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panVLimitAngle:F

    neg-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 1362
    const-string v4, "getGapAngleVerticalY"

    const-string v5, "world.xAngle<-panVLimitAngle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/high16 v4, 0x3f00

    goto :goto_1
.end method

.method private getRestrictionAngles()[I
    .locals 19

    .prologue
    .line 1049
    const/4 v13, 0x4

    new-array v1, v13, [I

    fill-array-data v1, :array_0

    .line 1051
    .local v1, angle:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v13, v13, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v13}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v5

    .line 1053
    .local v5, mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v13}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v12

    .line 1054
    .local v12, zoomAmount:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v13, v13, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v13}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1055
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v11, v13, v12

    .line 1056
    .local v11, z:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v9, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 1057
    .local v9, x:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    div-float v13, v9, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v6, v13

    .line 1059
    .local v6, orgAngleFov:F
    float-to-double v13, v11

    float-to-double v15, v6

    const-wide v17, 0x3f91df46a2529d39L

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-object v15, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v2, v13

    .line 1062
    .local v2, angleFov:F
    sub-float v13, v6, v2

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float v4, v13, v14

    .line 1063
    .local v4, leftAngle:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v9, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 1064
    neg-float v7, v4

    .line 1085
    .local v7, rightAngle:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v10, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 1087
    .local v10, y:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    div-float v13, v10, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v6, v13

    .line 1089
    float-to-double v13, v11

    float-to-double v15, v6

    const-wide v17, 0x3f91df46a2529d39L

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-object v15, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v2, v13

    .line 1093
    sub-float v13, v6, v2

    neg-float v3, v13

    .line 1094
    .local v3, bottomAngle:F
    neg-float v8, v3

    .line 1138
    .local v8, topAngle:F
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v1, v13

    .line 1139
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v1, v13

    .line 1141
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v1, v13

    .line 1142
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->RESTRICTION_RATIO:F

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v15, v15, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    div-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v1, v13

    .line 1149
    return-object v1

    .line 1099
    .end local v2           #angleFov:F
    .end local v3           #bottomAngle:F
    .end local v4           #leftAngle:F
    .end local v6           #orgAngleFov:F
    .end local v7           #rightAngle:F
    .end local v8           #topAngle:F
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v11           #z:F
    :cond_0
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v11, v13, v12

    .line 1100
    .restart local v11       #z:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v9, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 1102
    .restart local v9       #x:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    div-float v13, v9, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v6, v13

    .line 1103
    .restart local v6       #orgAngleFov:F
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getFilteredAngle(FF)F

    move-result v2

    .line 1112
    .restart local v2       #angleFov:F
    sub-float v13, v6, v2

    neg-float v13, v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v14, v14

    add-float v4, v13, v14

    .line 1113
    .restart local v4       #leftAngle:F
    sub-float v13, v6, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    double-to-float v14, v14

    add-float v7, v13, v14

    .line 1120
    .restart local v7       #rightAngle:F
    iget-object v13, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v10, v13, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 1122
    .restart local v10       #y:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v13, v13, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    div-float v13, v10, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    const-wide v15, 0x404ca5dc1a63c1f8L

    mul-double/2addr v13, v15

    double-to-float v6, v13

    .line 1123
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getFilteredAngle(FF)F

    move-result v2

    .line 1131
    sub-float v13, v6, v2

    neg-float v3, v13

    .line 1132
    .restart local v3       #bottomAngle:F
    sub-float v8, v6, v2

    .restart local v8       #topAngle:F
    goto/16 :goto_0

    .line 1049
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getUpDownBoundaryRatio(F)F
    .locals 5
    .parameter "gap"

    .prologue
    const v4, 0x3d4ccccd

    .line 1247
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v0, v4

    .line 1250
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private gliderEffect()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 536
    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->gliderEnabled:Z

    if-ne v1, v3, :cond_0

    .line 537
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->distance:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    div-int v2, v3, v2

    rsub-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 538
    .local v0, angleDelta:F
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 540
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->velocity:I

    if-ge v1, v2, :cond_1

    .line 541
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    .line 545
    .end local v0           #angleDelta:F
    :cond_0
    :goto_0
    return-void

    .line 543
    .restart local v0       #angleDelta:F
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->gliderEnabled:Z

    goto :goto_0
.end method

.method private isValidGap(FF)Z
    .locals 7
    .parameter "zoom"
    .parameter "zValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1262
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomArray:[[F

    .local v0, arr$:[[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 1264
    .local v2, item:[F
    aget v6, v2, v5

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_1

    .line 1265
    aget v6, v2, v4

    cmpg-float v6, v6, p2

    if-gez v6, :cond_0

    const/4 v6, 0x2

    aget v6, v2, v6

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_0

    .line 1267
    .end local v2           #item:[F
    :goto_1
    return v4

    .restart local v2       #item:[F
    :cond_0
    move v4, v5

    .line 1265
    goto :goto_1

    .line 1262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #item:[F
    :cond_2
    move v4, v5

    .line 1267
    goto :goto_1
.end method

.method private loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 27
    .parameter "gl"

    .prologue
    .line 235
    const-string v2, "OGLRenderer"

    const-string v3, "loadTextures()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v5, 0x1907

    .line 239
    .local v5, glPixelFormat:I
    const v10, 0x8363

    .line 242
    .local v10, glPixelType:I
    const/16 v6, 0x400

    .line 244
    .local v6, imageWidth:I
    const/16 v7, 0x400

    .line 246
    .local v7, imageHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    const/16 v3, -0x18

    if-le v2, v3, :cond_1

    .line 248
    const/16 v24, 0x0

    .line 253
    .local v24, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v2

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    move/from16 v0, v24

    if-ge v0, v2, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 257
    .local v26, textureId:I
    const/16 v2, 0xde1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    add-int/lit8 v24, v24, 0x1

    .line 261
    goto :goto_0

    .line 263
    .end local v26           #textureId:I
    :catch_0
    move-exception v23

    .line 264
    .local v23, e:Ljava/lang/Exception;
    const-string v2, "OGLRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTextures exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    .end local v23           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    .line 372
    return-void

    .line 271
    .end local v24           #i:I
    :cond_1
    const/4 v11, 0x0

    .line 272
    .local v11, textureBuffer:Ljava/nio/ByteBuffer;
    const/16 v24, 0x0

    .line 274
    .restart local v24       #i:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->resetBufferCount()V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v2

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    new-array v0, v2, [I

    move-object/from16 v25, v0

    .line 279
    .local v25, intArray:[I
    const-string v2, "OGLRenderer"

    const-string v3, "loadTextures()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 282
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->createNextPanoramaBuffer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getSingleBufferFitToTexture()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 287
    if-nez v11, :cond_2

    .line 289
    const-string v2, "OGLRenderer"

    const-string v3, "loadTextures() error: [CAPS case] textureBuffers == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_2
    aget v26, v25, v24

    .line 294
    .restart local v26       #textureId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 299
    const/16 v2, 0xde1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 301
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 302
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 305
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 306
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 311
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v9, v5

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 320
    add-int/lit8 v24, v24, 0x1

    .line 322
    goto :goto_2

    .line 326
    .end local v26           #textureId:I
    :cond_3
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 327
    .local v22, bgArray:[I
    move-object/from16 v0, v22

    array-length v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 329
    const/4 v2, 0x0

    aget v2, v22, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->bgTextureId:I

    .line 331
    sget-object v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bgTextureBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_4

    .line 333
    const-string v2, "OGLRenderer"

    const-string v3, "No B/G texture loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 364
    .end local v22           #bgArray:[I
    .end local v25           #intArray:[I
    :catch_1
    move-exception v23

    .line 366
    .restart local v23       #e:Ljava/lang/Exception;
    const-string v2, "OGLRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTextures exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gl.glGetError()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 337
    .end local v23           #e:Ljava/lang/Exception;
    .restart local v22       #bgArray:[I
    .restart local v25       #intArray:[I
    :cond_4
    const/16 v2, 0xde1

    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->bgTextureId:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 339
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 340
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 343
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 344
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v4, 0x2601

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 349
    const/16 v13, 0xde1

    const/4 v14, 0x0

    const/16 v15, 0x1908

    const/16 v16, 0x100

    const/16 v17, 0x100

    const/16 v18, 0x0

    const/16 v19, 0x1908

    const/16 v20, 0x1401

    sget-object v21, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bgTextureBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v12, p1

    invoke-interface/range {v12 .. v21}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1
.end method

.method private needDrawing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 797
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    const/16 v2, 0x37

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isSmoothZoomOngoing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollHorizontal:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollUpDown:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevZoomAmount:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 802
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 814
    :goto_0
    return v0

    .line 803
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    .line 809
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleX:F

    .line 810
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevAngleY:F

    .line 811
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollHorizontal:F

    .line 812
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevScrollUpDown:F

    .line 813
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevZoomAmount:F

    .line 814
    const/4 v0, 0x1

    goto :goto_0

    .line 805
    :cond_1
    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    goto :goto_1
.end method

.method private smoothZoomRotation()F
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 691
    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v2, v5, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 694
    .local v2, x:F
    const v3, 0x3ecccccd

    .line 695
    .local v3, z:F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 696
    .local v0, r:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_1

    .line 698
    float-to-double v5, v3

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    const-wide v7, 0x404ca5dc1a63c1f8L

    mul-double/2addr v5, v7

    iput-wide v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    .line 702
    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    .line 703
    iget-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    neg-double v4, v4

    iput-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    .line 708
    :cond_0
    iget-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->azimuth:D

    neg-double v4, v4

    double-to-float v4, v4

    .line 710
    :cond_1
    return v4
.end method

.method private updateAngles()[I
    .locals 6

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getRestrictionAngles()[I

    move-result-object v0

    .line 420
    .local v0, angle:[I
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setRotationLimits(IIII)V

    .line 422
    return-object v0
.end method

.method private updateScrollHorizontal()V
    .locals 12

    .prologue
    const-wide v10, 0x3fe199999999999aL

    const/4 v9, 0x0

    .line 751
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v3}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v2

    .line 754
    .local v2, zoomAmount:F
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    neg-int v4, v4

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    if-gez v3, :cond_1

    .line 755
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    float-to-double v3, v3

    const-wide v5, 0x3feae147ae147ae1L

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 756
    float-to-double v3, v2

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_0

    .line 759
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v9, v3, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 760
    iput v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomRotation()F

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    sub-float v1, v3, v4

    .line 764
    .local v1, totalRotation:F
    invoke-direct {p0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngle(F)F

    move-result v0

    .line 765
    .local v0, boundaryGapAngle:F
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v4, v3, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 766
    add-float/2addr v1, v0

    .line 767
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    float-to-double v3, v3

    neg-float v5, v1

    float-to-double v5, v5

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 768
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 771
    iget-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isZooming:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    if-nez v3, :cond_0

    .line 772
    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    float-to-double v3, v3

    const-wide v5, 0x3fb47ae147ae147bL

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 774
    float-to-double v3, v2

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v9, v3, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 777
    iput v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    goto :goto_0
.end method

.method private updateScrollUpDown()V
    .locals 10

    .prologue
    const-wide v8, 0x3fe199999999999aL

    const/4 v7, 0x0

    .line 717
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v0

    .line 720
    .local v0, zoomAmount:F
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    neg-int v2, v2

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    if-gez v1, :cond_1

    .line 721
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    float-to-double v1, v1

    const-wide v3, 0x3feae147ae147ae1L

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 722
    float-to-double v1, v0

    cmpg-double v1, v1, v8

    if-gtz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v7, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 726
    iput v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v3, v3, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    float-to-double v3, v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 731
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 734
    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isZooming:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    if-nez v1, :cond_0

    .line 735
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    float-to-double v1, v1

    const-wide v3, 0x3fb47ae147ae147bL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 737
    float-to-double v1, v0

    cmpg-double v1, v1, v8

    if-gtz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v7, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 741
    iput v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    goto :goto_0
.end method

.method private updateZoomOutCoord(F)V
    .locals 9
    .parameter "angle"

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v3}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v3

    sub-float v1, v2, v3

    .line 1038
    .local v1, z:F
    const v2, 0x3fcccccd

    float-to-double v3, v1

    const-wide v5, 0x3f91df46a2529d39L

    neg-float v7, p1

    float-to-double v7, v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    mul-float v0, v2, v3

    .line 1042
    .local v0, newX:F
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput v0, v2, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 1046
    :cond_0
    return-void
.end method

.method private static zoomAttenuationEffect(FFF)F
    .locals 2
    .parameter "zoomLevel"
    .parameter "attenuationLevel"
    .parameter "distance"

    .prologue
    .line 504
    cmpg-float v1, p2, p1

    if-gez v1, :cond_0

    .line 510
    .end local p0
    :goto_0
    return p0

    .line 509
    .restart local p0
    :cond_0
    div-float v0, p1, p2

    .line 510
    .local v0, attenuation:F
    mul-float v1, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float p0, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public enableGliderEffect(FJ)V
    .locals 2
    .parameter "startAngle"
    .parameter "timeElapsed"

    .prologue
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->gliderEnabled:Z

    .line 522
    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->glider:I

    .line 523
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->distance:F

    .line 524
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->velocity:I

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->distance:F

    long-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->velocity:I

    goto :goto_0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    return v0
.end method

.method public getZoomAmount()F
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v0

    return v0
.end method

.method public isSmoothZoomOngoing()Z
    .locals 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->needDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isOnRendered:Z

    if-nez v0, :cond_1

    .line 830
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->clearDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isOnRendered:Z

    goto :goto_0

    .line 837
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->introWall(I)V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 842
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 843
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 845
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 846
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 848
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    .line 852
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    .line 855
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->clearDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 857
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 858
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 860
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 863
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->updateScrollUpDown()V

    .line 865
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    invoke-direct {p0, v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngleVertical(F)F

    move-result v11

    .line 867
    .local v11, upDownGap:F
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 868
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    float-to-double v3, v1

    float-to-double v5, v11

    const-wide v7, 0x404ca5dc1a63c1f8L

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 873
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 875
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->updateScrollHorizontal()V

    .line 881
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float v2, v0, v3

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    sub-float v4, v0, v4

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    sub-float v6, v0, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 909
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v12

    .line 912
    .local v12, zoomAmount:F
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    const/16 v1, 0x37

    if-ge v0, v1, :cond_5

    .line 913
    const v0, 0x3d4ccccd

    const v1, 0x3f19999a

    invoke-static {v0, v1, v12}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomAttenuationEffect(FFF)F

    move-result v13

    .line 914
    .local v13, zoomLevel:F
    invoke-virtual {p0, v13}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn(F)V

    .line 916
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_4

    .line 920
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    .line 925
    .end local v13           #zoomLevel:F
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixModel:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 926
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixModel:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 932
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->adaptiveZoom()F

    move-result v10

    .line 935
    .local v10, adaptiveZoomRotation:F
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v0, v0

    add-float v2, v10, v0

    .line 938
    .local v2, totalRotation:F
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngle(F)F

    move-result v0

    add-float/2addr v2, v0

    .line 939
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    invoke-direct {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getGapAngle(F)F

    move-result v3

    neg-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 955
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixRot:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 956
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 957
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixRot:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 959
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 960
    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixModel:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixRot:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 961
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setLimitCoordVertical()V

    .line 962
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setLimitCoord()V

    .line 964
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 966
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isSmoothZoomOngoing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 967
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->updateZoomOutCoord(F)V

    .line 978
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->clearDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 980
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    if-eqz v0, :cond_8

    .line 981
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    .line 984
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_0

    .line 890
    .end local v2           #totalRotation:F
    .end local v10           #adaptiveZoomRotation:F
    .end local v12           #zoomAmount:F
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float v2, v0, v3

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v4, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v6, v6, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    sub-float v6, v0, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    goto/16 :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 14
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->setInit()V

    .line 183
    const-string v1, "Renderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSurfaceChanged: w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move/from16 v0, p2

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    .line 186
    add-int/lit8 v1, p3, -0x1d

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportX:I

    .line 188
    const/16 v1, 0x1d

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportY:I

    .line 190
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportX:I

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportY:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    iget v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    invoke-interface {p1, v1, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 192
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportX:I

    aput v7, v1, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportY:I

    neg-int v7, v7

    aput v7, v1, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    aput v7, v1, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    aput v7, v1, v6

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    .line 194
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportWidth:I

    int-to-float v1, v1

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->viewportHeight:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->ratio:F

    .line 196
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 197
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 199
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    const/high16 v6, 0x4000

    div-float/2addr v1, v6

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panHLimitAngle:F

    .line 200
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->CAMERA_FOV:F

    const/high16 v6, 0x4000

    div-float/2addr v1, v6

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->panVLimitAngle:F

    .line 203
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevFov:F

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v6}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getFov()F

    move-result v6

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    .line 205
    const v1, 0x3c23d70a

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v6}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getFov()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f81df46a2529d39L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v5, v1, v6

    .line 206
    .local v5, top:F
    neg-float v4, v5

    .line 207
    .local v4, bottom:F
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->ratio:F

    mul-float v2, v4, v1

    .line 208
    .local v2, left:F
    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->ratio:F

    mul-float v3, v5, v1

    .line 209
    .local v3, right:F
    const v6, 0x3c23d70a

    const v7, 0x461c4000

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 211
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 212
    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v7, 0x0

    const v12, 0x3c23d70a

    const v13, 0x461c4000

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 214
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getFov()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->prevFov:F

    .line 217
    .end local v2           #left:F
    .end local v3           #right:F
    .end local v4           #bottom:F
    .end local v5           #top:F
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixRot:[F

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 218
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixModel:[F

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 225
    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 226
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 228
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 230
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 158
    const-string v0, "OGLRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->loadTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 173
    :cond_0
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 174
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 176
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 177
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 179
    return-void
.end method

.method public setAbsoluteZoom(FZ)V
    .locals 4
    .parameter "zoomLevel"
    .parameter "isRelativeZoom"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, relativeZoom:F
    if-eqz p2, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v1

    sub-float v0, p1, v1

    .line 382
    :goto_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn(F)V

    .line 385
    iget-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    if-nez v1, :cond_0

    .line 386
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    .line 394
    :cond_0
    :goto_1
    return-void

    .line 380
    :cond_1
    move v0, p1

    goto :goto_0

    .line 388
    :cond_2
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 390
    neg-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOut(F)V

    .line 391
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    goto :goto_1
.end method

.method public setInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    const/16 v0, -0x18

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introCount:I

    .line 788
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 789
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 790
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    .line 791
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->introResidual:I

    .line 793
    return-void
.end method

.method public declared-synchronized setLimitCoord()V
    .locals 13

    .prologue
    .line 1212
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v11, v0, [F

    .line 1213
    .local v11, obj1:[F
    const/4 v0, 0x3

    new-array v12, v0, [F

    .line 1214
    .local v12, obj2:[F
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v11, v0

    .line 1215
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    aput v1, v11, v0

    .line 1216
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v1, v11, v0

    .line 1218
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v12, v0

    .line 1219
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    aput v1, v12, v0

    .line 1220
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v1, v12, v0

    .line 1223
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x2

    aget v2, v11, v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winLeftPos:[F

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 1226
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x2

    aget v2, v12, v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winRightPos:[F

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    monitor-exit p0

    return-void

    .line 1212
    .end local v11           #obj1:[F
    .end local v12           #obj2:[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLimitCoordVertical()V
    .locals 13

    .prologue
    const v3, 0x3c8efa35

    const-wide v4, 0x3f91df46a2529d39L

    .line 1180
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v11, v0, [F

    .line 1181
    .local v11, obj1:[F
    const/4 v0, 0x3

    new-array v12, v0, [F

    .line 1183
    .local v12, obj2:[F
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isFlatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v11, v0

    .line 1185
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v1, v2

    aput v1, v11, v0

    .line 1186
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    neg-float v1, v1

    aput v1, v11, v0

    .line 1188
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v12, v0

    .line 1189
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v1, v2

    aput v1, v12, v0

    .line 1190
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    neg-float v1, v1

    aput v1, v12, v0

    .line 1201
    :goto_0
    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x2

    aget v2, v11, v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winTopPos:[F

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 1203
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v1, 0x1

    aget v1, v12, v1

    const/4 v2, 0x2

    aget v2, v12, v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->matrixComb:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->projM:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->view:[I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->winBottomPos:[F

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    monitor-exit p0

    return-void

    .line 1192
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v11, v0

    .line 1193
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v1, v2

    aput v1, v11, v0

    .line 1194
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v11, v0

    .line 1196
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    neg-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollHorizontal:F

    add-float/2addr v1, v2

    aput v1, v12, v0

    .line 1197
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->scrollUpDown:F

    add-float/2addr v1, v2

    aput v1, v12, v0

    .line 1198
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1180
    .end local v11           #obj1:[F
    .end local v12           #obj2:[F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWallpaperMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    .line 1173
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->wallpaperMode:Z

    if-eqz v0, :cond_0

    .line 1174
    const/16 v0, 0xc0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    .line 1177
    :goto_0
    return-void

    .line 1176
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->NO_OF_FRAMES_TO_ZOOM:I

    goto :goto_0
.end method

.method public zoomIn(F)V
    .locals 4
    .parameter "zoomLevel"

    .prologue
    const/4 v3, 0x1

    .line 398
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v2

    add-float v1, v2, p1

    .line 399
    .local v1, newZoom:F
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isZooming:Z

    .line 400
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    .line 402
    const v2, 0x3fb47ae1

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 403
    const v1, 0x3fb47ae1

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setZoomAmount(F)V

    .line 408
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->updateAngles()[I

    move-result-object v0

    .line 413
    .local v0, angle:[I
    return-void
.end method

.method public zoomOut(F)V
    .locals 4
    .parameter "zoomLevel"

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getZoomAmount()F

    move-result v2

    sub-float v1, v2, p1

    .line 431
    .local v1, newZoom:F
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomIn:Z

    .line 433
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->getRestrictionAngles()[I

    move-result-object v0

    .line 438
    .local v0, angle:[I
    const/high16 v2, 0x3f00

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 439
    const/high16 v1, 0x3f00

    .line 440
    iput-boolean v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->isZooming:Z

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setZoomAmount(F)V

    .line 447
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->updateAngles()[I

    .line 451
    return-void
.end method

.method public zoomSmoothIn(FF)V
    .locals 2
    .parameter "tap_x"
    .parameter "tap_y"

    .prologue
    .line 457
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 461
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const v1, 0x3a03126f

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 462
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const v1, 0x3a83126f

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 463
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 466
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 467
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 468
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 470
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const v1, 0x3c23d70a

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 479
    :cond_0
    return-void
.end method

.method public zoomSmoothOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->smoothZoomStep:I

    .line 485
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 486
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 487
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->stepCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->zoomOutFrom:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 489
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput v2, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput v2, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 491
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->targetCoord:Lcom/android/hwcamera/panoramaviewer/Point3D;

    const/high16 v1, 0x3fc0

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 494
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLRenderer;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iput v2, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 497
    return-void
.end method
