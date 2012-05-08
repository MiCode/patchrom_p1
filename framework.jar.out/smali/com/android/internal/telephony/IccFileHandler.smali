.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_GET_SMSC_ADDR_DONE:I = 0x44c

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field static final EVENT_SET_SMSC_ADDR_DONE:I = 0x44d

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 133
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 290
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 540
    sparse-switch p1, :sswitch_data_0

    .line 563
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 564
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "3F007F105F3A"

    .line 569
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    :goto_0
    return-object v1

    .line 548
    :sswitch_0
    const-string v1, "3F007F10"

    goto :goto_0

    .line 552
    :sswitch_1
    const-string v1, "3F00"

    goto :goto_0

    .line 554
    :sswitch_2
    const-string v1, "3F007F105F50"

    goto :goto_0

    .line 569
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 540
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 189
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 192
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 194
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x44c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 580
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 298
    const/16 v27, 0x0

    .line 310
    .local v27, response:Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 312
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 313
    .local v20, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 314
    .local v24, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 315
    .local v28, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 317
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 318
    .local v23, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_0

    .line 319
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v24           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :catch_0
    move-exception v22

    .line 521
    .local v22, exc:Ljava/lang/Exception;
    if-eqz v27, :cond_14

    .line 522
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 323
    .end local v22           #exc:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 324
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v27, v0

    .line 325
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 327
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 328
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_0

    .line 329
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 334
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 335
    .restart local v24       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 336
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 338
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 339
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 343
    :cond_1
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 344
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_2

    .line 345
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 349
    :cond_2
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v21, v0

    .line 351
    .local v21, data:[B
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v21, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v21, v4

    if-eq v3, v4, :cond_4

    .line 353
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 356
    :cond_4
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 357
    .local v26, recordSize:[I
    const/4 v3, 0x0

    const/16 v4, 0xe

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v26, v3

    .line 358
    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v6, 0x3

    aget-byte v6, v21, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    aput v4, v26, v3

    .line 360
    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v26, v4

    const/4 v6, 0x0

    aget v6, v26, v6

    div-int/2addr v4, v6

    aput v4, v26, v3

    .line 362
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 365
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v21           #data:[B
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v24           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v26           #recordSize:[I
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 366
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 367
    .restart local v24       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 368
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 370
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 371
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 375
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 377
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_6

    .line 378
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 382
    :cond_6
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v21, v0

    .line 383
    .restart local v21       #data:[B
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 384
    .local v5, fileid:I
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v25, v0

    .line 386
    .local v25, recordNum:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v21, v4

    if-eq v3, v4, :cond_7

    .line 387
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 390
    :cond_7
    const/4 v3, 0x1

    const/16 v4, 0xd

    aget-byte v4, v21, v4

    if-eq v3, v4, :cond_8

    .line 391
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 394
    :cond_8
    const/16 v3, 0xe

    aget-byte v3, v21, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v24

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 396
    const/4 v3, 0x2

    aget-byte v3, v21, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 399
    .local v9, size:I
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    div-int v3, v9, v3

    move-object/from16 v0, v24

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 401
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-eqz v3, :cond_9

    .line 402
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 405
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb2

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .end local v5           #fileid:I
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v8, 0x4

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .end local v9           #size:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 412
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v21           #data:[B
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v24           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v25           #recordNum:I
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 413
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v27, v0

    .line 414
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 416
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 417
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 421
    :cond_a
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 423
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_b

    .line 424
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 428
    :cond_b
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v21, v0

    .line 430
    .restart local v21       #data:[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 432
    .restart local v5       #fileid:I
    const/4 v3, 0x4

    const/4 v4, 0x6

    aget-byte v4, v21, v4

    if-eq v3, v4, :cond_c

    .line 433
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 436
    :cond_c
    const/16 v3, 0xd

    aget-byte v3, v21, v3

    if-eqz v3, :cond_d

    .line 437
    new-instance v3, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 440
    :cond_d
    const/4 v3, 0x2

    aget-byte v3, v21, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    add-int v9, v3, v4

    .line 443
    .restart local v9       #size:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xb0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v5, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 451
    .end local v5           #fileid:I
    .end local v9           #size:I
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v21           #data:[B
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 452
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 453
    .restart local v24       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 454
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v27, v0

    .line 456
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 457
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 461
    :cond_e
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 463
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_f

    .line 464
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 468
    :cond_f
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    if-nez v3, :cond_10

    .line 469
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 471
    :cond_10
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    iput v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 475
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    if-le v3, v4, :cond_11

    .line 476
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 478
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0xb2

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    const/4 v15, 0x4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v10 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 489
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v24           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 490
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v27, v0

    .line 491
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/IccIoResult;

    .line 493
    .restart local v28       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 494
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 498
    :cond_12
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v23

    .line 500
    .restart local v23       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v23, :cond_13

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 505
    :cond_13
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 511
    .end local v20           #ar:Landroid/os/AsyncResult;
    .end local v23           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v28           #result:Lcom/android/internal/telephony/IccIoResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    .line 512
    .restart local v20       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 515
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 516
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 524
    .end local v20           #ar:Landroid/os/AsyncResult;
    .restart local v22       #exc:Ljava/lang/Exception;
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0x44c -> :sswitch_7
        0x44d -> :sswitch_7
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 10
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 169
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 174
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 177
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    .line 243
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 246
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    const-string v3, "img"

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 151
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 155
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 157
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 206
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 209
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 211
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 224
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 227
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 229
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "address"
    .parameter "result"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x44d

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 584
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 264
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 10
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 275
    return-void
.end method
