.class public Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;
.super Landroid/app/Activity;
.source "PanoramaViewer.java"


# static fields
.field private static final PROGRESSBAR_INVISIBLE_MSG:I = 0x1

.field private static final PROGRESSBAR_VISIBLE_MSG:I = 0x0

.field private static final REVIEW_DELAY_MSG:I = 0xe

.field private static final REVIEW_SWITCH_MSG:I = 0x10


# instance fields
.field private defImgBtn:Landroid/widget/ImageView;

.field private defImgLayout:Landroid/widget/RelativeLayout;

.field glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

.field glviewDef:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

.field imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

.field logid:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReview:Lcom/android/hwcamera/hwui/Review;

.field private mRotateProgress:Lcom/android/hwcamera/hwui/RotateProgress;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private messageHandlerCircle:Landroid/os/Handler;

.field private modeFlat:Z

.field private modeSwitchBtn:Landroid/widget/ImageView;

.field modeSwitchClickListener:Landroid/view/View$OnClickListener;

.field modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

.field panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

.field private progressSpinner:Landroid/view/View;

.field xClick:F

.field yClick:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->logid:I

    .line 43
    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 44
    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glviewDef:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 59
    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 60
    iput-boolean v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    .line 62
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    invoke-direct {v0}, Lcom/android/hwcamera/panoramaviewer/ImageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    .line 67
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$1;-><init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$2;-><init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

    .line 109
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$3;-><init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Lcom/android/hwcamera/hwui/Review;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x400

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v12}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->requestWindowFeature(I)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 172
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 173
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "uri"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .local v4, pathparece:Landroid/os/Parcelable;
    move-object v3, v4

    .line 174
    check-cast v3, Landroid/net/Uri;

    .line 176
    .local v3, pathUri:Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 177
    const-string v8, "INTENT_TEST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receiver launched.:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_0
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const-string v9, "imgPath"

    invoke-virtual {v6, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    .line 180
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iget-object v8, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iget-object v8, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 181
    :cond_0
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 182
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    const-string v8, "PanoramaActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image Path :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iget-object v10, v10, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nAngle Of View :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iget v10, v10, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nFocal Length :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iget v10, v10, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->focalLength:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :try_start_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 205
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 207
    .local v7, view:Landroid/view/View;
    const v8, 0x7f080051

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    .line 209
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setLayout(Landroid/view/View;)V

    .line 210
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v8}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setContentView(Landroid/view/View;)V

    .line 211
    new-instance v8, Lcom/android/hwcamera/hwui/Review;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/hwcamera/hwui/Review;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    .line 212
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v8}, Lcom/android/hwcamera/hwui/Review;->initReview()V

    .line 213
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v8, v3}, Lcom/android/hwcamera/hwui/Review;->setUri(Landroid/net/Uri;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    invoke-virtual {p0, v8, v9}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setPanoramaData(Landroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V

    .line 217
    const v8, 0x7f080052

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    iput-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    .line 218
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget-object v9, v9, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setWorld(Lcom/android/hwcamera/panoramaviewer/OGLWorld;)V

    .line 219
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v8}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->requestFocus()Z

    .line 220
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 221
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->setHandler(Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #view:Landroid/view/View;
    :goto_1
    return-void

    .line 184
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const-string v9, "FOV"

    invoke-virtual {v6, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    .line 185
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const-string v9, "FL"

    invoke-virtual {v6, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->setFocalLength(F)V

    .line 186
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 187
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v12, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 191
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v11, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v12, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    .line 196
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->imageInfo:Lcom/android/hwcamera/panoramaviewer/ImageInfo;

    iput-boolean v11, v8, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: Could not init textureProvider: Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, errorMessage:Ljava/lang/String;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 226
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const-string v8, "PanoramaActivity"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->onPause()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setProgressBarInvisible()V

    .line 329
    invoke-virtual {p0, v2, v2}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->overridePendingTransition(II)V

    .line 330
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->dismissReview()V

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->finish()V

    .line 334
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 312
    const-string v0, "PanoramaActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/MyGLSurfaceView;->onResume()V

    .line 318
    :cond_0
    return-void
.end method

.method setLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 233
    const v0, 0x7f080026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0d000c

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 261
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 262
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f030012

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 264
    return-void
.end method

.method setPanoramaData(Landroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 3
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPanoramaData inputAngle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    invoke-direct {v0, p1, p2}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;-><init>(Landroid/content/res/Resources;Lcom/android/hwcamera/panoramaviewer/ImageInfo;)V

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    .line 280
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/android/hwcamera/panoramaviewer/OGLWorld;

    iget-object v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;

    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->setPanoramaData(Lcom/android/hwcamera/panoramaviewer/PanoramaData;)V

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->setIntroInfo(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 285
    new-instance v0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;-><init>(Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer$4;->start()V

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->setProgressBarInvisible()V

    .line 304
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mReview:Lcom/android/hwcamera/hwui/Review;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/Review;->showReviewButtons()V

    goto :goto_0
.end method

.method setProgressBarInvisible()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/panoramaviewer/PanoramaViewer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 273
    :cond_0
    return-void
.end method
