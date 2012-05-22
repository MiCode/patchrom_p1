.class Lcom/android/hwcamera/ImageManager$EmptyImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/hwcamera/gallery/IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImageList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/ImageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/hwcamera/ImageManager$EmptyImageList;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/android/hwcamera/gallery/IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method
