.class Lcom/android/hwcamera/hwui/RotateProgress$1;
.super Landroid/app/ProgressDialog;
.source "RotateProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/RotateProgress;->createProcessDialogNoTitle(Ljava/lang/String;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/RotateProgress;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/RotateProgress;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateProgress$1;->this$0:Lcom/android/hwcamera/hwui/RotateProgress;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress$1;->this$0:Lcom/android/hwcamera/hwui/RotateProgress;

    #getter for: Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/RotateProgress;->access$000(Lcom/android/hwcamera/hwui/RotateProgress;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera stActivity onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress$1;->this$0:Lcom/android/hwcamera/hwui/RotateProgress;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateProgress;->onBackPressedEvent()V

    .line 81
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress$1;->this$0:Lcom/android/hwcamera/hwui/RotateProgress;

    #getter for: Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/RotateProgress;->access$000(Lcom/android/hwcamera/hwui/RotateProgress;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera stActivity onSearchRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return v0
.end method
