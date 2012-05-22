.class public Lcom/android/hwcamera/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraAppImpl"


# instance fields
.field private mCameraActivity:Lcom/android/hwcamera/Camera;

.field private mFirstZoomHint:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field mOpenCameraThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 44
    new-instance v0, Lcom/android/hwcamera/CameraAppImpl$1;

    const-string v1, "CameraOpenThread"

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/CameraAppImpl$1;-><init>(Lcom/android/hwcamera/CameraAppImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/CameraAppImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    return p1
.end method


# virtual methods
.method public getOpenCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isTimeToZoomHint()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    invoke-static {p0}, Lcom/android/hwcamera/Util;->initialize(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    return-void
.end method

.method public resetMakeZoomHint(Z)V
    .locals 0
    .parameter "bMake"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 65
    return-void
.end method

.method public setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    .line 53
    return-void
.end method
