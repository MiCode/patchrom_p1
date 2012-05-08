.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 242
    return-void
.end method


# virtual methods
.method public getKeyDispatchingTimeout()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 275
    .local v0, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getKeyDispatchingTimeout()J

    move-result-wide v1

    .line 278
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 267
    .local v0, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->keyDispatchingTimedOut()Z

    move-result v1

    .line 270
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 246
    .local v0, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawn()V

    .line 249
    :cond_0
    return-void
.end method

.method public windowsGone()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 260
    .local v0, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsGone()V

    .line 263
    :cond_0
    return-void
.end method

.method public windowsVisible()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 253
    .local v0, activity:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisible()V

    .line 256
    :cond_0
    return-void
.end method
