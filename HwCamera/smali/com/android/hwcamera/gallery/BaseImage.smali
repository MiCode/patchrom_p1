.class public abstract Lcom/android/hwcamera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/android/hwcamera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field private final mDateTaken:J

.field protected mId:J

.field protected mUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V
    .locals 0
    .parameter "cr"
    .parameter "id"
    .parameter "uri"
    .parameter "miniThumbMagic"
    .parameter "dateTaken"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/hwcamera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    iput-wide p2, p0, Lcom/android/hwcamera/gallery/BaseImage;->mId:J

    .line 47
    iput-object p4, p0, Lcom/android/hwcamera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    .line 48
    iput-wide p7, p0, Lcom/android/hwcamera/gallery/BaseImage;->mDateTaken:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/hwcamera/gallery/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 54
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/android/hwcamera/gallery/Image;

    .end local p1
    iget-object v1, p1, Lcom/android/hwcamera/gallery/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/hwcamera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 75
    const/4 v7, 0x0

    .line 77
    .local v7, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/android/hwcamera/gallery/BaseImage;->mId:J

    .line 78
    .local v2, id:J
    invoke-static {}, Lcom/android/hwcamera/BitmapManager;->instance()Lcom/android/hwcamera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 84
    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/hwcamera/gallery/BaseImage;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    move-object v0, v7

    .line 87
    .end local v2           #id:J
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v8

    .line 81
    .local v8, ex:Ljava/lang/Throwable;
    const-string v0, "BaseImage"

    const-string v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 82
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
