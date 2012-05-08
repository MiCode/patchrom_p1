.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 128
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
    .locals 6
    .parameter "intent"

    .prologue
    .line 132
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_0
    const-string v4, "ss"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, absentReason:Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    .line 197
    .end local v0           #absentReason:Ljava/lang/String;
    .local v2, state:Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCard$State;)V

    return-object v4

    .line 144
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 146
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 148
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 149
    const-string v4, "reason"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 153
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 154
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 156
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    const-string v4, "SIM NETWORK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 157
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 158
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    const-string v4, "SIM NETWORK SUBSET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 159
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 160
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    const-string v4, "SIM CORPORATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 161
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 162
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_8
    const-string v4, "SIM SERVICE PROVIDER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 163
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 164
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_9
    const-string v4, "SIM SIM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 165
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 166
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_a
    const-string v4, "RUIM NETWORK1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 167
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 168
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    const-string v4, "RUIM NETWORK2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 169
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 170
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_c
    const-string v4, "RUIM HRPD"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 171
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 172
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_d
    const-string v4, "RUIM CORPORATE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 173
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 174
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_e
    const-string v4, "RUIM SERVICE PROVIDER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 175
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 176
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_f
    const-string v4, "RUIM RUIM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 177
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 178
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_10
    const-string v4, "SIM LOCK BLOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 179
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 180
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_11
    const-string v4, "SIM LOCK NETWORK SUBSET BLOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 181
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 182
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_12
    const-string v4, "SIM LOCK CORPORATE BLOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 183
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 184
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_13
    const-string v4, "SIM LOCK SERVICE PROVIDERBLOCK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 185
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 188
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_14
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 191
    .end local v1           #lockedReason:Ljava/lang/String;
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_15
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 192
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0

    .line 195
    .end local v2           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_16
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v2       #state:Lcom/android/internal/telephony/IccCard$State;
    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
