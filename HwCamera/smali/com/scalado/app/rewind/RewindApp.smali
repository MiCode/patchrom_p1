.class public Lcom/scalado/app/rewind/RewindApp;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RewindApp$1;,
        Lcom/scalado/app/rewind/RewindApp$ToUiHandler;,
        Lcom/scalado/app/rewind/RewindApp$JpegLoader;,
        Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;,
        Lcom/scalado/app/rewind/RewindApp$Rewinding;,
        Lcom/scalado/app/rewind/RewindApp$Capturing;,
        Lcom/scalado/app/rewind/RewindApp$Loading;,
        Lcom/scalado/app/rewind/RewindApp$ReceivingImages;,
        Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;,
        Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;,
        Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;,
        Lcom/scalado/app/rewind/RewindApp$StartingUpNoPreview;,
        Lcom/scalado/app/rewind/RewindApp$Previewing;,
        Lcom/scalado/app/rewind/RewindApp$State;,
        Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;,
        Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;,
        Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    }
.end annotation


# static fields
.field private static final ADD_JPEG:I = 0x1

.field private static final DATA_KEY0:Ljava/lang/String; = "data_key_0"

.field private static final DATA_KEY1:Ljava/lang/String; = "data_key_1"

.field private static final DATA_KEY2:Ljava/lang/String; = "data_key_2"

.field private static final DATA_KEY3:Ljava/lang/String; = "data_key_3"

.field private static final DATA_KEY4:Ljava/lang/String; = "data_key_4"

.field private static final SHOW_MERGE:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityHandler:Landroid/os/Handler;

.field private mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

.field private mBgIndex:I

.field private mBurstSize:I

.field private mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

.field private mCapturing:Z

.field private mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

.field private mContext:Landroid/content/Context;

.field private mCurSurfaceView:Landroid/view/SurfaceView;

.field private mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFgIndex:I

.field private mIgnoreNextBackUp:Z

.field private mIsRunning:Z

.field private final mJpegData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

.field private mJpegs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewEnabled:Z

.field private mPreviewHeight:I

.field private mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewSurfaceView:Landroid/view/SurfaceView;

.field private mPreviewWidth:I

.field private mRewind:Lcom/scalado/app/rewind/RewindSession;

.field private mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

.field private mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

.field private mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mRewindSurfaceView:Landroid/view/SurfaceView;

.field private mSourcesLoaded:Z

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

.field private mThumbSize:Lcom/scalado/base/Size;

.field private mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

.field private mViewer:Lcom/scalado/app/rewind/RewindViewer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scalado/app/rewind/RewindApp$CameraInterface;ZILcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 3
    .parameter "context"
    .parameter "camera"
    .parameter "previewEnabled"
    .parameter "numImages"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, "RewindApp"

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->TAG:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    .line 125
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    .line 127
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    .line 131
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    .line 132
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    .line 159
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    .line 163
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    .line 170
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    .line 188
    iget-object v0, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p5, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length miss match for predefined images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    .line 200
    iput-boolean p3, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    .line 201
    iput p4, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    .line 202
    iput-object p5, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 203
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {v0, p4}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    .line 209
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegs:Ljava/util/Vector;

    .line 212
    :pswitch_0
    const-string v0, "RewindApp"

    const-string v1, "TestCamera(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/AutoSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/RewindApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->hideTopbar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/scalado/app/rewind/RewindApp;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mSourcesLoaded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/scalado/app/rewind/RewindApp;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/scalado/app/rewind/RewindApp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->showLtw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$JpegLoader;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/scalado/app/rewind/RewindApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/scalado/app/rewind/RewindApp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/scalado/app/rewind/RewindApp;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->addJpeg([B)V

    return-void
.end method

