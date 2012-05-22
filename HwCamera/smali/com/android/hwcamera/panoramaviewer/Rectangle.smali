.class public Lcom/android/hwcamera/panoramaviewer/Rectangle;
.super Lcom/android/hwcamera/panoramaviewer/Shape;
.source "Rectangle.java"


# static fields
.field private static final zPlane:F


# instance fields
.field private final DEFAULT_TEXTURE_VERTICES:[F

.field private rectangleVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(FFFFFJI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "h"
    .parameter "in_color"
    .parameter "texture"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/panoramaviewer/Shape;-><init>(FFF)V

    .line 26
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    .line 38
    const/16 v1, 0xc

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    aput v2, v0, v3

    const/16 v1, 0x9

    aput p4, v0, v1

    const/16 v1, 0xa

    aput p5, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 44
    .local v0, rectangleVertexArray:[F
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    .line 46
    iput p8, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureId:I

    .line 47
    invoke-virtual {p0, p6, p7}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->setColor(J)V

    .line 49
    return-void

    .line 26
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;JI)V
    .locals 5
    .parameter "p1"
    .parameter "p2"
    .parameter "in_color"
    .parameter "texture"

    .prologue
    const/16 v4, 0x8

    .line 64
    iget v1, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v3, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/panoramaviewer/Shape;-><init>(FFF)V

    .line 26
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    .line 66
    const/16 v1, 0xc

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    iget v1, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v1, v0, v4

    const/16 v1, 0x9

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    .line 71
    .local v0, rectangleVertexArray:[F
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    .line 72
    iput p5, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureId:I

    .line 73
    invoke-virtual {p0, p3, p4}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->setColor(J)V

    .line 74
    return-void

    .line 26
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;Lcom/android/hwcamera/panoramaviewer/Point3D;JI)V
    .locals 5
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "in_color"
    .parameter "texture"

    .prologue
    const/16 v4, 0x8

    .line 84
    iget v1, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget v3, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/panoramaviewer/Shape;-><init>(FFF)V

    .line 26
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    .line 86
    const/16 v1, 0xc

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p3, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p3, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    iget v1, p3, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v1, v0, v4

    const/16 v1, 0x9

    iget v2, p4, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p4, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p4, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    .line 91
    .local v0, rectangleVertexArray:[F
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    .line 92
    iput p7, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureId:I

    .line 93
    invoke-virtual {p0, p5, p6}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->setColor(J)V

    .line 95
    const-string v1, "Rectangle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created rectangle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 26
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawColoredSquare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const v6, 0x8074

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 132
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->color:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->color:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->color:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->color:[F

    aget v3, v3, v5

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 138
    const/16 v0, 0x1406

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 142
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 150
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->indexShortBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 158
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 161
    return-void
.end method

.method private drawTexturedSquare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const v5, 0x8074

    const/16 v3, 0x1406

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/16 v4, 0xde1

    .line 164
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 166
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 167
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 169
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 171
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 176
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "Rectangle"

    const-string v1, "ERROR: Texture coordinate buffer null! Did textures not load properly? Falling back..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 183
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 187
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureId:I

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 197
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 199
    const/16 v0, 0x2803

    const v1, 0x812f

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 202
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 210
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->indexShortBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 217
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 218
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 219
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 221
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 111
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->position:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    invoke-interface {p1, v0, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    invoke-interface {p1, v0, v3, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/android/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-interface {p1, v0, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 119
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/Rectangle;->textureId:I

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->drawTexturedSquare(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 128
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 129
    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/panoramaviewer/Rectangle;->drawColoredSquare(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method
