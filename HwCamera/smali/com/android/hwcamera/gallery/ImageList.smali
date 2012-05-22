.class public Lcom/android/hwcamera/gallery/ImageList;
.super Lcom/android/hwcamera/gallery/BaseImageList;
.source "ImageList.java"

# interfaces
.implements Lcom/android/hwcamera/gallery/IImageList;


# static fields
.field private static final ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String; = null

.field static final IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final INDEX_DATE_MODIFIED:I = 0x4

.field private static final INDEX_DATE_TAKEN:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MINI_THUMB_MAGIC:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ImageList"

.field private static final WHERE_CLAUSE:Ljava/lang/String; = "(mime_type in (?, ?, ?, ?))"

.field private static final WHERE_CLAUSE_WITH_BUCKET_ID:Ljava/lang/String; = "(mime_type in (?, ?, ?, ?)) AND bucket_id = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/gif"

    aput-object v1, v0, v4

    const-string v1, "image/raw"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/hwcamera/gallery/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v4

    const-string v1, "orientation"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/hwcamera/gallery/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/gallery/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/gallery/ImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/gallery/ImageList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/hwcamera/gallery/ImageList;->IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/android/hwcamera/gallery/BaseImage;
    .locals 12
    .parameter "cursor"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 89
    .local v2, id:J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 90
    .local v7, dateTaken:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    mul-long v7, v0, v10

    .line 93
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 94
    .local v5, miniThumbMagic:J
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 95
    .local v9, orientation:I
    new-instance v0, Lcom/android/hwcamera/gallery/Image;

    iget-object v1, p0, Lcom/android/hwcamera/gallery/ImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/gallery/ImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-direct/range {v0 .. v9}, Lcom/android/hwcamera/gallery/Image;-><init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJI)V

    return-object v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/hwcamera/gallery/ImageList;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "(mime_type in (?, ?, ?, ?))"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(mime_type in (?, ?, ?, ?)) AND bucket_id = ?"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v2, p0, Lcom/android/hwcamera/gallery/ImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Lcom/android/hwcamera/gallery/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    array-length v0, v2

    .line 57
    .local v0, count:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 58
    .local v1, result:[Ljava/lang/String;
    sget-object v2, Lcom/android/hwcamera/gallery/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v2, p0, Lcom/android/hwcamera/gallery/ImageList;->mBucketId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 62
    .end local v0           #count:I
    .end local v1           #result:[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/hwcamera/gallery/ImageList;->ACCEPTABLE_IMAGE_TYPES:[Ljava/lang/String;

    goto :goto_0
.end method
