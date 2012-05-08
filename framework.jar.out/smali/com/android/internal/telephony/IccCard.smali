.class public abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$3;,
        Lcom/android/internal/telephony/IccCard$State;
    }
.end annotation


# static fields
.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field protected static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_ICC_LOCKED_OR_ABSENT:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field protected static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_CORPORATE_PUK:Ljava/lang/String; = "SIM LOCK CORPORATE BLOCK"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "SIM NETWORK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_PUK:Ljava/lang/String; = "SIM LOCK BLOCK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET_PUK:Ljava/lang/String; = "SIM LOCK NETWORK SUBSET BLOCK"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER_PUK:Ljava/lang/String; = "SIM LOCK SERVICE PROVIDERBLOCK"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"


# instance fields
.field private adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccFdnEnabled:Z

.field private mIccPinLocked:Z

.field protected mIsMultimodeCdmaPhone:Z

.field protected mLogTag:Ljava/lang/String;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 55
    iput-object v3, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 62
    const-string/jumbo v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsMultimodeCdmaPhone:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 748
    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 221
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method private getAppState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 4
    .parameter "appIndex"

    .prologue
    .line 953
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 960
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 1034
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_0
    return-object v1

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 966
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 967
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 969
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 970
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 972
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 973
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 975
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICC is Perso Locked, substate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 991
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetwork()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 992
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 993
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetworkSubset()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 994
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 995
    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimCorporate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 996
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 997
    :cond_7
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimServiceProvider()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 998
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 999
    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimSim()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1000
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1001
    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimNetwork1()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1002
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1003
    :cond_a
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimNetwork2()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1004
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1005
    :cond_b
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimHrpd()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1006
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1007
    :cond_c
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimCorporate()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1008
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1009
    :cond_d
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimServiceProvider()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1010
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1011
    :cond_e
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateRuimRuim()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1012
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1013
    :cond_f
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetworkPuk()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1014
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1015
    :cond_10
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimNetworkSubsetPuk()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1016
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1017
    :cond_11
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimCorporatePuk()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1018
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1019
    :cond_12
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPersoSubStateSimServiceProviderPuk()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1020
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1022
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] UnSupported De-Personalization, substate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " assuming ICC_NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1028
    :cond_14
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1029
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1031
    :cond_15
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1032
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1034
    :cond_16
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method private getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "preferredState"

    .prologue
    .line 1039
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_1

    .line 1059
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1040
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    goto :goto_0

    .line 1043
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_3

    .line 1044
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1048
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_6

    .line 1050
    :cond_5
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1054
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p2, v0, :cond_0

    .line 1055
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_7

    move-object p1, p2

    goto :goto_0

    :cond_7
    move-object p1, p3

    .line 1059
    goto :goto_0
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 462
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_0
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 31
    .parameter "newCardStatus"

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 502
    .local v6, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    .line 504
    .local v5, newState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 509
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_6

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_6

    const/4 v13, 0x1

    .line 511
    .local v13, transitionedIntoReady:Z
    :goto_0
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_0

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v5, v0, :cond_1

    :cond_0
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_7

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_7

    :cond_1
    const/4 v12, 0x1

    .line 514
    .local v12, transitionedIntoPinLocked:Z
    :goto_1
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_8

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_8

    const/4 v7, 0x1

    .line 516
    .local v7, transitionedIntoAbsent:Z
    :goto_2
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_9

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_9

    const/4 v8, 0x1

    .line 518
    .local v8, transitionedIntoCardIOError:Z
    :goto_3
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_a

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_a

    const/4 v9, 0x1

    .line 520
    .local v9, transitionedIntoNetworkLocked:Z
    :goto_4
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_b

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_b

    const/16 v22, 0x1

    .line 522
    .local v22, transitionedIntoSimNetworkSubsetLocked:Z
    :goto_5
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_c

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_c

    const/16 v20, 0x1

    .line 524
    .local v20, transitionedIntoSimCorporateLocked:Z
    :goto_6
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_d

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_d

    const/16 v24, 0x1

    .line 526
    .local v24, transitionedIntoSimServiceProviderLocked:Z
    :goto_7
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_e

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_e

    const/16 v26, 0x1

    .line 528
    .local v26, transitionedIntoSimSimLocked:Z
    :goto_8
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_f

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_f

    const/16 v16, 0x1

    .line 530
    .local v16, transitionedIntoRuimNetwork1Locked:Z
    :goto_9
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_10

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_10

    const/16 v17, 0x1

    .line 532
    .local v17, transitionedIntoRuimNetwork2Locked:Z
    :goto_a
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_11

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_11

    const/4 v15, 0x1

    .line 534
    .local v15, transitionedIntoRuimHrpdLocked:Z
    :goto_b
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_12

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_12

    const/4 v14, 0x1

    .line 536
    .local v14, transitionedIntoRuimCorporateLocked:Z
    :goto_c
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_13

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_13

    const/16 v19, 0x1

    .line 538
    .local v19, transitionedIntoRuimServiceProviderLocked:Z
    :goto_d
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_14

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_14

    const/16 v18, 0x1

    .line 540
    .local v18, transitionedIntoRuimRuimLocked:Z
    :goto_e
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_15

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_15

    const/4 v10, 0x1

    .line 542
    .local v10, transitionedIntoNetworkPukLocked:Z
    :goto_f
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_16

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_16

    const/16 v23, 0x1

    .line 544
    .local v23, transitionedIntoSimNetworkSubsetPukLocked:Z
    :goto_10
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_17

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_17

    const/16 v21, 0x1

    .line 546
    .local v21, transitionedIntoSimCorporatePukLocked:Z
    :goto_11
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_18

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_18

    const/16 v25, 0x1

    .line 549
    .local v25, transitionedIntoSimServiceProviderPukLocked:Z
    :goto_12
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-eq v6, v0, :cond_19

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_19

    const/4 v11, 0x1

    .line 551
    .local v11, transitionedIntoPermBlocked:Z
    :goto_13
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v27

    if-eqz v27, :cond_1a

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_1a

    const/4 v4, 0x1

    .line 553
    .local v4, isIccCardRemoved:Z
    :goto_14
    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v6, v0, :cond_1b

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v27

    if-eqz v27, :cond_1b

    const/4 v3, 0x1

    .line 557
    .local v3, isIccCardAdded:Z
    :goto_15
    if-eqz v13, :cond_1c

    .line 558
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    const-string v27, "Notify SIM Ready!"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 559
    :cond_2
    const-string v27, "READY"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_3
    :goto_16
    if-eqz v4, :cond_35

    .line 645
    new-instance v27, Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 648
    const-string v27, "Notify SIM is removed and reset the AdnCache."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 652
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xd

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 656
    :cond_5
    :goto_17
    return-void

    .line 509
    .end local v3           #isIccCardAdded:Z
    .end local v4           #isIccCardRemoved:Z
    .end local v7           #transitionedIntoAbsent:Z
    .end local v8           #transitionedIntoCardIOError:Z
    .end local v9           #transitionedIntoNetworkLocked:Z
    .end local v10           #transitionedIntoNetworkPukLocked:Z
    .end local v11           #transitionedIntoPermBlocked:Z
    .end local v12           #transitionedIntoPinLocked:Z
    .end local v13           #transitionedIntoReady:Z
    .end local v14           #transitionedIntoRuimCorporateLocked:Z
    .end local v15           #transitionedIntoRuimHrpdLocked:Z
    .end local v16           #transitionedIntoRuimNetwork1Locked:Z
    .end local v17           #transitionedIntoRuimNetwork2Locked:Z
    .end local v18           #transitionedIntoRuimRuimLocked:Z
    .end local v19           #transitionedIntoRuimServiceProviderLocked:Z
    .end local v20           #transitionedIntoSimCorporateLocked:Z
    .end local v21           #transitionedIntoSimCorporatePukLocked:Z
    .end local v22           #transitionedIntoSimNetworkSubsetLocked:Z
    .end local v23           #transitionedIntoSimNetworkSubsetPukLocked:Z
    .end local v24           #transitionedIntoSimServiceProviderLocked:Z
    .end local v25           #transitionedIntoSimServiceProviderPukLocked:Z
    .end local v26           #transitionedIntoSimSimLocked:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 511
    .restart local v13       #transitionedIntoReady:Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 514
    .restart local v12       #transitionedIntoPinLocked:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 516
    .restart local v7       #transitionedIntoAbsent:Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 518
    .restart local v8       #transitionedIntoCardIOError:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 520
    .restart local v9       #transitionedIntoNetworkLocked:Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 522
    .restart local v22       #transitionedIntoSimNetworkSubsetLocked:Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 524
    .restart local v20       #transitionedIntoSimCorporateLocked:Z
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 526
    .restart local v24       #transitionedIntoSimServiceProviderLocked:Z
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 528
    .restart local v26       #transitionedIntoSimSimLocked:Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 530
    .restart local v16       #transitionedIntoRuimNetwork1Locked:Z
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 532
    .restart local v17       #transitionedIntoRuimNetwork2Locked:Z
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 534
    .restart local v15       #transitionedIntoRuimHrpdLocked:Z
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 536
    .restart local v14       #transitionedIntoRuimCorporateLocked:Z
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 538
    .restart local v19       #transitionedIntoRuimServiceProviderLocked:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 540
    .restart local v18       #transitionedIntoRuimRuimLocked:Z
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_f

    .line 542
    .restart local v10       #transitionedIntoNetworkPukLocked:Z
    :cond_16
    const/16 v23, 0x0

    goto/16 :goto_10

    .line 544
    .restart local v23       #transitionedIntoSimNetworkSubsetPukLocked:Z
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_11

    .line 546
    .restart local v21       #transitionedIntoSimCorporatePukLocked:Z
    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_12

    .line 549
    .restart local v25       #transitionedIntoSimServiceProviderPukLocked:Z
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_13

    .line 551
    .restart local v11       #transitionedIntoPermBlocked:Z
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 553
    .restart local v4       #isIccCardRemoved:Z
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 560
    .restart local v3       #isIccCardAdded:Z
    :cond_1c
    if-eqz v12, :cond_1f

    .line 562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1d

    const-string v27, "Notify SIM pin or puk locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 563
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 564
    const-string v28, "LOCKED"

    sget-object v27, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_1e

    const-string v27, "PIN"

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_1e
    const-string v27, "PUK"

    goto :goto_18

    .line 567
    :cond_1f
    if-eqz v7, :cond_21

    .line 568
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_20

    const-string v27, "Notify SIM missing."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 569
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 570
    const-string v27, "ABSENT"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 572
    :cond_21
    if-eqz v8, :cond_23

    .line 573
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_22

    const-string v27, "Notify SIM Card IO Error."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 574
    :cond_22
    const-string v27, "CARD_IO_ERROR"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 575
    :cond_23
    if-eqz v9, :cond_25

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24

    const-string v27, "Notify SIM network locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 577
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 578
    const-string v27, "LOCKED"

    const-string v28, "SIM NETWORK"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 580
    :cond_25
    if-eqz v22, :cond_26

    .line 581
    const-string v27, "Notify SIM network Subset locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 582
    const-string v27, "LOCKED"

    const-string v28, "SIM NETWORK SUBSET"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 584
    :cond_26
    if-eqz v20, :cond_27

    .line 585
    const-string v27, "Notify SIM Corporate locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 586
    const-string v27, "LOCKED"

    const-string v28, "SIM CORPORATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 588
    :cond_27
    if-eqz v24, :cond_28

    .line 589
    const-string v27, "Notify SIM Service Provider locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 590
    const-string v27, "LOCKED"

    const-string v28, "SIM SERVICE PROVIDER"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 592
    :cond_28
    if-eqz v26, :cond_29

    .line 593
    const-string v27, "Notify SIM SIM locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 594
    const-string v27, "LOCKED"

    const-string v28, "SIM SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 596
    :cond_29
    if-eqz v16, :cond_2a

    .line 597
    const-string v27, "Notify RUIM network1 locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 598
    const-string v27, "LOCKED"

    const-string v28, "RUIM NETWORK1"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 600
    :cond_2a
    if-eqz v17, :cond_2b

    .line 601
    const-string v27, "Notify RUIM network2 locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 602
    const-string v27, "LOCKED"

    const-string v28, "RUIM NETWORK2"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 604
    :cond_2b
    if-eqz v15, :cond_2c

    .line 605
    const-string v27, "Notify RUIM hrpd locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 606
    const-string v27, "LOCKED"

    const-string v28, "RUIM HRPD"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 608
    :cond_2c
    if-eqz v14, :cond_2d

    .line 609
    const-string v27, "Notify RUIM Corporate locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 610
    const-string v27, "LOCKED"

    const-string v28, "RUIM CORPORATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 612
    :cond_2d
    if-eqz v19, :cond_2e

    .line 613
    const-string v27, "Notify RUIM Service Provider locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 614
    const-string v27, "LOCKED"

    const-string v28, "RUIM SERVICE PROVIDER"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 616
    :cond_2e
    if-eqz v18, :cond_2f

    .line 617
    const-string v27, "Notify RUIM RUIM locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 618
    const-string v27, "LOCKED"

    const-string v28, "RUIM RUIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 620
    :cond_2f
    if-eqz v10, :cond_30

    .line 621
    const-string v27, "Notify SIM LOCK BLOCK."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 622
    const-string v27, "LOCKED"

    const-string v28, "SIM LOCK BLOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 624
    :cond_30
    if-eqz v23, :cond_31

    .line 625
    const-string v27, "Notify SIM LOCK NETWORK SUBSET BLOCK."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 626
    const-string v27, "LOCKED"

    const-string v28, "SIM LOCK NETWORK SUBSET BLOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 628
    :cond_31
    if-eqz v21, :cond_32

    .line 629
    const-string v27, "Notify SIM LOCK CORPORATE BLOCK."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 630
    const-string v27, "LOCKED"

    const-string v28, "SIM LOCK CORPORATE BLOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 632
    :cond_32
    if-eqz v25, :cond_33

    .line 633
    const-string v27, "Notify SIM LOCK ERVICE PROVIDERBLOCK."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 634
    const-string v27, "LOCKED"

    const-string v28, "SIM LOCK SERVICE PROVIDERBLOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 637
    :cond_33
    if-eqz v11, :cond_3

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v27, v0

    if-eqz v27, :cond_34

    const-string v27, "Notify SIM permanently disabled."

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 639
    :cond_34
    const-string v27, "ABSENT"

    const-string v28, "PERM_DISABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 653
    :cond_35
    if-eqz v3, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0xe

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 669
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 682
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 684
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x10403ee

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x10403ef

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x10403f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 695
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 696
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 697
    return-void

    .line 684
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x10403eb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 686
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x10403ec

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 724
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 729
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 730
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 731
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 730
    goto :goto_1

    .line 733
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 704
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 705
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 710
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 711
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 712
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 711
    goto :goto_1

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 740
    const-string/jumbo v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 745
    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 436
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 418
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 226
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 5

    .prologue
    .line 893
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 894
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v4, "[IccCard] IccCardStatus is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 948
    :cond_0
    :goto_0
    return-object v2

    .line 902
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v3

    if-nez v3, :cond_3

    .line 903
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardFaulty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "persist.cust.tel.adapt"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 905
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 907
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 911
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 913
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_5

    .line 919
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 922
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_a

    .line 927
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 929
    .local v0, csimState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 932
    .local v2, usimState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CSIM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 934
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 937
    invoke-direct {p0, v0, v2, v0}, Lcom/android/internal/telephony/IccCard;->getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    goto/16 :goto_0

    .line 941
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_9

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_0

    :cond_9
    move-object v2, v0

    .line 943
    goto/16 :goto_0

    .line 948
    .end local v0           #csimState:Lcom/android/internal/telephony/IccCard$State;
    .end local v2           #usimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/android/internal/telephony/IccCard$3;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard.getState(): case should never be reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 201
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 205
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 207
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    .line 1082
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1063
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v2

    .line 1065
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1067
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, p1, :cond_2

    .line 1068
    const/4 v2, 0x1

    goto :goto_0

    .line 1065
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 236
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 243
    :cond_0
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 270
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 277
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 253
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 260
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 390
    const/16 v4, 0xf

    .line 395
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 400
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 365
    const/4 v4, 0x7

    .line 369
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 374
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 327
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 307
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 317
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 312
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 247
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 281
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.state"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method
