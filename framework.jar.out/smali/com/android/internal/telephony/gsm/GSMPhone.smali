.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final CFID:Ljava/lang/String; = "cfid_key"

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final EVENT_SET_NETWORK_MANUAL_DONE:I = 0x3e9

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final TIMEWAIT_FOR_NETWORK_SELECTION:I = 0x2710

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"


# instance fields
.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mStkService:Lcom/android/internal/telephony/cat/CatService;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 7
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 146
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 147
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 151
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 153
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 156
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimCard;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 158
    if-nez p4, :cond_1

    .line 159
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 160
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1b

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 881
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 507
    const/4 v1, 0x0

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 511
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string/jumbo v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 519
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 520
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 574
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 575
    const/4 v6, 0x0

    .line 619
    :goto_0
    return v6

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 580
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 582
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 583
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 584
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 587
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 588
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 597
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string/jumbo v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 592
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 603
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 604
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 612
    :catch_1
    move-exception v4

    .line 613
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string/jumbo v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 608
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 530
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 532
    .local v4, len:I
    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 533
    const/4 v5, 0x0

    .line 567
    :cond_0
    :goto_0
    return v5

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 539
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_2

    .line 540
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 541
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 543
    .local v1, callIndex:I
    if-lt v1, v5, :cond_0

    const/4 v6, 0x7

    if-gt v1, v6, :cond_0

    .line 544
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :catch_0
    move-exception v3

    .line 562
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 550
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 551
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 556
    :cond_3
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 661
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 668
    :goto_0
    return v0

    .line 665
    :cond_0
    const-string v1, "GSM"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 6
    .parameter "infos"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1606
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 1609
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1619
    :cond_1
    :goto_0
    return-void

    .line 1611
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1612
    aget-object v4, p1, v0

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 1613
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_0

    .line 1611
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 642
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 644
    .local v1, len:I
    if-eq v1, v2, :cond_0

    .line 645
    const/4 v2, 0x0

    .line 656
    :goto_0
    return v2

    .line 648
    :cond_0
    const-string v3, "GSM"

    const-string v4, "MmiCode 4: explicit call transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "GSM"

    const-string/jumbo v4, "transfer failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 625
    const/4 v1, 0x0

    .line 636
    :goto_0
    return v1

    .line 628
    :cond_0
    const-string v2, "GSM"

    const-string v3, "MmiCode 3: merge calls"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string v3, "conference failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 1539
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 1540
    const-string v3, "GSM"

    const-string/jumbo v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 1548
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 1549
    const-string v3, "GSM"

    const-string/jumbo v4, "sending original message to recipient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1551
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1557
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1558
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1559
    const-string/jumbo v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1563
    const-string v3, "GSM"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 992
    packed-switch p1, :pswitch_data_0

    .line 999
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 997
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 978
    packed-switch p1, :pswitch_data_0

    .line 987
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 985
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1192
    if-ne p1, v2, :cond_2

    move v3, v2

    .line 1195
    .local v3, isUssdRequest:Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    .line 1202
    .local v2, isUssdError:Z
    :goto_1
    const/4 v0, 0x0

    .line 1203
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 1204
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1205
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1210
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz v0, :cond_6

    .line 1213
    if-eqz v2, :cond_5

    .line 1214
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1231
    :cond_1
    :goto_3
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v5           #s:I
    :cond_2
    move v3, v6

    .line 1192
    goto :goto_0

    .restart local v3       #isUssdRequest:Z
    :cond_3
    move v2, v6

    .line 1195
    goto :goto_1

    .line 1203
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v2       #isUssdError:Z
    .restart local v5       #s:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1216
    :cond_5
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1223
    :cond_6
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 1225
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 1228
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_3
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1183
    return-void
.end method

