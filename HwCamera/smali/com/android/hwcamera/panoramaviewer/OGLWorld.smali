.class public Lcom/android/hwcamera/panoramaviewer/OGLWorld;
.super Ljava/lang/Object;
.source "OGLWorld.java"


# instance fields
.field public currentTexture:I

.field public eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

.field private fov:F

.field public lookAtRadius:F

.field private shapeVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/hwcamera/panoramaviewer/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public textureFd:Landroid/content/res/AssetFileDescriptor;

.field public textureIdVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

.field public texturesNeedUpdating:Z

.field public xAngle:F

.field private xLimitMax:I

.field private xLimitMin:I

.field public yAngle:F

.field private yLimitMax:I

.field private yLimitMin:I

.field private zoomAmount:F

.field public zoomStep:F


# direct methods
.method public constructor <init>(FLcom/android/hwcamera/panoramaviewer/OGLTextureProvider;)V
    .locals 3
    .parameter "fov"
    .parameter "texProvider"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    .line 16
    iput v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->currentTexture:I

    .line 17
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 18
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 20
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0}, Lcom/android/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/android/hwcamera/panoramaviewer/Point3D;

    .line 21
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    .line 22
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    .line 30
    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureFd:Landroid/content/res/AssetFileDescriptor;

    .line 133
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    .line 137
    const/16 v0, -0x12

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    .line 138
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setFov(F)V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    .line 40
    iput-object p2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public addShape(Lcom/android/hwcamera/panoramaviewer/Shape;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public clearShape()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 64
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/panoramaviewer/Shape;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/panoramaviewer/Shape;

    .line 85
    .local v1, nextShape:Lcom/android/hwcamera/panoramaviewer/Shape;
    iget-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    if-eqz v2, :cond_0

    .line 87
    iget v2, v1, Lcom/android/hwcamera/panoramaviewer/Shape;->textureIndex:I

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->getTextureId(I)I

    move-result v2

    iput v2, v1, Lcom/android/hwcamera/panoramaviewer/Shape;->textureId:I

    .line 90
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/panoramaviewer/Shape;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 93
    .end local v1           #nextShape:Lcom/android/hwcamera/panoramaviewer/Shape;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    .line 94
    return-void
.end method

.method public ensureAnglesWithinLimits()V
    .locals 5

    .prologue
    .line 111
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 112
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 114
    const-string v0, "OGLWorld"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAnglesWithinLimits(): yAngle OVER MAX LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limiting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 125
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 117
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 118
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 120
    const-string v0, "OGLWorld"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAnglesWithinLimits(): yAngle UNDER MIN LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limiting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 128
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    goto :goto_1
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->fov:F

    return v0
.end method

.method public getTextureId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZoomAmount()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    return v0
.end method

.method public setFov(F)V
    .locals 0
    .parameter "in_fov"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->fov:F

    .line 54
    return-void
.end method

.method public setRotationLimits(IIII)V
    .locals 0
    .parameter "yLimitMin"
    .parameter "yLimitMax"
    .parameter "xLimitMin"
    .parameter "xLimitMax"

    .prologue
    .line 142
    invoke-virtual {p0, p3, p4}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setxLimit(II)V

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->setyLimit(II)V

    .line 144
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->ensureAnglesWithinLimits()V

    .line 145
    return-void
.end method

.method public setZoomAmount(F)V
    .locals 2
    .parameter "newZoom"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    .line 100
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    .line 101
    return-void
.end method

.method public setxLimit(II)V
    .locals 3
    .parameter "xLimitMin"
    .parameter "xLimitMax"

    .prologue
    .line 148
    if-gt p1, p2, :cond_0

    .line 150
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    .line 151
    iput p2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setxLimit: ERROR (Skipping update): min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setyLimit(II)V
    .locals 3
    .parameter "yLimitMin"
    .parameter "yLimitMax"

    .prologue
    .line 159
    if-gt p1, p2, :cond_0

    .line 160
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    .line 161
    iput p2, p0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setyLimit: ERROR (Skipping update): min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
