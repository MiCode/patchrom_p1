.class public Lcom/android/hwcamera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static final BUFSIZE:I = 0x1000

.field public static final LAST_IMAGE_THUMB:Ljava/lang/String; = "last_image_thumb"

.field public static final LAST_THUMB_FILENAME:Ljava/lang/String; = "last_thumb"

.field public static final LAST_VIDEO_THUMB:Ljava/lang/String; = "last_video_thumb"

.field private static final TAG:Ljava/lang/String; = "Thumbnail"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Thumbnail;->mFromFile:Z

    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 59
    invoke-static {p2, p3}, Lcom/android/hwcamera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method private static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;
    .locals 4
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v2, "Thumbnail"

    const-string v3, "Failed to create thumbnail from null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-object v1

    .line 303
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/hwcamera/Thumbnail;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/hwcamera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Thumbnail"

    const-string v3, "Failed to construct thumbnail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 248
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 250
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1}, Lcom/android/hwcamera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 266
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 271
    :goto_0
    const-wide/16 v7, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 278
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 283
    :goto_1
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 294
    :goto_2
    return-object v7

    .line 269
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 272
    :catch_0
    move-exception v7

    .line 278
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 279
    :catch_1
    move-exception v7

    goto :goto_1

    .line 274
    :catch_2
    move-exception v7

    .line 278
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 279
    :catch_3
    move-exception v7

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v7

    .line 278
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 281
    :goto_3
    throw v7

    .line 286
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 287
    .local v6, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 288
    .local v2, height:I
    if-le v6, p2, :cond_2

    .line 289
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 290
    .local v4, scale:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 291
    .local v5, w:I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 292
    .local v1, h:I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v4           #scale:F
    .end local v5           #w:I
    :cond_2
    move-object v7, v0

    .line 294
    goto :goto_2

    .line 279
    .end local v2           #height:I
    .end local v6           #width:I
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 196
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "orientation"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 199
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 203
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 205
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 206
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 208
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/hwcamera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-eqz v14, :cond_0

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 212
    :cond_1
    if-eqz v14, :cond_0

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_2

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLastThumbnail(Landroid/content/ContentResolver;Z)Lcom/android/hwcamera/Thumbnail;
    .locals 8
    .parameter "resolver"
    .parameter "isCameraState"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_2

    .line 154
    invoke-static {p0}, Lcom/android/hwcamera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;

    move-result-object v1

    .line 155
    .local v1, image:Lcom/android/hwcamera/Thumbnail$Media;
    if-nez v1, :cond_1

    .line 176
    .end local v1           #image:Lcom/android/hwcamera/Thumbnail$Media;
    :cond_0
    :goto_0
    return-object v4

    .line 158
    .restart local v1       #image:Lcom/android/hwcamera/Thumbnail$Media;
    :cond_1
    iget-wide v5, v1, Lcom/android/hwcamera/Thumbnail$Media;->id:J

    invoke-static {p0, v5, v6, v7, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    move-object v2, v1

    .line 173
    .end local v1           #image:Lcom/android/hwcamera/Thumbnail$Media;
    .local v2, lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    :goto_1
    iget-object v5, v2, Lcom/android/hwcamera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v5, p0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    iget-object v4, v2, Lcom/android/hwcamera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v5, v2, Lcom/android/hwcamera/Thumbnail$Media;->orientation:I

    invoke-static {v4, v0, v5}, Lcom/android/hwcamera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;

    move-result-object v4

    goto :goto_0

    .line 163
    .end local v2           #lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    :cond_2
    invoke-static {p0}, Lcom/android/hwcamera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;

    move-result-object v3

    .line 164
    .local v3, video:Lcom/android/hwcamera/Thumbnail$Media;
    if-eqz v3, :cond_0

    .line 167
    iget-wide v5, v3, Lcom/android/hwcamera/Thumbnail$Media;->id:J

    invoke-static {p0, v5, v6, v7, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    move-object v2, v3

    .restart local v2       #lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    goto :goto_1
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 220
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 222
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_data"

    aput-object v0, v2, v11

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 225
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 228
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 230
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 231
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 234
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/android/hwcamera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v14, :cond_0

    .line 239
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 238
    :cond_1
    if-eqz v14, :cond_0

    .line 239
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_2

    .line 239
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static loadFrom(Ljava/io/File;)Lcom/android/hwcamera/Thumbnail;
    .locals 13
    .parameter "file"

    .prologue
    .line 124
    const/4 v9, 0x0

    .line 125
    .local v9, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 126
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 127
    .local v6, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 128
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 130
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v6           #f:Ljava/io/FileInputStream;
    .local v7, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v10, 0x1000

    invoke-direct {v1, v7, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    .end local v3           #d:Ljava/io/DataInputStream;
    .local v4, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 134
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v4}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 144
    const/4 v10, 0x0

    invoke-static {v9, v2, v10}, Lcom/android/hwcamera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;

    move-result-object v8

    .line 145
    .local v8, thumbnail:Lcom/android/hwcamera/Thumbnail;
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/hwcamera/Thumbnail;->setFromFile(Z)V

    :cond_0
    move-object v3, v4

    .end local v4           #d:Ljava/io/DataInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 146
    .end local v7           #f:Ljava/io/FileInputStream;
    .end local v8           #thumbnail:Lcom/android/hwcamera/Thumbnail;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :goto_0
    return-object v8

    .line 136
    :catch_0
    move-exception v5

    .line 137
    .local v5, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v10, "Thumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to load bitmap. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    const/4 v8, 0x0

    .line 140
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v3}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 140
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 141
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v3}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 140
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v3           #d:Ljava/io/DataInputStream;
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v3, v4

    .end local v4           #d:Ljava/io/DataInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 136
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v3           #d:Ljava/io/DataInputStream;
    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4           #d:Ljava/io/DataInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 80
    if-eqz p1, :cond_1

    .line 82
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 91
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 93
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 94
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/hwcamera/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveTo(Ljava/io/File;)V
    .locals 10
    .parameter "file"

    .prologue
    .line 102
    const/4 v5, 0x0

    .line 103
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 104
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 106
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/hwcamera/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 110
    iget-object v7, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5a

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 115
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v3}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 119
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v4

    .line 113
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v7, "Thumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fail to store bitmap. path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 115
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 115
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 112
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setFromFile(Z)V
    .locals 0
    .parameter "fromFile"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/hwcamera/Thumbnail;->mFromFile:Z

    .line 73
    return-void
.end method
