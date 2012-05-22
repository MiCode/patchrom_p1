.class Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/android/hwcamera/rewind/Topbar$TopbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTopbarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/rewind/RewindActivity;Lcom/android/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;-><init>(Lcom/android/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onLoadClick()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/android/hwcamera/rewind/RewindActivity;->mRewindApp:Lcom/scalado/app/rewind/RewindApp;
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2100(Lcom/android/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 584
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$MyTopbarListener;->this$0:Lcom/android/hwcamera/rewind/RewindActivity;

    #calls: Lcom/android/hwcamera/rewind/RewindActivity;->loadImages()V
    invoke-static {v0}, Lcom/android/hwcamera/rewind/RewindActivity;->access$2200(Lcom/android/hwcamera/rewind/RewindActivity;)V

    .line 585
    return-void
.end method
