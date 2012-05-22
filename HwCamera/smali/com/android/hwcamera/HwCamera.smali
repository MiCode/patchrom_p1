.class public Lcom/android/hwcamera/HwCamera;
.super Ljava/lang/Object;
.source "HwCamera.java"


# static fields
.field private static HwExtCameraClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static HwExtCameraInstance:Ljava/lang/Object; = null

.field private static HwExtCameraMethodList:[Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "HwCamera"


# instance fields
.field private mCamera:Ljava/lang/Object;

.field private mIsDead:Z

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/android/hwcamera/HwCamera;->HwExtCameraClass:Ljava/lang/Class;

    .line 25
    sput-object v0, Lcom/android/hwcamera/HwCamera;->HwExtCameraInstance:Ljava/lang/Object;

    .line 26
    sput-object v0, Lcom/android/hwcamera/HwCamera;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "camera"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/HwCamera;->mIsDead:Z

    .line 42
    iput-object p1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/HwCamera;->mThreadId:J

    .line 44
    invoke-static {}, Lcom/android/hwcamera/HwCamera;->getHwExtCameraInstance()V

    .line 45
    return-void
.end method

.method private checkThread()V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 33
    .local v0, threadId:J
    iget-wide v2, p0, Lcom/android/hwcamera/HwCamera;->mThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 35
    iget-boolean v2, p0, Lcom/android/hwcamera/HwCamera;->mIsDead:Z

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "call cameraDevice in another thread!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    return-void
.end method

.method public static findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "method"

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 65
    sget-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    .line 70
    :goto_1
    return-object v1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const-string v1, "HwCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t findMethod method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getHwExtCameraInstance()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "com.huawei.hwextcamera.HwExtCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraClass:Ljava/lang/Class;

    .line 52
    sget-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/HwCamera;->HwExtCameraMethodList:[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 56
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 57
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "HwCamera"

    const-string v2, "Got oom exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 5
    .parameter "mAutoFocusCallback"

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 335
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 349
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    return-void

    .line 340
    :cond_0
    :try_start_1
    const-string v1, "autoFocus"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 343
    :catch_1
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 355
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 368
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    return-void

    .line 359
    :cond_0
    :try_start_1
    const-string v1, "cancelAutoFocus"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 452
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_0
    return-object v1

    .line 457
    :cond_0
    :try_start_1
    const-string v1, "getAndroidCamera"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 467
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 463
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 464
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 96
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    return-object v1

    .line 101
    :cond_0
    :try_start_1
    const-string v1, "getParameters"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 113
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 414
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 427
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    return-void

    .line 418
    :cond_0
    :try_start_1
    const-string v1, "lock"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public reconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 120
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 136
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    return-void

    .line 124
    :cond_0
    :try_start_1
    const-string v1, "reconnect"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 128
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 89
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    return-void

    .line 80
    :cond_0
    :try_start_1
    const-string v1, "release"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setDisplayOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 267
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 282
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    return-void

    .line 272
    :cond_0
    :try_start_1
    const-string v1, "setDisplayOrientation"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 276
    :catch_1
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 5
    .parameter "mErrorCallback"

    .prologue
    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 393
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 408
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    return-void

    .line 398
    :cond_0
    :try_start_1
    const-string v1, "setErrorCallback"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 402
    :catch_1
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "mParameters"

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 142
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 158
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    return-void

    .line 146
    :cond_0
    :try_start_1
    const-string v1, "setParameters"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 150
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 227
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 242
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    return-void

    .line 232
    :cond_0
    :try_start_1
    const-string v1, "setPreviewCallbackWithBuffer"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 374
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 387
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    return-void

    .line 378
    :cond_0
    :try_start_1
    const-string v1, "setPreviewDisplay"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 381
    :catch_1
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 248
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 261
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    return-void

    .line 252
    :cond_0
    :try_start_1
    const-string v1, "setPreviewTexture"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 5
    .parameter "mZoomListener"

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 206
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 221
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    return-void

    .line 211
    :cond_0
    :try_start_1
    const-string v1, "setZoomChangeListener"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startPreview()V
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 187
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 200
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    return-void

    .line 191
    :cond_0
    :try_start_1
    const-string v1, "startPreview"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startSmoothZoom(I)V
    .locals 6
    .parameter "mTargetZoomValue"

    .prologue
    .line 286
    monitor-enter p0

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 288
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 303
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    return-void

    .line 293
    :cond_0
    :try_start_1
    const-string v1, "startSmoothZoom"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 297
    :catch_1
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 165
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 181
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return-void

    .line 169
    :cond_0
    :try_start_1
    const-string v1, "stopPreview"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 173
    :catch_1
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 5
    .parameter "mShutterCallback"
    .parameter "mRawPictureCallback"
    .parameter "mPostViewPictureCallback"
    .parameter "jpegPictureCallback"

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 312
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 329
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    return-void

    .line 318
    :cond_0
    :try_start_1
    const-string v1, "takePictureEx"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 323
    :catch_1
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/HwCamera;->checkThread()V

    .line 433
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    instance-of v1, v1, Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 446
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    return-void

    .line 437
    :cond_0
    :try_start_1
    const-string v1, "unlock"

    invoke-static {v1}, Lcom/android/hwcamera/HwCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/HwCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 440
    :catch_1
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 442
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
