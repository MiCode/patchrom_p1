.class Lcom/android/hwcamera/panorama/PanoramaActivity$11;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->saveHighResMosaic()V
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
    .line 767
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 770
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    move-result-object v2

    .line 772
    .local v2, jpeg:Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    if-nez v2, :cond_0

    .line 773
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 794
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-boolean v6, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-nez v6, :cond_1

    .line 775
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 777
    :cond_1
    iget-object v6, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    invoke-static {v6}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v3

    .line 778
    .local v3, orientation:I
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v7, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    iget v8, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    iget v9, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v6, v7, v8, v9, v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$2800(Lcom/android/hwcamera/panorama/PanoramaActivity;[BIII)Landroid/net/Uri;

    move-result-object v4

    .line 779
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 782
    iget v6, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->width:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$2900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 784
    .local v5, widthRatio:I
    iget v6, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->height:I

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPanoLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$2900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 786
    .local v0, heightRatio:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 788
    .local v1, inSampleSize:I
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v7, v2, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    invoke-static {v7, v3, v1, v4}, Lcom/android/hwcamera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v7

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v6, v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3002(Lcom/android/hwcamera/panorama/PanoramaActivity;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 791
    .end local v0           #heightRatio:I
    .end local v1           #inSampleSize:I
    .end local v5           #widthRatio:I
    :cond_2
    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$11;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
