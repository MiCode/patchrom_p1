.class Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;
.super Ljava/lang/Object;
.source "PanoramaViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;
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
    .line 97
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->xClick:F

    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->yClick:F

    .line 104
    const/4 v0, 0x0

    return v0
.end method
