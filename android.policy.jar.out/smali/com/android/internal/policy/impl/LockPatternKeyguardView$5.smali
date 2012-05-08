.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1421
    return-void
.end method

.method public exposeFallback()V
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1439
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1446
    return-void
.end method

.method public reportFailedAttempt()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2008(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1430
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1431
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1432
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 1407
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1409
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 1410
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 1411
    return-void
.end method
