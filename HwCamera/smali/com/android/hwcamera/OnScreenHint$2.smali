.class Lcom/android/hwcamera/OnScreenHint$2;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/OnScreenHint;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/hwcamera/OnScreenHint$2;->this$0:Lcom/android/hwcamera/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/OnScreenHint$2;->this$0:Lcom/android/hwcamera/OnScreenHint;

    #calls: Lcom/android/hwcamera/OnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/android/hwcamera/OnScreenHint;->access$100(Lcom/android/hwcamera/OnScreenHint;)V

    .line 187
    return-void
.end method
