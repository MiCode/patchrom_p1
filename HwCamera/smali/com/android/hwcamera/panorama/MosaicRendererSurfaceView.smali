.class public Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MosaicRendererSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ConfigChooser;,
        Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MosaicRendererSurfaceView"


# instance fields
.field private mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

.field private mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, v0, v0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->init(ZII)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, v0, v0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->init(ZII)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 1
    .parameter "context"
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p2, p3, p4}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->init(ZII)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->unlockPreviewReadyFlag()V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 106
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 107
    const-string v1, "MosaicRendererSurfaceView"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method private init(ZII)V
    .locals 8
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 69
    :cond_0
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ContextFactory;-><init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 76
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 81
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    invoke-direct {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 83
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setRenderMode(I)V

    .line 84
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    .line 85
    return-void

    .line 76
    :cond_1
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ConfigChooser;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method

.method private unlockPreviewReadyFlag()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 310
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    return-object v0
.end method

.method public lockPreviewReadyFlag()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 306
    return-void
.end method

.method public preprocess([F)V
    .locals 1
    .parameter "transformMatrix"

    .prologue
    .line 327
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;-><init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;[F)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public setReady()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$1;-><init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public setWarping(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 348
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;-><init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public transferGPUtoCPU()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$3;-><init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public waitUntilPreviewReady()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mPreviewFrameReadyForProcessing:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 314
    return-void
.end method
