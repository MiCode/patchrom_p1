.class Lcom/android/server/ConnectivityService$2;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1730
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Landroid/net/MobileDataStateTracker;

    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker;->resetApn()V

    .line 1736
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    .line 1737
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "you have chose to shut down Mobile data service!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mShouldShutdownMobile:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$702(Lcom/android/server/ConnectivityService;Z)Z

    .line 1741
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mWifiToPdpDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$902(Lcom/android/server/ConnectivityService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1742
    return-void
.end method
