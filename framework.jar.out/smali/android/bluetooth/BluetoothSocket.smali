.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SdpHelper;,
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field static final L2CAP_ENABLED:Z = true

.field static final L2CAP_TEST_MODE_ENABLED:Z = true

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPort:I

.field private final mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

.field private mSocketData:I

.field private mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I


# direct methods
.method constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "device"
    .parameter "port"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    if-ne p1, v3, :cond_1

    if-nez p7, :cond_1

    if-ne p2, v2, :cond_1

    .line 154
    if-lt p6, v3, :cond_0

    const/16 v0, 0x1e

    if-le p6, v0, :cond_2

    .line 155
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFCOMM channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-nez p7, :cond_2

    if-ne p2, v2, :cond_2

    .line 167
    :cond_2
    if-nez p7, :cond_3

    .line 168
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 169
    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 174
    :goto_0
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 175
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 176
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 177
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 178
    if-nez p5, :cond_4

    .line 179
    iput-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 183
    :goto_1
    if-ne p2, v2, :cond_5

    .line 184
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->initSocketNative()V

    .line 188
    :goto_2
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 189
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 190
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 191
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 192
    return-void

    .line 171
    :cond_3
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-direct {v0, p5, p7}, Landroid/bluetooth/BluetoothSocket$SdpHelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 172
    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 186
    :cond_5
    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothSocket;->initSocketFromFdNative(I)V

    goto :goto_2
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .locals 8
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 208
    return-void
.end method

.method private native abortNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native acceptNative(I)Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native availableNative()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native bindListenNative()I
.end method

.method private native connectNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroyNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketFromFdNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 345
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 347
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSocket;->acceptNative(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 348
    .local v0, acceptedSocket:Landroid/bluetooth/BluetoothSocket;
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0
.end method

.method available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 359
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->availableNative()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 361
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0
.end method

.method bindListen()I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 335
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4d

    .line 338
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v0

    .line 336
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->bindListenNative()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 338
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, "BluetoothSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "socket already in closing state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 268
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 269
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->cancel()V

    .line 272
    :cond_2
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->abortNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 279
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 281
    :try_start_2
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 282
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->destroyNative()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 284
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 242
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->doSdp()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 246
    :cond_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothSocket;->connectNative()V

    .line 247
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 251
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read([BII)I
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 369
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->readNative([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 371
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0
.end method

.method native throwErrnoNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method write([BII)I
    .locals 2
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 379
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->writeNative([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 381
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0
.end method
