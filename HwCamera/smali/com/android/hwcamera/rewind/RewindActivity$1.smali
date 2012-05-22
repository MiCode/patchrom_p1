.class Lcom/android/hwcamera/rewind/RewindActivity$1;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$1;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$1;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2600(Lcom/android/hwcamera/rewind/RewindActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$1;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2602(Lcom/android/hwcamera/rewind/RewindActivity;Z)Z

    .line 620
    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->delAllFile(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$1;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2602(Lcom/android/hwcamera/rewind/RewindActivity;Z)Z

    .line 623
    :cond_0
    return-void
.end method
