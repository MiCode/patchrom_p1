.class Lcom/android/hwcamera/panorama/PanoramaActivity$9;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->createContentView()V
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
    .line 673
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$9;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$9;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->switchToCameraMode()Z
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$2200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    .line 677
    return-void
.end method
