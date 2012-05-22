.class public final Lcom/scalado/app/rewind/JpegHolder;
.super Ljava/lang/Object;
.source "JpegHolder.java"


# static fields
.field private static final MSG_CLEAR_DATA:I = 0x1

.field private static sJpegHolder:Lcom/scalado/app/rewind/JpegHolder;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mJpegList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/scalado/app/rewind/JpegHolder;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/scalado/app/rewind/JpegHolder$1;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/JpegHolder$1;-><init>(Lcom/scalado/app/rewind/JpegHolder;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/scalado/app/rewind/JpegHolder;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/scalado/app/rewind/JpegHolder;->sJpegHolder:Lcom/scalado/app/rewind/JpegHolder;

    if-nez v0, :cond_1

    .line 43
    sget-object v1, Lcom/scalado/app/rewind/JpegHolder;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/scalado/app/rewind/JpegHolder;->sJpegHolder:Lcom/scalado/app/rewind/JpegHolder;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/scalado/app/rewind/JpegHolder;

    invoke-direct {v0}, Lcom/scalado/app/rewind/JpegHolder;-><init>()V

    sput-object v0, Lcom/scalado/app/rewind/JpegHolder;->sJpegHolder:Lcom/scalado/app/rewind/JpegHolder;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/scalado/app/rewind/JpegHolder;->sJpegHolder:Lcom/scalado/app/rewind/JpegHolder;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addJpegData([B)V
    .locals 1
    .parameter "jpegData"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    return-void
.end method

.method public clearData(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    return-void
.end method

.method public getAllJpegData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    return-object v0
.end method

.method public getJpegData(I)[B
    .locals 2
    .parameter "index"

    .prologue
    .line 70
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index is invalide"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getNumOfJpegData()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scalado/app/rewind/JpegHolder;->mJpegList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
