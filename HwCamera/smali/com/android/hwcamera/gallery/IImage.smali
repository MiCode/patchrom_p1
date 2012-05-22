.class public interface abstract Lcom/android/hwcamera/gallery/IImage;
.super Ljava/lang/Object;
.source "IImage.java"


# static fields
.field public static final MINI_THUMB_MAX_NUM_PIXELS:I = 0x4000

.field public static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field public static final NO_ROTATE:Z = false

.field public static final ROTATE_AS_NEEDED:Z = true

.field public static final THUMBNAIL_MAX_NUM_PIXELS:I = 0x30000

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x140

.field public static final UNCONSTRAINED:I = -0x1


# virtual methods
.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method
