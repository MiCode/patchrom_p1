.class public abstract Lcom/android/hwcamera/panoramaviewer/Shape;
.super Ljava/lang/Object;
.source "Shape.java"


# static fields
.field protected static final indexArray:[S


# instance fields
.field private final T_X:F

.field private final T_Y:F

.field protected final color:[F

.field protected indexShortBuffer:Ljava/nio/ShortBuffer;

.field public position:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field public rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field protected textureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field public textureId:I

.field public textureIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexArray:[S

    return-void

    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
    .end array-data
.end method

.method public constructor <init>(FFF)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexShortBuffer:Ljava/nio/ShortBuffer;

    .line 18
    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureId:I

    .line 19
    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureIndex:I

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->color:[F

    .line 25
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 27
    const/high16 v1, 0x3f20

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->T_X:F

    .line 28
    const/high16 v1, 0x3f70

    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->T_Y:F

    .line 36
    new-instance v1, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v1}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 37
    new-instance v1, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v1}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 39
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexShortBuffer:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/android/hwcamera/panoramaviewer/Shape;->indexArray:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexShortBuffer:Ljava/nio/ShortBuffer;

    .line 44
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexShortBuffer:Ljava/nio/ShortBuffer;

    sget-object v2, Lcom/android/hwcamera/panoramaviewer/Shape;->indexArray:[S

    sget-object v3, Lcom/android/hwcamera/panoramaviewer/Shape;->indexArray:[S

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 45
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->indexShortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    .end local v0           #ibb:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/hwcamera/panoramaviewer/Shape;->setPosition(FFF)V

    .line 49
    return-void
.end method


# virtual methods
.method public abstract draw(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method protected makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 4
    .parameter "vertexArray"

    .prologue
    const/4 v3, 0x0

    .line 81
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    .local v1, tvbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 84
    .local v0, triangleVertexBuffer:Ljava/nio/FloatBuffer;
    array-length v2, p1

    invoke-virtual {v0, p1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 85
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-object v0
.end method

.method public setColor(J)V
    .locals 6
    .parameter "in_color"

    .prologue
    .line 93
    const v0, 0x3b808081

    .line 94
    .local v0, toFloat:F
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->color:[F

    const/4 v2, 0x0

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p1

    const/16 v5, 0x10

    shr-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 95
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->color:[F

    const/4 v2, 0x1

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p1

    const/16 v5, 0x8

    shr-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 96
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->color:[F

    const/4 v2, 0x2

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 97
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->color:[F

    const/4 v2, 0x3

    const-wide v3, 0xff000000L

    and-long/2addr v3, p1

    const/16 v5, 0x18

    shr-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    .line 98
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p2, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 67
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .parameter "xr"
    .parameter "yr"
    .parameter "zr"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p1, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p2, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iput p3, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 74
    return-void
.end method

.method public setTextureCoordinates([F)V
    .locals 4
    .parameter "textureCoordinateArray"

    .prologue
    const/4 v3, 0x0

    .line 54
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    .local v0, tcbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 57
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 58
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Shape;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void
.end method
