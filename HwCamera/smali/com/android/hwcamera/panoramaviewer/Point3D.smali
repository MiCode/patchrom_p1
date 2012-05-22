.class public Lcom/android/hwcamera/panoramaviewer/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"


# static fields
.field private static final df:Ljava/text/DecimalFormat;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/panoramaviewer/Point3D;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 9
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 13
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 14
    iput p2, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 15
    iput p3, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/panoramaviewer/Point3D;)V
    .locals 1
    .parameter "oldP"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 20
    iget v0, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    .line 21
    iget v0, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    .line 22
    iget v0, p1, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->df:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->x:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->df:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->y:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/panoramaviewer/Point3D;->df:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/Point3D;->z:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
