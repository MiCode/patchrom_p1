.class Lcom/android/hwcamera/panorama/PanoramaActivity$1;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 253
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$900(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 283
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 259
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$400(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 266
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$500(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 268
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 272
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
