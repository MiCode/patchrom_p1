.class public Lcom/android/hwcamera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/android/hwcamera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraId:I

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 52
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 53
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 54
    iput v4, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v2, Lcom/android/hwcamera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/CameraHolder$MyHandler;-><init>(Lcom/android/hwcamera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    .line 100
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 103
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 104
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 105
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    .line 107
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 108
    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/android/hwcamera/CameraHolder;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/android/hwcamera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/hwcamera/CameraHolder;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/hwcamera/CameraHolder;->sHolder:Lcom/android/hwcamera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 186
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 190
    const-string v2, "CameraHolder"

    const-string v3, "releaseCamera delay!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_2
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_0
    move v4, v3

    .line 186
    goto :goto_0

    :cond_1
    move v2, v3

    .line 187
    goto :goto_1

    .line 195
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->release()V

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 186
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 204
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/android/hwcamera/HwCamera;
    .locals 5
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 123
    monitor-enter p0

    :try_start_0
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open mUsers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v2, :cond_3

    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 125
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mNumberOfCameras:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    const/4 p1, 0x0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->release()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 133
    :try_start_1
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p1}, Lcom/android/hwcamera/Util;->getHwExtCameraInstance(I)Lcom/android/hwcamera/HwCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 135
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Lcom/android/hwcamera/HwCamera;

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/hwcamera/HwCamera;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 138
    :cond_2
    iput p1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 153
    :goto_1
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 154
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/CameraHolder;->mKeepBeforeTime:J

    .line 156
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 124
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v1, "CameraHolder"

    const-string v2, "fail to connect Camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 146
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    :try_start_5
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CameraHolder"

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Lcom/android/hwcamera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release mUsers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v1, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 179
    iget v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 182
    invoke-direct {p0}, Lcom/android/hwcamera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Lcom/android/hwcamera/HwCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 165
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/hwcamera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :cond_0
    monitor-exit p0

    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