.method private processIccEonsRecordsUpdated(I)V
    .locals 1
    .parameter "eventCode"

    .prologue
    .line 1518
    packed-switch p1, :pswitch_data_0

    .line 1526
    :goto_0
    return-void

    .line 1520
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 1523
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateEons()V

    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveSelectedNetwork(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 1569
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 1570
    const-string v3, "GSM"

    const-string/jumbo v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 1576
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1577
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1578
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 1579
    const-string/jumbo v3, "network_selection_operator_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1583
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1584
    const-string v3, "GSM"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1581
    :cond_2
    const-string/jumbo v3, "network_selection_operator_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 3
    .parameter "imsi"

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 886
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 863
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 864
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 865
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 867
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 453
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1656
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1658
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 479
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 475
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 8
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 774
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 800
    :goto_0
    return-object v4

    .line 782
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, networkPortion:Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 784
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialing w/ mmi \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-nez v0, :cond_1

    .line 788
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4, v3, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_0

    .line 789
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v6

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_0

    .line 793
    :cond_2
    const/16 v5, 0x64

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 794
    .local v1, msgMmiInit:Landroid/os/Message;
    const-wide/16 v5, 0x1f4

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 1150
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 217
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 1146
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 487
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "GSM"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1068
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1069
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1071
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCFISFlag()Z
    .locals 3

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 894
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "cfid_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    const-string v1, "GSM"

    const-string/jumbo v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    if-nez p1, :cond_1

    .line 1012
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1016
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1018
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1014
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1058
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1666
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1668
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 354
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 356
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_0

    .line 357
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 360
    goto :goto_0

    .line 363
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 364
    goto :goto_0

    .line 367
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1138
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 307
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 309
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_0

    .line 313
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 350
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 324
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 326
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 330
    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 338
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 340
    goto :goto_0

    .line 345
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getEons()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 937
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 942
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1122
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1046
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSimImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 871
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 874
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v2, "vm_number_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 708
    :goto_0
    return v1

    .line 677
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 678
    goto :goto_0

    .line 681
    :cond_1
    const/4 v1, 0x0

    .line 682
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 683
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 685
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 687
    goto :goto_0

    .line 689
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 691
    goto :goto_0

    .line 693
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 694
    goto :goto_0

    .line 696
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 697
    goto :goto_0

    .line 699
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 700
    goto :goto_0

    .line 702
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 703
    goto :goto_0

    .line 683
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1249
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    .line 1492
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1494
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1251
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    goto :goto_0

    .line 1263
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto :goto_0

    .line 1267
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v8

    .line 1273
    .local v8, imsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    .line 1274
    .local v9, imsiFromSIM:Ljava/lang/String;
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_SIM_RECORDS_LOADED, imsi:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", old imsi:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    if-eqz v9, :cond_1

    .line 1276
    if-eqz v8, :cond_2

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1281
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1291
    :cond_1
    :goto_1
    const-string/jumbo v16, "ro.config.hw_globalEcc"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1292
    const-string v16, "GSM"

    const-string v17, "EVENT_SIM_RECORDS_LOADED!!!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v16, "gsm.sim.operator.numeric"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1294
    .local v6, hlpmn:Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const-string v17, ""

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEmergencyNumbers(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    .end local v6           #hlpmn:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto :goto_1

    .line 1297
    .restart local v6       #hlpmn:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->globalEccCustom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    .end local v6           #hlpmn:Ljava/lang/String;
    .end local v8           #imsi:Ljava/lang/String;
    .end local v9           #imsiFromSIM:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1307
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1308
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_ICC_RECORDS_EONS_UPDATED exception "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1313
    :cond_4
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccEonsRecordsUpdated(I)V

    goto/16 :goto_0

    .line 1318
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1320
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1324
    const-string v16, "GSM"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Baseband version: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string v17, "gsm.version.baseband"

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1329
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1331
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1335
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    goto/16 :goto_0

    .line 1339
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1341
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 1345
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 1349
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1351
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v15, v16

    check-cast v15, [Ljava/lang/String;

    .line 1353
    .local v15, ussdResult:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 1355
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    aget-object v17, v15, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1356
    :catch_0
    move-exception v4

    .line 1357
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v16, "GSM"

    const-string v17, "error parsing USSD"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1368
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v15           #ussdResult:[Ljava/lang/String;
    :sswitch_9
    const/4 v7, 0x0

    .local v7, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, s:I
    :goto_2
    if-ge v7, v13, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1368
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1376
    .end local v7           #i:I
    .end local v13           #s:I
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1377
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v11, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1378
    .local v11, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1382
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v11           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1383
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1386
    :cond_6
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1387
    .local v12, onComplete:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 1388
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1389
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1384
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 1394
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1395
    .restart local v3       #ar:Landroid/os/AsyncResult;
    const-class v16, Lcom/android/internal/telephony/IccVmNotSupportedException;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1397
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1399
    :cond_8
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1400
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 1401
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1402
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1408
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1409
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 1410
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v16, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1412
    :cond_9
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1413
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 1414
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1415
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1423
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 1428
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 1429
    .local v14, tmpMsg:Landroid/os/Message;
    const/16 v16, 0x3e9

    move/from16 v0, v16

    iput v0, v14, Landroid/os/Message;->what:I

    .line 1430
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1431
    const-wide/16 v16, 0x2710

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1436
    .end local v14           #tmpMsg:Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveSelectedNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1442
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 1444
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveSelectedNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1449
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1450
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 1451
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1453
    :cond_a
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1454
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 1455
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1456
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1461
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_12
    const/4 v5, 0x0

    .line 1463
    .local v5, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1464
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v17, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccRecords;->getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1469
    :cond_b
    if-eqz v5, :cond_c

    .line 1470
    const-string v16, "GSM"

    const-string v17, "[EONS] Populated EONS names for available networks."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :goto_4
    iget-object v12, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Message;

    .line 1476
    .restart local v12       #onComplete:Landroid/os/Message;
    if-eqz v12, :cond_d

    .line 1477
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1478
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1472
    .end local v12           #onComplete:Landroid/os/Message;
    :cond_c
    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v5           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    check-cast v5, Ljava/util/ArrayList;

    .restart local v5       #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    goto :goto_4

    .line 1480
    .restart local v12       #onComplete:Landroid/os/Message;
    :cond_d
    const-string v16, "GSM"

    const-string v17, "[EONS] In EVENT_GET_NETWORKS_DONE, onComplete is null!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1487
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    .end local v12           #onComplete:Landroid/os/Message;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1488
    .local v10, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v16, v0

    new-instance v17, Landroid/os/AsyncResult;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1249
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_a
        0x3 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_2
        0x14 -> :sswitch_c
        0x1b -> :sswitch_4
        0x1c -> :sswitch_12
        0x64 -> :sswitch_13
        0x3e9 -> :sswitch_f
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 805
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 807
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 811
    const/4 v1, 0x1

    .line 814
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1004
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 713
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 714
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 716
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMmiCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "dialString"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 733
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    .line 734
    .local v1, mmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v1, :cond_1

    move v2, v3

    .line 767
    :cond_0
    :goto_0
    return v2

    .line 737
    :cond_1
    const/4 v2, 0x0

    .line 738
    .local v2, result:Z
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 739
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 741
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 742
    const/4 v2, 0x1

    goto :goto_0

    .line 745
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_0

    .line 746
    const/4 v2, 0x1

    goto :goto_0

    .line 749
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v5, :cond_0

    .line 750
    const/4 v2, 0x1

    goto :goto_0

    .line 753
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 754
    const/4 v2, 0x1

    goto :goto_0

    .line 757
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 758
    const/4 v2, 0x1

    goto :goto_0

    .line 761
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 762
    const/4 v2, 0x1

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 428
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 418
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 395
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 380
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 389
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 413
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 423
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1176
    :cond_1
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 443
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 458
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    const-string v0, "GSM"

    const-string/jumbo v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 249
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 250
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 251
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 252
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 253
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 254
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 255
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 256
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 257
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 258
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 259
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 260
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 261
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1596
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1597
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1600
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    const-string v2, "GSM"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 4
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1108
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1109
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1110
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1111
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1114
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1116
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1117
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 853
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 826
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 818
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 819
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 821
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public setCFISFlag(Z)V
    .locals 3
    .parameter "CFEnabled"

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 899
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 900
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cfid_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 902
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    if-nez p2, :cond_2

    .line 1030
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1035
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1042
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1030
    goto :goto_0

    .line 1033
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1062
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1676
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1678
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 1158
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 965
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1130
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1090
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1091
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1092
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1093
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1096
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1098
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSM"

    const-string/jumbo v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1101
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1125
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1126
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1052
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 859
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 436
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 972
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 973
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 974
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 975
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 838
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 849
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 463
    return-void
.end method

.method protected syncClirSetting()V
    .locals 4

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1238
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1239
    .local v0, clirSetting:I
    if-ltz v0, :cond_0

    .line 1240
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1242
    :cond_0
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 448
    :cond_0
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 5

    .prologue
    .line 1502
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_0

    .line 1504
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1505
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1506
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    const/4 v3, 0x1

    .line 1513
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GSM"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1513
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1142
    return-void
.end method
