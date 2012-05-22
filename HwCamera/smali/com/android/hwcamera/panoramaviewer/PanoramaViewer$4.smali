.class Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;
.super Ljava/lang/Thread;
.source "PanoramaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setPanoramaData(Landroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget-boolean v0, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$100(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void

    .line 293
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method
