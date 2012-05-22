.class public Lcom/android/hwcamera/gallery/Image;
.super Lcom/android/hwcamera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/android/hwcamera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"


# instance fields
.field private final mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJI)V
    .locals 0
    .parameter "cr"
    .parameter "id"
    .parameter "uri"
    .parameter "miniThumbMagic"
    .parameter "dateTaken"
    .parameter "rotation"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p8}, Lcom/android/hwcamera/gallery/BaseImage;-><init>(Landroid/content/ContentResolver;JLandroid/net/Uri;JJ)V

    .line 36
    iput p9, p0, Lcom/android/hwcamera/gallery/Image;->mRotation:I

    .line 37
    return-void
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/hwcamera/gallery/Image;->mRotation:I

    return v0
.end method