.method static synthetic access$3800(Lcom/scalado/app/rewind/RewindApp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/SourceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->createSourceManager()V

    return-void
.end method

.method static synthetic access$4100(Lcom/scalado/app/rewind/RewindApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/RewindApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    return-object v0
.end method

.method private addJpeg([B)V
    .locals 13
    .parameter "bb"

    .prologue
    const/4 v11, 0x0

    .line 359
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v10, v10, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    if-nez v10, :cond_1

    .line 360
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v10, :cond_0

    .line 361
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p1}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 362
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v8, Lcom/scalado/stream/BufferStream;

    invoke-direct {v8, v1, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 363
    .local v8, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 365
    .local v6, iterator:Lcom/scalado/base/Iterator;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v6, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 366
    invoke-virtual {v6}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 367
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    .line 368
    .local v3, dims:Lcom/scalado/base/Size;
    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 369
    .local v0, ar:F
    const v10, 0x3dcccccd

    iget v11, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    int-to-float v11, v11

    mul-float v9, v10, v11

    .line 370
    .local v9, w:F
    div-float v5, v9, v0

    .line 371
    .local v5, h:F
    new-instance v10, Lcom/scalado/base/Size;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0           #ar:F
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v2           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v3           #dims:Lcom/scalado/base/Size;
    .end local v5           #h:F
    .end local v6           #iterator:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/BufferStream;
    .end local v9           #w:F
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 378
    .local v7, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    invoke-virtual {v10, v7}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    .end local v7           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 373
    .restart local v1       #buffer:Lcom/scalado/base/Buffer;
    .restart local v6       #iterator:Lcom/scalado/base/Iterator;
    .restart local v8       #stream:Lcom/scalado/stream/BufferStream;
    :catch_0
    move-exception v4

    .line 374
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "RewindApp"

    const-string v11, "Exception in addJpeg:"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    .end local v1           #buffer:Lcom/scalado/base/Buffer;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #iterator:Lcom/scalado/base/Iterator;
    .end local v8           #stream:Lcom/scalado/stream/BufferStream;
    :cond_1
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v10, p1}, Lcom/scalado/app/rewind/AutoSession;->addJpeg([B)V

    goto :goto_1
.end method

.method private createSourceManager()V
    .locals 9

    .prologue
    const/16 v5, 0x32

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 639
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    if-nez v4, :cond_0

    .line 640
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, v5, v5}, Lcom/scalado/base/Size;-><init>(II)V

    .line 644
    .local v3, tnSize:Lcom/scalado/base/Size;
    :goto_0
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v1, Lcom/scalado/app/rewind/SourceManager$Configuration;

    iget v4, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v1, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 648
    .local v1, fgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v0, Lcom/scalado/app/rewind/SourceManager$Configuration;

    iget v4, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 650
    .local v0, bgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v2, Lcom/scalado/app/rewind/SourceManager$Configuration;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    sget-object v6, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    invoke-direct {v2, v4, v5, v7, v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;-><init>(IIILcom/scalado/caps/Rotation;)V

    .line 652
    .local v2, tnCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    new-instance v4, Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v4, v1, v0, v2}, Lcom/scalado/app/rewind/SourceManager;-><init>(Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 653
    new-instance v4, Lcom/scalado/app/rewind/RewindSession;

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v4, v5}, Lcom/scalado/app/rewind/RewindSession;-><init>(Lcom/scalado/app/rewind/SourceManager;)V

    iput-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 654
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v5, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v6, p0, Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I

    invoke-virtual {v4, v5, v6}, Lcom/scalado/app/rewind/RewindViewer;->setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V

    .line 655
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindViewer;->display()V

    .line 656
    const-string v4, "RewindApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRewind = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput v8, p0, Lcom/scalado/app/rewind/RewindApp;->mBgIndex:I

    .line 658
    iput v8, p0, Lcom/scalado/app/rewind/RewindApp;->mFgIndex:I

    .line 659
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mBgIndex:I

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 660
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget v5, p0, Lcom/scalado/app/rewind/RewindApp;->mFgIndex:I

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 661
    return-void

    .line 642
    .end local v0           #bgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v1           #fgCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v2           #tnCfg:Lcom/scalado/app/rewind/SourceManager$Configuration;
    .end local v3           #tnSize:Lcom/scalado/base/Size;
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp;->mThumbSize:Lcom/scalado/base/Size;

    .restart local v3       #tnSize:Lcom/scalado/base/Size;
    goto/16 :goto_0
.end method

.method private final hideTopbar()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 752
    :cond_0
    return-void
.end method

.method private privateCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z

    if-nez v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v2, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    if-ne v2, v1, :cond_0

    .line 480
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "myTouch_4G_Slide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 482
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    new-instance v2, Lcom/scalado/app/rewind/RewindApp$Capturing;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RewindApp$Capturing;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 488
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private save(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V
    .locals 12
    .parameter "bb"
    .parameter "prefix"
    .parameter "index"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v0, v6, [B

    .line 537
    .local v0, bytes:[B
    invoke-virtual {p0, p2, p3}, Lcom/scalado/app/rewind/RewindApp;->getFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, name:Ljava/lang/String;
    const-string v6, "RewindApp"

    const-string v7, "Saving %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v6, "RewindApp"

    const-string v7, "Name = %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v6, "RewindApp"

    const-string v7, "Size = %d"

    new-array v8, v11, [Ljava/lang/Object;

    array-length v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v6, "RewindApp"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, file:Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 544
    const/4 v4, 0x0

    .line 546
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 548
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 549
    const-string v6, "RewindApp"

    const-string v7, "Done saving."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 555
    if-eqz v5, :cond_2

    .line 557
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 564
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 558
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 559
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "RewindApp"

    const-string v7, "Exception when closing output stream!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v6, "RewindApp"

    const-string v7, "Ex:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 561
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 551
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 552
    .restart local v2       #ioe:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "RewindApp"

    const-string v7, "IOE!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v6, "RewindApp"

    const-string v7, "Ex:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 555
    if-eqz v4, :cond_0

    .line 557
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 558
    :catch_2
    move-exception v2

    .line 559
    const-string v6, "RewindApp"

    const-string v7, "Exception when closing output stream!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v6, "RewindApp"

    const-string v7, "Ex:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 555
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_1

    .line 557
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 561
    :cond_1
    :goto_3
    throw v6

    .line 558
    :catch_3
    move-exception v2

    .line 559
    .restart local v2       #ioe:Ljava/io/IOException;
    const-string v7, "RewindApp"

    const-string v8, "Exception when closing output stream!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v7, "RewindApp"

    const-string v8, "Ex:"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 555
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 551
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_2
    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private final setViewVisibilities(II)V
    .locals 1
    .parameter "vfVis"
    .parameter "ltwVis"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 746
    :cond_1
    return-void
.end method

.method private setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"
    .parameter "ltwView"

    .prologue
    const/4 v2, 0x0

    .line 298
    iput-object p2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    .line 299
    iput-object p3, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    .line 301
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 303
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 305
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 306
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 310
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 311
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$RewindSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 313
    return-void
.end method

.method private final showLtw(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 734
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V

    .line 736
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private startPreview(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 385
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 388
    :cond_0
    if-eqz p1, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    invoke-interface {v1}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->previewRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->stopPreview()V

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->startPreview(Z)Z

    move-result v0

    .line 395
    .local v0, success:Z
    if-nez v0, :cond_3

    .line 396
    const-string v1, "RewindApp"

    const-string v2, "Error when starting preview."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    goto :goto_0
.end method

.method private switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    .locals 3
    .parameter "newTask"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-ne p1, v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 758
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/app/rewind/RewindApp$State;->beforeSwitching()V

    .line 759
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$State;->end()V

    .line 762
    :cond_1
    const-string v0, "RewindApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    .line 764
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$State;->start()V

    goto :goto_0
.end method


# virtual methods
.method public capture()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindApp;->privateCapture()Z

    .line 460
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->release()V

    .line 635
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 418
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mToUiHandler:Lcom/scalado/app/rewind/RewindApp$ToUiHandler;

    invoke-virtual {v0, v2}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    invoke-virtual {v0, v2}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->cancel(Z)Z

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->recycle()V

    .line 424
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 425
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "RewindApp"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 218
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 221
    :cond_0
    return-void
.end method

.method public forceStop()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->stopPreview()V

    .line 450
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->close()V

    .line 451
    return-void
.end method

.method getFilename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "prefix"
    .parameter "index"

    .prologue
    .line 573
    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%s%04d.jpg"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/SurfaceView;Landroid/view/SurfaceView;Lcom/scalado/app/rewind/RewindViewer;)V
    .locals 3
    .parameter "context"
    .parameter "activity"
    .parameter "surfaceView"
    .parameter "ltwView"
    .parameter "viewer"

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "RewindApp"

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;

    .line 232
    invoke-direct {p0, p1, p3, p4}, Lcom/scalado/app/rewind/RewindApp;->setupPreviewSurface(Landroid/content/Context;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 235
    const/16 v0, 0x140

    iput v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    .line 236
    const/16 v0, 0xf0

    iput v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    .line 239
    invoke-virtual {p0, p5}, Lcom/scalado/app/rewind/RewindApp;->setViewer(Lcom/scalado/app/rewind/RewindViewer;)V

    .line 240
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->setConfig(Lcom/scalado/app/rewind/RewindViewerConfig;)V

    .line 242
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V

    .line 248
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;

    invoke-direct {v0, p0, v2}, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 249
    return-void
.end method

.method public isRewinding()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    instance-of v0, v0, Lcom/scalado/app/rewind/RewindApp$Rewinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public loadImages()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->startBenchmark()V

    .line 569
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindApp$StartingUpViewer;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 570
    return-void
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-nez v0, :cond_1

    .line 338
    const-string v0, "RewindApp"

    const-string v1, "Error! Current task is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    instance-of v0, v0, Lcom/scalado/app/rewind/RewindApp$Capturing;

    if-nez v0, :cond_2

    .line 342
    const-string v0, "RewindApp"

    const-string v1, "Error! Current task is not a capture task!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    const-string v0, "RewindApp"

    const-string v1, "burst DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Lcom/scalado/app/rewind/RewindApp$Rewinding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/RewindApp$Rewinding;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 346
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    const-string v1, "Merging..."

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_3"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const-string v1, "data_key_4"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v0, "RewindApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewind App onCreate savedInstanceState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 593
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindViewer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 603
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v1, :cond_3

    .line 604
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v1, p1, p2}, Lcom/scalado/app/rewind/RewindApp$State;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 598
    :pswitch_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 612
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/RewindViewer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 623
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    if-eqz v2, :cond_3

    .line 624
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/RewindApp$State;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 628
    goto :goto_0

    .line 617
    :pswitch_0
    iget-boolean v2, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    if-eqz v2, :cond_2

    .line 618
    iput-boolean v1, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPictureTaken([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp;->addJpeg([B)V

    .line 333
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 268
    const-string v0, "RewindApp"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 270
    const-string v1, "data_key_0"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 271
    const-string v1, "data_key_1"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 272
    const-string v1, "data_key_2"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 273
    const-string v1, "data_key_3"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 274
    const-string v1, "data_key_4"

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 276
    :cond_0
    return-void
.end method

.method public onShutterComplete()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    const-string v1, "Merging..."

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 585
    :pswitch_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    .line 464
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mIgnoreNextBackUp:Z

    .line 465
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 409
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->reset()V

    .line 412
    :cond_0
    iput-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 413
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 415
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "RewindApp"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPaused:Z

    .line 471
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->refresh()V

    .line 474
    :cond_0
    return-void
.end method

.method public saveImages()V
    .locals 5

    .prologue
    .line 492
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/SourceManager;->getNumberOfImages()I

    move-result v2

    .line 493
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v3, v1}, Lcom/scalado/app/rewind/SourceManager;->getSourceImage(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 495
    .local v0, bb:Ljava/nio/ByteBuffer;
    const-string v3, "ltw_"

    add-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v0, v3, v4}, Lcom/scalado/app/rewind/RewindApp;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;I)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method public saveRewind(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindViewer;->save(Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method public saveRewind(Ljava/lang/String;III)V
    .locals 1
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindViewer;->save(Ljava/lang/String;III)V

    .line 529
    :cond_0
    return-void
.end method

.method public saveSources(Ljava/lang/String;)V
    .locals 10
    .parameter "base"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->isRewinding()Z

    move-result v4

    if-nez v4, :cond_1

    .line 516
    :cond_0
    return-void

    .line 503
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v4, :cond_2

    .line 504
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/AutoSession;->numSourceJpegs()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d.jpg"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v4, v2, v1}, Lcom/scalado/app/rewind/AutoSession;->saveSourceJpeg(ILjava/lang/String;)V

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager;->getNumberOfImages()I

    move-result v3

    .line 510
    .local v3, size:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d.jpg"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .restart local v1       #filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v4, v2}, Lcom/scalado/app/rewind/SourceManager;->getSourceImage(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 513
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/FileUtils;->save(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    .line 265
    return-void
.end method

.method public setPreviewConfig(III)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "pixelFormat"

    .prologue
    .line 316
    iput p1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I

    .line 317
    iput p2, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I

    .line 318
    invoke-static {p3}, Lcom/scalado/app/rewind/PixelFormat;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    .line 320
    return-void
.end method

.method public setRewindActivityHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;

    .line 665
    return-void
.end method

.method public setViewer(Lcom/scalado/app/rewind/RewindViewer;)V
    .locals 2
    .parameter "viewer"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    .line 285
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    instance-of v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RewindViewerConfig.mMode == REWIND_AUTO, but viewer is not AutoFixViewer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;

    check-cast v0, Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->setAutoReplacer(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp;->startPreview(Z)V

    .line 404
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceCallback:Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 439
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->stopPreview()V

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp;->close()V

    .line 443
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->stopPreview()Z

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z

    .line 434
    return-void
.end method
