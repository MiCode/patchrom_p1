.class Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->access$200(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->setReady()V

    .line 322
    return-void
.end method
