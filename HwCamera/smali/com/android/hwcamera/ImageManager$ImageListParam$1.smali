.class final Lcom/android/hwcamera/ImageManager$ImageListParam$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ImageManager$ImageListParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/hwcamera/ImageManager$ImageListParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/hwcamera/ImageManager$ImageListParam;
    .locals 2
    .parameter "in"

    .prologue
    .line 105
    new-instance v0, Lcom/android/hwcamera/ImageManager$ImageListParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/hwcamera/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;Lcom/android/hwcamera/ImageManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ImageManager$ImageListParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/hwcamera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/hwcamera/ImageManager$ImageListParam;
    .locals 1
    .parameter "size"

    .prologue
    .line 109
    new-array v0, p1, [Lcom/android/hwcamera/ImageManager$ImageListParam;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ImageManager$ImageListParam$1;->newArray(I)[Lcom/android/hwcamera/ImageManager$ImageListParam;

    move-result-object v0

    return-object v0
.end method
