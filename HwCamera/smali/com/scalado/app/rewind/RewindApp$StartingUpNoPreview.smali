.class Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingUpNoPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method


# virtual methods
.method protected start()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V
    invoke-static {v0, v1, v2}, Lcom/scalado/app/rewind/RewindApp;->access$1800(Lcom/scalado/app/rewind/RewindApp;II)V

    .line 859
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->startWithoutPreview()V

    .line 865
    :cond_0
    return-void
.end method
