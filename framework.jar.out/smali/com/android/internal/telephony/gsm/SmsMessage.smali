.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERMEDIATE_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SMS_GW_VP_ABSOLUTE_FORMAT:I = 0x18

.field public static final SMS_GW_VP_ENHANCED_FORMAT:I = 0x8

.field public static final SMS_GW_VP_RELATIVE_FORMAT:I = 0x10

.field public static final SMS_TOA_UNKNOWN:I = 0x80


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 575
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 887
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 888
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 889
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 890
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 891
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 892
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 893
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 895
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 901
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 903
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 898
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 899
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 184
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 186
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->indexOnIcc:I

    .line 191
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 192
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 209
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 196
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->statusOnIcc:I

    .line 199
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 203
    .local v3, size:I
    new-array v2, v3, [B

    .line 204
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 209
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 124
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static encodeSCTimeStamp(Ljava/lang/String;)[B
    .locals 6
    .parameter "mcTimeStamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1509
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1511
    .local v1, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1512
    :cond_0
    const-string v3, "GSM"

    const-string v4, "bad parm in encodeSCTimeStamp()."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1560
    :goto_0
    return-object v3

    .line 1516
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v0, Date:Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1520
    iget v3, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v3, v3, 0x64

    iput v3, v0, Landroid/text/format/Time;->year:I

    .line 1521
    iget v3, v0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1522
    .local v2, val:B
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1523
    iget v3, v0, Landroid/text/format/Time;->year:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1524
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1527
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1528
    iget v3, v0, Landroid/text/format/Time;->month:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1529
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1530
    iget v3, v0, Landroid/text/format/Time;->month:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1531
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1534
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1535
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1536
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1537
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1540
    iget v3, v0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1541
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1542
    iget v3, v0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1543
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1546
    iget v3, v0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1547
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1548
    iget v3, v0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1549
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1552
    iget v3, v0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1553
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1554
    iget v3, v0, Landroid/text/format/Time;->second:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v2, v3

    .line 1555
    invoke-virtual {v1, v5, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1558
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1560
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 370
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 372
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 374
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 376
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 377
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 384
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 385
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    return-object v0

    .line 381
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "scTimeStamp"
    .parameter "origAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    .line 1382
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1383
    :cond_0
    const-string v10, "SmsMessage"

    const-string v11, "enter getDeliverPdu()."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v6, 0x0

    .line 1498
    :goto_0
    return-object v6

    .line 1387
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1388
    .local v6, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0xb0

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1391
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 1392
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1402
    :goto_1
    if-eqz p4, :cond_3

    const/16 v10, 0x44

    :goto_2
    or-int/lit8 v5, v10, 0x0

    .line 1403
    .local v5, mtiByte:I
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1408
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1411
    .local v1, daBytes:[B
    if-nez v1, :cond_4

    .line 1412
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1413
    const/16 v10, 0x80

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1425
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1429
    :try_start_0
    invoke-static/range {p3 .. p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v9

    .line 1431
    .local v9, userData:[B
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xa0

    if-le v10, v11, :cond_6

    .line 1433
    const-string v10, "SmsMessage"

    const-string v11, "Message too long"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1434
    const/4 v6, 0x0

    goto :goto_0

    .line 1394
    .end local v1           #daBytes:[B
    .end local v5           #mtiByte:I
    .end local v9           #userData:[B
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_1

    .line 1402
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 1417
    .restart local v1       #daBytes:[B
    .restart local v5       #mtiByte:I
    :cond_4
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v11, v10, 0x2

    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xf0

    const/16 v12, 0xf0

    if-ne v10, v12, :cond_5

    const/4 v10, 0x1

    :goto_4
    sub-int v10, v11, v10

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1421
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v0, v1, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 1417
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 1445
    .restart local v9       #userData:[B
    :cond_6
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1449
    :try_start_2
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object v7

    .line 1450
    .local v7, timeStampArray:[B
    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v0, v7, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1461
    .end local v7           #timeStampArray:[B
    :goto_5
    const/4 v10, 0x0

    :try_start_3
    array-length v11, v9

    invoke-virtual {v0, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1497
    :goto_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 1451
    :catch_0
    move-exception v2

    .line 1452
    .local v2, err:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1453
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1454
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1455
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1456
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1457
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1458
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1459
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encode SC timestamp failed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 1462
    .end local v2           #err:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .end local v9           #userData:[B
    :catch_1
    move-exception v3

    .line 1465
    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_5
    invoke-static/range {p3 .. p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v9

    .line 1470
    .restart local v9       #userData:[B
    array-length v10, v9

    const/16 v11, 0x8d

    if-le v10, v11, :cond_7

    .line 1472
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1466
    .end local v9           #userData:[B
    :catch_2
    move-exception v8

    .line 1467
    .local v8, uex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "GSM"

    const-string v11, "Implausible UnsupportedEncodingException"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1468
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1477
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v9       #userData:[B
    :cond_7
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1481
    :try_start_6
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeSCTimeStamp(Ljava/lang/String;)[B

    move-result-object v7

    .line 1482
    .restart local v7       #timeStampArray:[B
    const/4 v10, 0x0

    array-length v11, v7

    invoke-virtual {v0, v7, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1495
    .end local v7           #timeStampArray:[B
    :goto_7
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v0, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 1483
    :catch_3
    move-exception v4

    .line 1484
    .local v4, exception:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1485
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1486
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1487
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1488
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1489
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1490
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1491
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encode SC timestamp failed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 420
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 421
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 422
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 423
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 425
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 426
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 428
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 430
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 431
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v2, 0x0

    .line 459
    :goto_0
    return-object v2

    .line 436
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 437
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 444
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 449
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 452
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 453
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 456
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 458
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "header"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v5, 0x0

    .line 480
    invoke-static {p2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v2

    .line 482
    .local v2, smsHeaderData:[B
    array-length v3, p3

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8c

    if-le v3, v4, :cond_0

    .line 483
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS data message may only contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    rsub-int v5, v5, 0x8c

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v1, 0x0

    .line 509
    :goto_0
    return-object v1

    .line 488
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 489
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v3, 0x41

    invoke-static {p0, p1, v3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 494
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    array-length v3, p3

    array-length v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 502
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 503
    array-length v3, v2

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 506
    array-length v3, p3

    invoke-virtual {v0, p3, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 508
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 260
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 261
    :cond_0
    const/4 v7, 0x0

    .line 358
    :goto_0
    return-object v7

    .line 264
    :cond_1
    if-nez p5, :cond_4

    .line 266
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 267
    .local v9, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 268
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 269
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 271
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 272
    :cond_2
    if-eqz p4, :cond_5

    .line 273
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 274
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 276
    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 280
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 281
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 292
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 294
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 295
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 302
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 303
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 329
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 330
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 332
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 284
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 285
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 286
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 287
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 294
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 307
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 308
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 309
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 312
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 315
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 319
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 320
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 321
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 322
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 343
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 357
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 345
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 347
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 352
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 528
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 532
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 533
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 540
    :goto_0
    if-eqz p3, :cond_0

    .line 542
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 545
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 548
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 552
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 556
    .local v1, daBytes:[B
    if-nez v1, :cond_2

    .line 557
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 571
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 572
    return-object v0

    .line 535
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 562
    .restart local v1       #daBytes:[B
    :cond_2
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 566
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 562
    goto :goto_2
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 219
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 164
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 152
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .parameter "pdu"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1008
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1010
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    .line 1012
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1020
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1022
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1023
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1041
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1029
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1043
    :goto_0
    return-void

    .line 1032
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1036
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1095
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1097
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1106
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1110
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1117
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1121
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1123
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1124
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 1095
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1121
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1052
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1055
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1057
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 1059
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1061
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->scTimeMillis:J

    .line 1063
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1065
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1068
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1070
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1071
    .local v0, extraParams:I
    move v2, v0

    .line 1072
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1076
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1055
    goto :goto_0

    .line 1079
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1080
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1083
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1084
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1087
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1088
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1089
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1092
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1088
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 3
    .parameter "p"
    .parameter "firstByte"

    .prologue
    .line 1347
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1350
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1354
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1358
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1361
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getValidityPeriod(I)V

    .line 1363
    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1365
    .local v0, hasUserDataHeader:Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1367
    return-void

    .line 1363
    .end local v0           #hasUserDataHeader:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 13
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xe0

    const/16 v10, 0xc0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1134
    const/4 v4, 0x0

    .line 1135
    .local v4, hasMessageClass:Z
    const/4 v5, 0x0

    .line 1137
    .local v5, userDataCompressed:Z
    const/4 v3, 0x0

    .line 1140
    .local v3, encodingType:I
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    .line 1142
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1143
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    move v5, v7

    .line 1144
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3

    move v4, v7

    .line 1146
    :goto_2
    if-eqz v5, :cond_4

    .line 1147
    const-string v6, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_3
    if-ne v3, v7, :cond_10

    :goto_4
    invoke-virtual {p1, p2, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1231
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    .line 1232
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1237
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->portAddrsID:I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v7, 0x5

    if-ne v6, v7, :cond_12

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v7, 0x23f4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v7, 0x23f6

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v7, 0xe2

    if-ne v6, v7, :cond_12

    .line 1244
    :cond_0
    const-string v6, "GSM"

    const-string v7, "gsmSmsMessage this message is vcard message!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :try_start_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userData:[B

    const-string v9, "ISO-8859-1"

    invoke-direct {v6, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1247
    if-nez v4, :cond_11

    .line 1248
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :goto_5
    return-void

    .end local v1           #count:I
    :cond_1
    move v6, v8

    .line 1142
    goto/16 :goto_0

    :cond_2
    move v5, v8

    .line 1143
    goto/16 :goto_1

    :cond_3
    move v4, v8

    .line 1144
    goto/16 :goto_2

    .line 1150
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 1152
    :pswitch_0
    const/4 v3, 0x1

    .line 1153
    goto :goto_3

    .line 1156
    :pswitch_1
    const/4 v3, 0x3

    .line 1157
    goto :goto_3

    .line 1161
    :pswitch_2
    const/4 v3, 0x2

    .line 1162
    goto :goto_3

    .line 1164
    :pswitch_3
    const-string v6, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1171
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v9, 0xf0

    if-ne v6, v9, :cond_7

    .line 1172
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1173
    const/4 v4, 0x1

    .line 1174
    const/4 v5, 0x0

    .line 1176
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_6

    .line 1178
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1181
    :cond_6
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 1183
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-eq v6, v10, :cond_8

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v9, 0xd0

    if-eq v6, v9, :cond_8

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-ne v6, v11, :cond_d

    .line 1192
    :cond_8
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-ne v6, v11, :cond_9

    .line 1193
    const/4 v3, 0x3

    .line 1198
    :goto_6
    const/4 v5, 0x0

    .line 1199
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x8

    const/16 v9, 0x8

    if-ne v6, v9, :cond_a

    move v0, v7

    .line 1203
    .local v0, active:Z
    :goto_7
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_c

    .line 1204
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1205
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    .line 1206
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xf0

    if-ne v6, v10, :cond_b

    move v6, v7

    :goto_8
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    goto/16 :goto_3

    .line 1195
    .end local v0           #active:Z
    :cond_9
    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    move v0, v8

    .line 1199
    goto :goto_7

    .restart local v0       #active:Z
    :cond_b
    move v6, v8

    .line 1206
    goto :goto_8

    .line 1208
    :cond_c
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    .line 1210
    const-string v6, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI for fax, email, or other "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1213
    .end local v0           #active:Z
    :cond_d
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v6, v6, 0xc0

    const/16 v9, 0x80

    if-ne v6, v9, :cond_f

    .line 1216
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v9, 0x84

    if-ne v6, v9, :cond_e

    .line 1218
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 1220
    :cond_e
    const-string v6, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1224
    :cond_f
    const-string v6, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    move v7, v8

    .line 1229
    goto/16 :goto_4

    .line 1250
    .restart local v1       #count:I
    :cond_11
    :try_start_1
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_5

    .line 1252
    :pswitch_4
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1266
    :catch_0
    move-exception v2

    .line 1267
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vCard message is error : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    .line 1274
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_12
    packed-switch v3, :pswitch_data_2

    .line 1300
    :goto_9
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    if-eqz v6, :cond_13

    .line 1301
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1304
    :cond_13
    if-nez v4, :cond_16

    .line 1305
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1255
    :pswitch_5
    :try_start_2
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1258
    :pswitch_6
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1261
    :pswitch_7
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1277
    :pswitch_8
    iput-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_9

    .line 1280
    :pswitch_9
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8Bit(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_9

    .line 1284
    :pswitch_a
    if-eqz p2, :cond_15

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_a
    if-eqz p2, :cond_14

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v8, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_14
    invoke-virtual {p1, v1, v6, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_9

    :cond_15
    move v6, v8

    goto :goto_a

    .line 1290
    :pswitch_b
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_9

    .line 1294
    :pswitch_c
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_9

    .line 1307
    :cond_16
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_5

    .line 1309
    :pswitch_d
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1312
    :pswitch_e
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1315
    :pswitch_f
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1318
    :pswitch_10
    sget-object v6, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_5

    .line 1150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1250
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1274
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1307
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 938
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-nez v0, :cond_0

    .line 942
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 949
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 953
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 960
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 968
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 974
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 923
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
