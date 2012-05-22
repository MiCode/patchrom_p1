.class Lcom/android/hwcamera/panorama/PanoramaActivity$6;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->startCapture()V
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
    .line 541
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 3
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/16 v2, 0xa0

    .line 545
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMaxAngleX:I
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1300(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMinAngleX:I
    invoke-static {v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1400(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMaxAngleY:I
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1500(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMinAngleY:I
    invoke-static {v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1600(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_1

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1700(Lcom/android/hwcamera/panorama/PanoramaActivity;Z)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$6;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateProgress(FFF)V
    invoke-static {v0, p2, p4, p5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;FFF)V

    goto :goto_0
.end method
