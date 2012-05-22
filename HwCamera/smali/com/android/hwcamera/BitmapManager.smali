.class public Lcom/android/hwcamera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/BitmapManager$1;,
        Lcom/android/hwcamera/BitmapManager$ThreadStatus;,
        Lcom/android/hwcamera/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/android/hwcamera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/android/hwcamera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/BitmapManager;->sManager:Lcom/android/hwcamera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 69
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/BitmapManager$ThreadStatus;

    .line 76
    .local v0, status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/hwcamera/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/hwcamera/BitmapManager$ThreadStatus;-><init>(Lcom/android/hwcamera/BitmapManager$1;)V

    .line 78
    .restart local v0       #status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/android/hwcamera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-object v0

    .line 75
    .end local v0           #status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/android/hwcamera/BitmapManager;
    .locals 2

    .prologue
    .line 126
    const-class v1, Lcom/android/hwcamera/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/BitmapManager;->sManager:Lcom/android/hwcamera/BitmapManager;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/hwcamera/BitmapManager;

    invoke-direct {v0}, Lcom/android/hwcamera/BitmapManager;-><init>()V

    sput-object v0, Lcom/android/hwcamera/BitmapManager;->sManager:Lcom/android/hwcamera/BitmapManager;

    .line 129
    :cond_0
    sget-object v0, Lcom/android/hwcamera/BitmapManager;->sManager:Lcom/android/hwcamera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v1, status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return v0

    .line 90
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/hwcamera/BitmapManager$ThreadStatus;->mState:Lcom/android/hwcamera/BitmapManager$State;

    sget-object v3, Lcom/android/hwcamera/BitmapManager$State;->CANCEL:Lcom/android/hwcamera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 91
    .local v0, result:Z
    :goto_1
    goto :goto_0

    .line 90
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    .end local v1           #status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"
    .parameter "isVideo"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 103
    .local v8, t:Ljava/lang/Thread;
    invoke-direct {p0, v8}, Lcom/android/hwcamera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/android/hwcamera/BitmapManager$ThreadStatus;

    move-result-object v7

    .line 105
    .local v7, status:Lcom/android/hwcamera/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "BitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to decode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-object v0

    .line 111
    :cond_0
    if-eqz p6, :cond_1

    .line 112
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v0

    .line 119
    monitor-enter v7

    .line 120
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 115
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 119
    monitor-enter v7

    .line 120
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 119
    :catchall_2
    move-exception v0

    monitor-enter v7

    .line 120
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 121
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
