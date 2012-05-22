.class public Lcom/android/hwcamera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ImageManager$1;,
        Lcom/android/hwcamera/ImageManager$EmptyImageList;,
        Lcom/android/hwcamera/ImageManager$DataLocation;,
        Lcom/android/hwcamera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final HAS_INTERNAL_STORAGE:Z = false

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final INTERNAL_SD_DIR:Ljava/lang/String; = null

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/hwcamera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 133
    new-instance v0, Ljava/io/File;

    const-string v1, "/HWUserData"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/HWUserData"

    :goto_0
    sput-object v0, Lcom/android/hwcamera/ImageManager;->INTERNAL_SD_DIR:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/hwcamera/ImageManager;->INTERNAL_SD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/hwcamera/ImageManager;->INTERNAL_SD_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/ImageManager;->HAS_INTERNAL_STORAGE:Z

    return-void

    .line 133
    :cond_0
    const-string v0, "/data/HWUserData"

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 14
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 168
    :try_start_1
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v11, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, p9, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 181
    :goto_0
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 187
    .local v8, size:J
    new-instance v10, Landroid/content/ContentValues;

    const/16 v11, 0x9

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 188
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual {v10, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v11, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v11, "datetaken"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v11, "mime_type"

    const-string v12, "image/jpeg"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v11, "orientation"

    const/4 v12, 0x0

    aget v12, p9, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v11, "_data"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v11, "_size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    if-eqz p4, :cond_1

    .line 201
    const-string v11, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 202
    const-string v11, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 205
    :cond_1
    sget-object v11, Lcom/android/hwcamera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local v8           #size:J
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object v11

    .line 171
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    const/4 v11, 0x0

    invoke-static {v5}, Lcom/android/hwcamera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v12

    aput v12, p9, v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 175
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v11, "ImageManager"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    const/4 v11, 0x0

    .line 181
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 177
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v11, "ImageManager"

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    const/4 v11, 0x0

    .line 181
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 177
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 174
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, degree:I
    const/4 v2, 0x0

    .line 212
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 216
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 217
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 219
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 221
    packed-switch v4, :pswitch_data_0

    .line 235
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 224
    goto :goto_1

    .line 226
    :pswitch_2
    const/16 v0, 0xb4

    .line 227
    goto :goto_1

    .line 229
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/android/hwcamera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/hwcamera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 308
    new-instance v0, Lcom/android/hwcamera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/hwcamera/ImageManager$ImageListParam;-><init>()V

    .line 309
    .local v0, param:Lcom/android/hwcamera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/android/hwcamera/ImageManager$ImageListParam;->mLocation:Lcom/android/hwcamera/ImageManager$DataLocation;

    .line 310
    iput p1, v0, Lcom/android/hwcamera/ImageManager$ImageListParam;->mInclusion:I

    .line 311
    iput p2, v0, Lcom/android/hwcamera/ImageManager$ImageListParam;->mSort:I

    .line 312
    iput-object p3, v0, Lcom/android/hwcamera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 313
    return-object v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/hwcamera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 344
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 348
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    return v7
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/android/hwcamera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/hwcamera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 318
    invoke-static {p1, p2, p3, p4}, Lcom/android/hwcamera/ImageManager;->getImageListParam(Lcom/android/hwcamera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/hwcamera/ImageManager$ImageListParam;

    move-result-object v0

    .line 320
    .local v0, param:Lcom/android/hwcamera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/android/hwcamera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/android/hwcamera/ImageManager$ImageListParam;)Lcom/android/hwcamera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/android/hwcamera/ImageManager$ImageListParam;)Lcom/android/hwcamera/gallery/IImageList;
    .locals 14
    .parameter "cr"
    .parameter "param"

    .prologue
    const/4 v13, 0x0

    .line 241
    iget-object v7, p1, Lcom/android/hwcamera/ImageManager$ImageListParam;->mLocation:Lcom/android/hwcamera/ImageManager$DataLocation;

    .line 242
    .local v7, location:Lcom/android/hwcamera/ImageManager$DataLocation;
    iget v2, p1, Lcom/android/hwcamera/ImageManager$ImageListParam;->mInclusion:I

    .line 243
    .local v2, inclusion:I
    iget v8, p1, Lcom/android/hwcamera/ImageManager$ImageListParam;->mSort:I

    .line 244
    .local v8, sort:I
    iget-object v0, p1, Lcom/android/hwcamera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 245
    .local v0, bucketId:Ljava/lang/String;
    iget-boolean v3, p1, Lcom/android/hwcamera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 247
    .local v3, isEmptyImageList:Z
    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 248
    :cond_0
    new-instance v6, Lcom/android/hwcamera/ImageManager$EmptyImageList;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/android/hwcamera/ImageManager$EmptyImageList;-><init>(Lcom/android/hwcamera/ImageManager$1;)V

    .line 290
    :goto_0
    return-object v6

    .line 252
    :cond_1
    invoke-static {v13}, Lcom/android/hwcamera/Storage;->hasStorage(Z)Z

    move-result v1

    .line 255
    .local v1, haveSdCard:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v5, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/hwcamera/gallery/BaseImageList;>;"
    if-eqz v1, :cond_3

    sget-object v11, Lcom/android/hwcamera/ImageManager$DataLocation;->INTERNAL:Lcom/android/hwcamera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_3

    .line 258
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_2

    .line 259
    new-instance v11, Lcom/android/hwcamera/gallery/ImageList;

    sget-object v12, Lcom/android/hwcamera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/hwcamera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    and-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_3

    .line 262
    new-instance v11, Lcom/android/hwcamera/gallery/VideoList;

    sget-object v12, Lcom/android/hwcamera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/hwcamera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_3
    sget-object v11, Lcom/android/hwcamera/ImageManager$DataLocation;->INTERNAL:Lcom/android/hwcamera/ImageManager$DataLocation;

    if-eq v7, v11, :cond_4

    sget-object v11, Lcom/android/hwcamera/ImageManager$DataLocation;->ALL:Lcom/android/hwcamera/ImageManager$DataLocation;

    if-ne v7, v11, :cond_5

    .line 266
    :cond_4
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_5

    .line 267
    new-instance v11, Lcom/android/hwcamera/gallery/ImageList;

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v11, p0, v12, v8, v0}, Lcom/android/hwcamera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 275
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/gallery/BaseImageList;>;"
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 276
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/hwcamera/gallery/BaseImageList;

    .line 277
    .local v9, sublist:Lcom/android/hwcamera/gallery/BaseImageList;
    invoke-virtual {v9}, Lcom/android/hwcamera/gallery/BaseImageList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 278
    invoke-virtual {v9}, Lcom/android/hwcamera/gallery/BaseImageList;->close()V

    .line 279
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 283
    .end local v9           #sublist:Lcom/android/hwcamera/gallery/BaseImageList;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 284
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hwcamera/gallery/BaseImageList;

    .line 285
    .local v6, list:Lcom/android/hwcamera/gallery/BaseImageList;
    goto :goto_0

    .line 288
    .end local v6           #list:Lcom/android/hwcamera/gallery/BaseImageList;
    :cond_8
    new-instance v10, Lcom/android/hwcamera/gallery/ImageListUber;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/hwcamera/gallery/IImageList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/hwcamera/gallery/IImageList;

    invoke-direct {v10, v11, v8}, Lcom/android/hwcamera/gallery/ImageListUber;-><init>([Lcom/android/hwcamera/gallery/IImageList;I)V

    .local v10, uber:Lcom/android/hwcamera/gallery/ImageListUber;
    move-object v6, v10

    .line 290
    goto :goto_0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 327
    if-nez p0, :cond_0

    .line 333
    :goto_0
    return-object v1

    .line 330
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
