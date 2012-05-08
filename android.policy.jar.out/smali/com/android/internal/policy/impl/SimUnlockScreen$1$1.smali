.class Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 290
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getPinRetries(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$802(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_0
.end method
