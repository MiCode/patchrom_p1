.class Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 181
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 183
    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 184
    iput v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 185
    iput-boolean v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    .line 176
    iput p3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    .line 177
    iput p4, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    .line 179
    return-void
.end method
