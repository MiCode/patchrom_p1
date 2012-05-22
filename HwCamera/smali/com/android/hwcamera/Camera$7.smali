.class Lcom/android/hwcamera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4606
    iput-object p1, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4608
    iget-object v0, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x2

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;I)Z

    .line 4609
    return-void
.end method
