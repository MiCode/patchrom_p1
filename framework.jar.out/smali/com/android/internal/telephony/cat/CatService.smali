.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field private static LANGUAGE_SELECTION_STATE_AVAIABLE:Z = false

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field static final MSG_ID_ICC_REFRESH_RESET:I = 0x1e

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final STK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field public static final TAG_StkService:Ljava/lang/String; = "StkService"

.field private static mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private static sInstance:Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field public strLanguageNotificationCmdType:Ljava/lang/String;

.field public strLanguageNotificationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->LANGUAGE_SELECTION_STATE_AVAIABLE:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 4
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->strLanguageNotificationCode:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->strLanguageNotificationCmdType:Ljava/lang/String;

    .line 120
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 126
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {p0, p4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    sput-object p2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForIccRefreshReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    const-string v0, "Is running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "cmdInput"
    .parameter "buf"

    .prologue
    .line 468
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 469
    .local v0, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 470
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 475
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 481
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 483
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 491
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 621
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 624
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 625
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 628
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 631
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 632
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 633
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 634
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 637
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 638
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 639
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 641
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 655
    packed-switch p1, :pswitch_data_0

    .line 668
    :goto_0
    if-eqz p4, :cond_0

    .line 669
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 670
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 657
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :pswitch_0
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v10, " Sending Browser termination event download to ICC"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 659
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 661
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 677
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 678
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 680
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 683
    return-void

    .line 655
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 496
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 498
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 500
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 501
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 727
    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 8
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 697
    sget-object v7, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 698
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 699
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 701
    :cond_0
    monitor-exit v7

    .line 717
    :goto_0
    return-object v0

    .line 703
    :cond_1
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "Cat Telephony service"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 704
    .local v6, thread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 705
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 706
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    .end local v6           #thread:Landroid/os/HandlerThread;
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v7

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 707
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    .line 708
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Reinitialize the Service with SIMRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    sput-object p1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 712
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 713
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string/jumbo v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 507
    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 511
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 512
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 516
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 11
    .parameter "resMsg"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x1

    .line 850
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 854
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
    :goto_0
    return-void

    .line 857
    :cond_1
    const/4 v9, 0x0

    .line 858
    .local v9, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v7, 0x0

    .line 859
    .local v7, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v6

    .line 861
    .local v6, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 863
    :pswitch_0
    const/4 v7, 0x1

    .line 877
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v2, v6, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :cond_2
    :goto_1
    :pswitch_2
    move-object v5, v9

    .line 932
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    :goto_2
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-boolean v3, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    iget v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 934
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 879
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_3
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_3

    move v7, v0

    .line 880
    :goto_3
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_3
    move v7, v5

    .line 879
    goto :goto_3

    .line 883
    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 884
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_2

    .line 887
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v8

    .line 888
    .local v8, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_4

    .line 891
    if-nez v7, :cond_2

    .line 892
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v1, v8, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v2, v8, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v5, v0, v1, v2}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_2

    .line 896
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 899
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_2

    .line 903
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .end local v8           #input:Lcom/android/internal/telephony/cat/Input;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_6
    const-string/jumbo v0, "stkservice handleCmdResponse LANGUAGE_NOTIFICATION"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v9

    .line 904
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_2

    .line 906
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v9       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 910
    iput-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 913
    :pswitch_8
    iget v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->eventValue:I

    const/16 v2, 0x82

    const/16 v3, 0x81

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->addedInfo:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto :goto_1

    .line 922
    :pswitch_9
    iput-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->includeAdditionalInfo:Z

    .line 923
    iput v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->additionalInfo:I

    .line 927
    :pswitch_a
    const/4 v5, 0x0

    .line 928
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v5       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_2

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 877
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method private handleIccRefreshReset()V
    .locals 6

    .prologue
    .line 818
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 819
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 820
    new-instance v2, Lcom/android/internal/telephony/cat/SelectItemParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    .line 821
    .local v2, cmdParams:Lcom/android/internal/telephony/cat/SelectItemParams;
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 823
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    const-string v4, "Sending NULL menu to uninstall STK menu"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.command"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "STK CMD"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 826
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 827
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 10
    .parameter "cmdParams"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 293
    .local v6, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    .end local p1
    :goto_0
    return-void

    .line 295
    .restart local p1
    :pswitch_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 300
    :goto_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 382
    .end local p1
    :cond_0
    :goto_2
    :pswitch_1
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 383
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.stk.command"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "STK CMD"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 298
    .end local v7           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_1
    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 304
    :pswitch_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 310
    :pswitch_3
    const-string v0, "handleProactiveCommand--send response to sim card!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handleProactiveCommand() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getLanguageNotification()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 319
    :pswitch_4
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    goto :goto_2

    .line 322
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendProactiveCmdResponse(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_2

    .line 325
    :pswitch_6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cat/CatService;->isValidSetupEventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_2

    .line 328
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 335
    :pswitch_7
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_1

    .line 345
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 337
    :pswitch_8
    new-instance v9, Lcom/android/internal/telephony/cat/DTTZResponseData;

    invoke-direct {v9, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 338
    .local v9, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 341
    .end local v9           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_9
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 342
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_a
    move-object v0, p1

    .line 349
    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x10404c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 352
    .local v8, message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v8           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_b
    move-object v0, p1

    .line 363
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x10404c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 366
    .restart local v8       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v8           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_c
    move-object v0, p1

    .line 372
    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x10404ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 375
    .restart local v8       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch

    .line 335
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v7, 0x0

    .line 177
    .local v7, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_0

    .line 183
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 184
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 185
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 193
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    if-eqz v7, :cond_3

    .line 203
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_2

    .line 204
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v8

    .line 196
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 209
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 218
    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 219
    .local v2, lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 220
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 221
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 222
    iput v4, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 223
    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 230
    .end local v2           #lastCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    :pswitch_4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v1, :cond_0

    .line 232
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 233
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 234
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommand(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 393
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method private isSetUpEventResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 830
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 831
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSetupEventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 5
    .parameter "cmdMsg"

    .prologue
    .line 266
    const/4 v1, 0x1

    .line 269
    .local v1, flag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v0, v3, v2

    .line 271
    .local v0, eventval:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    packed-switch v0, :pswitch_data_0

    .line 277
    const/4 v1, 0x0

    .line 269
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v0           #eventval:I
    :cond_0
    return v1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 806
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 813
    :goto_0
    return v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 813
    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 520
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 524
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 527
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 531
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 532
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 533
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 534
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 538
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 539
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 540
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 543
    if-eqz p2, :cond_0

    .line 544
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 545
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 546
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 549
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 552
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 553
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 555
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 558
    return-void
.end method

.method private sendProactiveCmdResponse(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 6
    .parameter "cmdParams"

    .prologue
    const/4 v3, 0x0

    .line 257
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->loadOptionalIconFailed:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 258
    .local v2, resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :goto_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 259
    return-void

    .line 257
    .end local v2           #resultCode:Lcom/android/internal/telephony/cat/ResultCode;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v3, 0x2

    .line 404
    if-nez p1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 409
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 410
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_1

    .line 411
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 415
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 416
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_2

    .line 417
    or-int/lit16 v5, v5, 0x80

    .line 419
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 420
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 422
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 423
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 432
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 433
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 434
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 439
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 440
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    if-eqz p3, :cond_4

    .line 442
    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    if-eqz p3, :cond_3

    .line 447
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    :cond_3
    if-eqz p5, :cond_5

    .line 452
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 457
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 458
    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, hexString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 441
    .end local v2           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 454
    .restart local v3       #length:I
    :cond_5
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .parameter "resMsg"

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, validResponse:Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 794
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x1

    .line 800
    :cond_1
    :goto_0
    return v0

    .line 796
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 156
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForIccRefreshReset(Landroid/os/Handler;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public getLanguageNotificationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->strLanguageNotificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageSelectionStateAvailable()Z
    .locals 1

    .prologue
    .line 941
    sget-boolean v0, Lcom/android/internal/telephony/cat/CatService;->LANGUAGE_SELECTION_STATE_AVAIABLE:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 733
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 776
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized CAT command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 738
    :sswitch_0
    const-string/jumbo v4, "ril message arrived"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, data:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 741
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 742
    .local v1, ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 744
    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 746
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->strLanguageNotificationCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 778
    .end local v2           #data:Ljava/lang/String;
    :goto_0
    :sswitch_1
    return-void

    .line 748
    .restart local v1       #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 749
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 756
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 761
    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 764
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 768
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleIccRefreshReset()V

    goto :goto_0

    .line 772
    :sswitch_6
    const-string v4, "SIM ready. Reporting STK service running now..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 733
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0xa -> :sswitch_3
        0x14 -> :sswitch_1
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 781
    monitor-enter p0

    if-nez p1, :cond_0

    .line 787
    :goto_0
    monitor-exit p0

    return-void

    .line 785
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 786
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 781
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendLanguageSelection(II)V
    .locals 11
    .parameter "languageFirst"
    .parameter "languageSecond"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 562
    const-string v5, "GSM"

    const-string v6, "StkService sendLanguageSelection()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkService sendLanguageSelection() languageId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " languageSecond = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    .line 573
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 578
    const/16 v5, 0x19

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 580
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 582
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 584
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 586
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 588
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 590
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 592
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 594
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 599
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 604
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 607
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 608
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v8

    .line 610
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, hexString:Ljava/lang/String;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StkService sendLanguageSelection hexString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 615
    return-void
.end method

.method public setLanguageSelectionStateAvailable(Z)V
    .locals 0
    .parameter "languageSelectionStateAvailable"

    .prologue
    .line 945
    sput-boolean p1, Lcom/android/internal/telephony/cat/CatService;->LANGUAGE_SELECTION_STATE_AVAIABLE:Z

    .line 946
    return-void
.end method
