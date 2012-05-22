.class Lcom/android/hwcamera/Camera$3;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
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
    .line 953
    iput-object p1, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 956
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 959
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 960
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopCaptureIfNeed()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)V

    .line 961
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v5, v8}, Lcom/android/hwcamera/Camera;->access$4302(Lcom/android/hwcamera/Camera;I)I

    .line 962
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 963
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    const-wide/16 v6, -0x1

    #calls: Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V
    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;J)V

    .line 966
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4500(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 967
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;)V

    .line 996
    :cond_1
    :goto_0
    return-void

    .line 970
    :cond_2
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 971
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->getRequestRemaining()I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$4600(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 976
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_1
    const/4 v4, 0x0

    .line 982
    .local v4, sdCardRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    .line 983
    .local v2, sdAvailableSpace:J
    const-wide/32 v5, 0x1400000

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 984
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkRemaining(J)I
    invoke-static {v5, v2, v3}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;J)I

    move-result v4

    .line 986
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->getRequestRemaining()I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$4600(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 987
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 988
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v5, v4}, Lcom/android/hwcamera/Camera;->access$4302(Lcom/android/hwcamera/Camera;I)I

    .line 989
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v5}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 990
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    const v7, 0x7f0c0122

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)I

    move-result v7

    #calls: Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    invoke-static {v5, v6, v8, v7}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 977
    .end local v2           #sdAvailableSpace:J
    .end local v4           #sdCardRemaining:I
    :catch_0
    move-exception v1

    .line 978
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 993
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #sdAvailableSpace:J
    .restart local v4       #sdCardRemaining:I
    :cond_4
    iget-object v5, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V
    invoke-static {v5, v2, v3}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;J)V

    goto :goto_0
.end method
