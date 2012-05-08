.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->onSimLockChangedResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 368
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string v0, "PUK_TRIED_TEN_TIMES"

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getPukRetries(I)Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10402f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setInputEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Z)V

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400cc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getPukRetries(I)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
