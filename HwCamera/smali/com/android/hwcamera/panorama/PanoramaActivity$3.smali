.class Lcom/android/hwcamera/panorama/PanoramaActivity$3;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->onMosaicSurfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$3;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$3;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const-string v0, "PanoramaActivity"

    const-string v1, "onMosaicSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$3;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->startCameraPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1000(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 434
    :cond_0
    return-void
.end method
