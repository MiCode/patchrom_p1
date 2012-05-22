.class public Lcom/android/hwcamera/StoragePath;
.super Ljava/lang/Object;
.source "StoragePath.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final IS_MORE_3VERSION:Z = false

.field private static final KEY_EXTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_external_path"

.field private static final KEY_INTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_internal_path"


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/hwcamera/StoragePath;->IS_MORE_3VERSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 20
    if-eqz p1, :cond_0

    .line 21
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/hwcamera/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 23
    :cond_0
    return-void
.end method

.method private getICSStroagePath(Z)Ljava/lang/String;
    .locals 4
    .parameter "isEmulated"

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, path:Ljava/lang/String;
    sget-boolean v3, Lcom/android/hwcamera/StoragePath;->IS_MORE_3VERSION:Z

    if-nez v3, :cond_0

    .line 56
    const/4 v3, 0x0

    .line 68
    :goto_0
    return-object v3

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 59
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 60
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    .line 62
    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    move-object v3, v1

    .line 64
    goto :goto_0

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const-string v0, "persist.sys.hw_external_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "persist.sys.hw_external_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-boolean v0, Lcom/android/hwcamera/StoragePath;->IS_MORE_3VERSION:Z

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/StoragePath;->getICSStroagePath(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    const-string v0, "persist.sys.hw_internal_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "persist.sys.hw_internal_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-boolean v0, Lcom/android/hwcamera/StoragePath;->IS_MORE_3VERSION:Z

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/StoragePath;->getICSStroagePath(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/HWUserData"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/HWUserData"

    goto :goto_0

    :cond_2
    const-string v0, "/data/HWUserData"

    goto :goto_0
.end method

.method public getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/hwcamera/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
