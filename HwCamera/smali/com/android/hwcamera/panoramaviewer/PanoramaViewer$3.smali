.class Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;
.super Ljava/lang/Object;
.source "PanoramaViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 110
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 114
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->xClick:F

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->xClick:F

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020043

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v2}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->initWall()V

    .line 126
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v3}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    #setter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2, v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$202(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;Z)Z

    goto :goto_0

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020042

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 126
    goto :goto_2
.end method
