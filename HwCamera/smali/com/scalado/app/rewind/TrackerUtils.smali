.class public Lcom/scalado/app/rewind/TrackerUtils;
.super Ljava/lang/Object;
.source "TrackerUtils.java"


# static fields
.field private static final MIN_FACEDETECTION_SIZE:I = 0x258

.field private static final TAG:Ljava/lang/String; = "RectTracker"


# instance fields
.field private mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mConvSession:Lcom/scalado/caps/Session;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFaceSession:Lcom/scalado/caps/Session;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager;)V
    .locals 2
    .parameter "srcMgr"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "srcMgr can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 40
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 41
    return-void
.end method

.method private createConverter()V
    .locals 12

    .prologue
    const/16 v7, 0xff

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 160
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v5, v9}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 161
    .local v0, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 163
    .local v1, dims:Lcom/scalado/base/Size;
    new-instance v5, Lcom/scalado/caps/codec/decoder/ColorDecoder;

    new-instance v6, Lcom/scalado/base/Color;

    invoke-direct {v6, v7, v7, v7, v7}, Lcom/scalado/base/Color;-><init>(IIII)V

    invoke-direct {v5, v6, v1}, Lcom/scalado/caps/codec/decoder/ColorDecoder;-><init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    .line 164
    new-instance v5, Lcom/scalado/caps/Session;

    iget-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    invoke-direct {v5, v6}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    .line 165
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v5}, Lcom/scalado/app/rewind/TrackerUtils;->createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;

    move-result-object v5

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 166
    const-string v5, "RectTracker"

    const-string v6, "Screen dims = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 171
    .local v4, srcSize:Lcom/scalado/base/Size;
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 172
    .local v2, longSide:I
    :goto_0
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 174
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    div-int v3, v5, v6

    .line 175
    .local v3, shortSide:I
    rem-int/lit8 v5, v3, 0x2

    if-lez v5, :cond_0

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 178
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 179
    const-string v5, "RectTracker"

    const-string v6, "Face dims update = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_1
    const-string v5, "RectTracker"

    const-string v6, "Face dims = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 171
    .end local v2           #longSide:I
    .end local v3           #shortSide:I
    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    goto :goto_0

    .line 185
    .restart local v2       #longSide:I
    :cond_2
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    div-int v3, v5, v6

    .line 186
    .restart local v3       #shortSide:I
    rem-int/lit8 v5, v3, 0x2

    if-lez v5, :cond_3

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    :cond_3
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 189
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 190
    const-string v5, "RectTracker"

    const-string v6, "Face dims update = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createSuitableFaceDetectionDim()V
    .locals 8

    .prologue
    const/high16 v7, 0x4416

    const/16 v6, 0x258

    .line 129
    iget-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    .line 130
    .local v1, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 131
    .local v2, imageSize:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 133
    .local v0, aspectRatio:F
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 135
    .local v3, minSide:I
    if-gt v3, v6, :cond_0

    .line 136
    iput-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 138
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v5, v6}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0

    .line 142
    :cond_1
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v6, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0
.end method

.method private needConversion()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    .line 117
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 118
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 119
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 120
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 122
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 126
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public createDecoder(Ljava/nio/ByteBuffer;I)Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .locals 9
    .parameter "srcJpeg"
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 56
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, p1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 57
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v5, Lcom/scalado/stream/BufferStream;

    invoke-direct {v5, v1, v6}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 58
    .local v5, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v5}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 59
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    .line 61
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F

    .line 62
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v2

    .line 66
    :goto_0
    return-object v6

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "RectTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when creating decoder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;
    .locals 3
    .parameter "session"

    .prologue
    .line 71
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 72
    .local v0, img:Lcom/scalado/base/Image;
    new-instance v1, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v1, p1, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    return-object v1
.end method

.method public getFaceDetectionDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getFaceTrackingImage(I)Lcom/scalado/base/Image;
    .locals 15
    .parameter "index"

    .prologue
    .line 76
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 79
    :cond_0
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v4

    .line 111
    :cond_1
    :goto_0
    return-object v4

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->needConversion()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v10, :cond_3

    .line 82
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createConverter()V

    .line 84
    :cond_3
    const-string v10, "RectTracker"

    const-string v11, "Scaling %d (to %dx%d)"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v14}, Lcom/scalado/base/Size;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/scalado/app/rewind/SourceManager;->getSourceImage(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 87
    .local v8, srcJpeg:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v8}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 88
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v9, Lcom/scalado/stream/BufferStream;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 89
    .local v9, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v9}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 90
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    .line 92
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v5, v10}, Lcom/scalado/base/Iterator;->step(I)F

    .line 93
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v2, v0

    .line 94
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 95
    .local v7, session:Lcom/scalado/caps/Session;
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v10, :cond_4

    .line 96
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 99
    :cond_4
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    sget-object v11, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    invoke-direct {v4, v10, v11}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 100
    .local v4, image:Lcom/scalado/base/Image;
    new-instance v6, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v6, v7, v4}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 101
    .local v6, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v6}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 102
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    if-nez v10, :cond_5

    .line 103
    iput-object v7, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    .line 105
    :cond_5
    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v10, :cond_1

    .line 106
    iput-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 109
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v6           #screen:Lcom/scalado/caps/screen/Screen;
    .end local v7           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v3

    .line 110
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "RectTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception when scaling image "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "dims"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 49
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 44
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    .line 45
    return-void
.end method
