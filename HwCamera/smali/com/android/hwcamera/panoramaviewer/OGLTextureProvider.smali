.class public Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;
.super Ljava/lang/Object;
.source "OGLTextureProvider.java"


# static fields
.field private static final RBG_565_BYTE_SIZE:I = 0x2


# instance fields
.field private autoramaImage:Landroid/graphics/Bitmap;

.field final colorMode:Lcom/scalado/base/Image$Config;

.field private currBuffer:I

.field public estimateBottomColor:J

.field public estimateLeftColor:J

.field public estimateRightColor:J

.field public estimateTopColor:J

.field private imageHeight:I

.field private imageWidth:I

.field private mBitmapBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCropFilter:Lcom/scalado/caps/filter/Crop;

.field private mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

.field private mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

.field private mImage:Lcom/scalado/base/Image;

.field private mInStream:Lcom/scalado/stream/FileStream;

.field private mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

.field private mSession:Lcom/scalado/caps/Session;

.field private mSize:Lcom/scalado/base/Size;

.field private mTextureBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(ILcom/scalado/stream/BufferStream;)V
    .locals 6
    .parameter "segments"
    .parameter "bufferStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 31
    iput v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 33
    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    .line 52
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    .line 54
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    .line 55
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    .line 57
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    .line 61
    iput-wide v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateBottomColor:J

    .line 62
    iput-wide v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateLeftColor:J

    .line 63
    iput-wide v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    .line 64
    iput-wide v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateRightColor:J

    .line 66
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 67
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 68
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 69
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 70
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 71
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 72
    iput v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 73
    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    .line 99
    invoke-static {p2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 100
    .local v0, decoderIterator:Lcom/scalado/base/Iterator;
    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->createOGLTextureProvider(Lcom/scalado/base/Iterator;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .parameter "segments"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 31
    iput v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 33
    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    .line 52
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    .line 54
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    .line 55
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    .line 57
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    .line 61
    iput-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateBottomColor:J

    .line 62
    iput-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateLeftColor:J

    .line 63
    iput-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    .line 64
    iput-wide v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateRightColor:J

    .line 66
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 67
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 68
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 69
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 70
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 71
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 72
    iput v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 73
    iput-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    .line 82
    :try_start_0
    new-instance v2, Lcom/scalado/stream/FileStream;

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v2, p2, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    iput-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    invoke-static {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 90
    .local v0, decoderIterator:Lcom/scalado/base/Iterator;
    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->createOGLTextureProvider(Lcom/scalado/base/Iterator;I)V

    .line 92
    return-void

    .line 84
    .end local v0           #decoderIterator:Lcom/scalado/base/Iterator;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create filestream for file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 17
    .parameter "segments"
    .parameter "filePath"
    .parameter "useCaps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 31
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 33
    sget-object v13, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    .line 52
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    .line 54
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    .line 55
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    .line 57
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    .line 61
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateBottomColor:J

    .line 62
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateLeftColor:J

    .line 63
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    .line 64
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateRightColor:J

    .line 66
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 67
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 68
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 69
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 70
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 71
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 72
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 73
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v14, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 138
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_0

    .line 143
    :try_start_0
    new-instance v7, Lcom/scalado/stream/FileStream;

    sget-object v13, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v13}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v7, inStream:Lcom/scalado/stream/FileStream;
    invoke-static {v7}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v2

    .line 153
    .local v2, decoderIterator:Lcom/scalado/base/Iterator;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v2, v13}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    invoke-virtual {v2}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 161
    .local v1, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    sget-object v13, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->SPEED:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    invoke-virtual {v1, v13}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setDecodeMode(Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;)V

    .line 162
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setPrefetchEnabled(Z)V

    .line 164
    new-instance v10, Lcom/scalado/caps/Session;

    invoke-direct {v10, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 166
    .local v10, session:Lcom/scalado/caps/Session;
    invoke-virtual {v10}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v13

    invoke-virtual {v13}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v11

    .line 167
    .local v11, size:Lcom/scalado/base/Size;
    invoke-virtual {v11}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    .line 168
    .local v12, width:I
    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    .line 170
    .local v4, height:I
    new-instance v5, Lcom/scalado/base/Image;

    sget-object v13, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v5, v11, v13}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 172
    .local v5, image:Lcom/scalado/base/Image;
    new-instance v9, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v9, v10, v5}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 173
    .local v9, screen:Lcom/scalado/caps/screen/Screen;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/scalado/caps/screen/Screen;->setDitheringEnabled(Z)V

    .line 174
    sget-object v13, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    invoke-virtual {v9, v13}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 176
    invoke-virtual {v9}, Lcom/scalado/caps/screen/Screen;->preview()Lcom/scalado/base/Iterator;

    move-result-object v8

    .line 179
    .local v8, iterator:Lcom/scalado/base/Iterator;
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v8, v13}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    iget-object v13, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v4, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/16 v15, 0x400

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    .line 189
    invoke-virtual {v7}, Lcom/scalado/stream/FileStream;->close()V

    .line 208
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v2           #decoderIterator:Lcom/scalado/base/Iterator;
    .end local v4           #height:I
    .end local v5           #image:Lcom/scalado/base/Image;
    .end local v7           #inStream:Lcom/scalado/stream/FileStream;
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    .end local v9           #screen:Lcom/scalado/caps/screen/Screen;
    .end local v10           #session:Lcom/scalado/caps/Session;
    .end local v11           #size:Lcom/scalado/base/Size;
    .end local v12           #width:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->setImageWidth(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->setImageHeight(I)V

    .line 211
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 212
    .local v6, imageSize:Landroid/graphics/Rect;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateBottomColor:J

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    div-int/lit8 v15, v15, 0x2

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateLeftColor:J

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    div-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    .line 218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    div-int/lit8 v15, v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->estimateRightColor:J

    .line 219
    return-void

    .line 145
    .end local v6           #imageSize:Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 147
    .local v3, e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not create filestream for file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #decoderIterator:Lcom/scalado/base/Iterator;
    .restart local v7       #inStream:Lcom/scalado/stream/FileStream;
    :catch_1
    move-exception v3

    .line 157
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Could not create decoder for stream."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 181
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .restart local v4       #height:I
    .restart local v5       #image:Lcom/scalado/base/Image;
    .restart local v8       #iterator:Lcom/scalado/base/Iterator;
    .restart local v9       #screen:Lcom/scalado/caps/screen/Screen;
    .restart local v10       #session:Lcom/scalado/caps/Session;
    .restart local v11       #size:Lcom/scalado/base/Size;
    .restart local v12       #width:I
    :catch_2
    move-exception v3

    .line 183
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not decode file, iterator exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 194
    .end local v1           #decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    .end local v2           #decoderIterator:Lcom/scalado/base/Iterator;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #height:I
    .end local v5           #image:Lcom/scalado/base/Image;
    .end local v7           #inStream:Lcom/scalado/stream/FileStream;
    .end local v8           #iterator:Lcom/scalado/base/Iterator;
    .end local v9           #screen:Lcom/scalado/caps/screen/Screen;
    .end local v10           #session:Lcom/scalado/caps/Session;
    .end local v11           #size:Lcom/scalado/base/Size;
    .end local v12           #width:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v14, 0x1

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    if-nez v13, :cond_1

    .line 201
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not decode file, autoramaImage null "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/16 v15, 0x400

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private createOGLTextureProvider(Lcom/scalado/base/Iterator;I)V
    .locals 5
    .parameter "decoderIterator"
    .parameter "segments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 109
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {p1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 117
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    sget-object v2, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->SPEED:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setDecodeMode(Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;)V

    .line 118
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v1, v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setPrefetchEnabled(Z)V

    .line 119
    new-instance v1, Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 120
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 121
    new-instance v1, Lcom/scalado/base/Image;

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, v4, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 122
    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v1, v2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 124
    new-instance v1, Lcom/scalado/caps/filter/Crop;

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v1, v2}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    iput-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 126
    const-string v1, "OGLTextureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSize.getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSize.getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "OGLTextureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImage.getDimensions().getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImage.getDimensions().getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->setImageWidth(I)V

    .line 130
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->setImageHeight(I)V

    .line 131
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create decoder for stream. decoderIterator exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static floorToPow2(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, b:I
    const/4 v2, 0x0

    .line 453
    .local v2, mask:I
    if-eqz p0, :cond_0

    if-gez p0, :cond_1

    .line 454
    :cond_0
    const/4 v3, 0x0

    .line 469
    :goto_0
    return v3

    .line 456
    :cond_1
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_3

    .line 457
    move v0, p0

    :cond_2
    move v3, v0

    .line 469
    goto :goto_0

    .line 460
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v3, 0x20

    if-ge v1, v3, :cond_2

    .line 461
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int v2, p0, v3

    .line 462
    if-eqz v2, :cond_4

    .line 464
    move v0, v2

    .line 460
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getBitmapBuffer(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "index"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 383
    :cond_0
    const-string v0, "OGLTextureProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapBuffer(): buffer with index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private releaseAllBitmapBuffers()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 420
    :cond_1
    return-void
.end method

.method private releaseBitmapBuffer(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    if-ltz p1, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 413
    :cond_1
    return-void
.end method

.method public static roundToPow2(I)I
    .locals 4
    .parameter "x"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, b:I
    const/4 v2, 0x0

    .line 427
    .local v2, mask:I
    if-eqz p0, :cond_0

    if-gez p0, :cond_1

    .line 428
    :cond_0
    const/4 v3, 0x0

    .line 445
    :goto_0
    return v3

    .line 430
    :cond_1
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_2

    .line 431
    move v0, p0

    :goto_1
    move v3, v0

    .line 445
    goto :goto_0

    .line 434
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v3, 0x20

    if-ge v1, v3, :cond_4

    .line 435
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int v2, p0, v3

    .line 436
    if-eqz v2, :cond_3

    .line 438
    move v0, v2

    .line 434
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 442
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setImageHeight(I)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 49
    return-void
.end method

.method private setImageWidth(I)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 45
    return-void
.end method


# virtual methods
.method public createNextPanoramaBuffer()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 244
    const/4 v3, 0x0

    .line 246
    .local v3, result:Z
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    if-ge v4, v5, :cond_2

    .line 247
    new-instance v2, Lcom/scalado/base/Rect;

    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    iget-object v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-direct {v2, v4, v7, v5, v6}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 251
    .local v2, region:Lcom/scalado/base/Rect;
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4}, Lcom/scalado/caps/filter/Crop;->isSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/Session;->removeLastFilter()V

    .line 253
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 254
    new-instance v4, Lcom/scalado/caps/filter/Crop;

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v4, v5}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 258
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4, v2}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 260
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4}, Lcom/scalado/caps/filter/Crop;->commit()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-virtual {v4, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 268
    .local v1, iterator:Lcom/scalado/base/Iterator;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    .end local v1           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    iget v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 276
    const/4 v3, 0x1

    .line 279
    .end local v2           #region:Lcom/scalado/base/Rect;
    :cond_2
    return v3

    .line 262
    .restart local v2       #region:Lcom/scalado/base/Rect;
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "OGLTextureProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not commit Crop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "OGLTextureProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not produce buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dividePanoramaImage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 295
    iget v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 296
    .local v2, height:I
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v1, v8, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    .line 298
    .local v1, bufferCount:I
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    .line 301
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget-boolean v8, v8, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    if-eqz v8, :cond_0

    .line 302
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 303
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v9, v9, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    mul-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v10, v10, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    invoke-static {v8, v9, v11, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v8, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #i:I
    :cond_0
    const/4 v3, 0x0

    .line 311
    .restart local v3       #i:I
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-ge v3, v8, :cond_1

    .line 312
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v9, v9, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    mul-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v10, v10, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    invoke-static {v8, v9, v11, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v8, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 316
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v8, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    .line 318
    .local v5, residue:I
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v8, v8, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v9, v9, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    iget-object v10, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    iget-object v10, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v9, v9, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    mul-int/2addr v9, v3

    invoke-static {v8, v9, v11, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 323
    .local v4, imageToMerge:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 324
    const/4 v7, 0x0

    .local v7, y:I
    :goto_3
    if-ge v7, v2, :cond_2

    .line 325
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 324
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 323
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 329
    .end local v7           #y:I
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v8, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 334
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #imageToMerge:Landroid/graphics/Bitmap;
    .end local v5           #residue:I
    .end local v6           #x:I
    :cond_4
    iget-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->autoramaImage:Landroid/graphics/Bitmap;

    .line 336
    return-void
.end method

.method public dumpBufferToFile(Ljava/lang/String;)V
    .locals 8
    .parameter "file"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    const-string p1, "/sdcard/panorama/dumpbuffer.jpg"

    .line 478
    :cond_0
    const/4 v2, 0x0

    .line 480
    .local v2, inStream:Lcom/scalado/stream/FileStream;
    :try_start_0
    new-instance v3, Lcom/scalado/stream/FileStream;

    sget-object v5, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v3, p1, v5}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .local v3, inStream:Lcom/scalado/stream/FileStream;
    :try_start_1
    new-instance v1, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    new-instance v5, Lcom/scalado/base/Size;

    const/16 v6, 0x400

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v1, v3, v5}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 482
    .local v1, encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v5, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 483
    .local v4, iterator:Lcom/scalado/base/Iterator;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 490
    if-eqz v3, :cond_3

    .line 492
    :try_start_2
    invoke-virtual {v3}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 496
    .end local v1           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v3           #inStream:Lcom/scalado/stream/FileStream;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    .restart local v2       #inStream:Lcom/scalado/stream/FileStream;
    :cond_1
    :goto_0
    return-void

    .line 493
    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v3       #inStream:Lcom/scalado/stream/FileStream;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #inStream:Lcom/scalado/stream/FileStream;
    goto :goto_0

    .line 485
    .end local v1           #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #iterator:Lcom/scalado/base/Iterator;
    :catch_1
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "OGLTextureProvider"

    const-string v6, "Could not write file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    if-eqz v2, :cond_1

    .line 492
    :try_start_4
    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 493
    :catch_2
    move-exception v5

    goto :goto_0

    .line 490
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    .line 492
    :try_start_5
    invoke-virtual {v2}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 493
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 490
    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v3       #inStream:Lcom/scalado/stream/FileStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #inStream:Lcom/scalado/stream/FileStream;
    goto :goto_2

    .line 485
    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v3       #inStream:Lcom/scalado/stream/FileStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #inStream:Lcom/scalado/stream/FileStream;
    goto :goto_1

    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #encoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .restart local v3       #inStream:Lcom/scalado/stream/FileStream;
    .restart local v4       #iterator:Lcom/scalado/base/Iterator;
    :cond_3
    move-object v2, v3

    .end local v3           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v2       #inStream:Lcom/scalado/stream/FileStream;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getBuffersFitToTextures()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 342
    .local v1, bufferCount:I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    .line 344
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 346
    invoke-direct {p0, v2}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->getBitmapBuffer(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 350
    const-string v4, "OGLTextureProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v4, 0x0

    .line 366
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 354
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v4, v4, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    iget-object v5, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/android/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 355
    .local v3, tempBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 357
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 358
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 359
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    invoke-virtual {v4, v2, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 360
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #tempBuffer:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->releaseAllBitmapBuffers()V

    .line 366
    iget-object v4, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    goto :goto_1
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    return v0
.end method

.method public getPanoramaData()Lcom/android/hwcamera/panoramaviewer/PanoramaData;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    return-object v0
.end method

.method public getSingleBufferFitToTexture()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "OGLRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleBufferFitToTexture(): length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseTextureBuffers()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 374
    :cond_1
    return-void
.end method

.method public resetBufferCount()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 239
    return-void
.end method

.method public setPanoramaData(Lcom/android/hwcamera/panoramaviewer/PanoramaData;)V
    .locals 0
    .parameter "pd"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/android/hwcamera/panoramaviewer/PanoramaData;

    .line 228
    return-void
.end method
