.class public final enum Lcom/android/internal/telephony/gsm/EONS$CphsType;
.super Ljava/lang/Enum;
.source "EONS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CphsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/EONS$CphsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/EONS$CphsType;

.field public static final enum LONG:Lcom/android/internal/telephony/gsm/EONS$CphsType;

.field public static final enum SHORT:Lcom/android/internal/telephony/gsm/EONS$CphsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/EONS$CphsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->LONG:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/EONS$CphsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/EONS$CphsType;

    sget-object v1, Lcom/android/internal/telephony/gsm/EONS$CphsType;->LONG:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/EONS$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->$VALUES:[Lcom/android/internal/telephony/gsm/EONS$CphsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EONS$CphsType;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/EONS$CphsType;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->$VALUES:[Lcom/android/internal/telephony/gsm/EONS$CphsType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/EONS$CphsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/EONS$CphsType;

    return-object v0
.end method


# virtual methods
.method public isLong()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->LONG:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShort()Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$CphsType;->SHORT:Lcom/android/internal/telephony/gsm/EONS$CphsType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
