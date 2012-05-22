.class public Lcom/android/hwcamera/gallery/VideoList;
.super Lcom/android/hwcamera/gallery/BaseImageList;
.source "VideoList.java"


# static fields
.field private static final INDEX_DATE_MODIFIED:I = 0x3

.field private static final INDEX_DATE_TAKEN:I = 0x1

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIMI_THUMB_MAGIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/hwcamera/gallery/VideoList;->VIDEO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/gallery/BaseImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/gallery/VideoList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/gallery/VideoList;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/hwcamera/gallery/VideoList;->VIDEO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method protected loadImageFromCursor(Landroid/database/Cursor;)Lcom/android/hwcamera/gallery/BaseImage;
    .locals 11
    .parameter "cursor"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 47
    .local v2, id:J
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 48
    .local v7, dateTaken:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    mul-long v7, v0, v9

    .line 51
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 52
    .local v5, miniThumbMagic:J
    new-instance v0, Lcom/android/hwcamera/gallery/VideoObject;

    iget-object v1, p0, Lcom/android/hwcamera/gallery/VideoList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/gallery/VideoList;->contentUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/gallery/VideoObject;-><init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V

    return-object v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/gallery/VideoList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/gallery/VideoList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
