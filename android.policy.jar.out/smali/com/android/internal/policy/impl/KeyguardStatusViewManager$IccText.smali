.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccText"
.end annotation


# instance fields
.field iccErrorMessage:I

.field iccErrorMessageShort:I

.field iccInstructionsWhenPatternDisabled:I

.field iccInstructionsWhenPatternEnabled:I

.field iccMissingInstructions:I

.field iccMissingMessage:I

.field iccMissingMessageShort:I

.field iccPinLockedMessage:I

.field iccPukLockedInstructions:I

.field iccPukLockedMessage:I

.field networkLockedMessage:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 878
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccPukLockedMessage:I

    .line 880
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccPukLockedInstructions:I

    .line 881
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccMissingMessage:I

    .line 882
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccMissingInstructions:I

    .line 883
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccErrorMessage:I

    .line 884
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccInstructionsWhenPatternEnabled:I

    .line 885
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccInstructionsWhenPatternDisabled:I

    .line 886
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccPinLockedMessage:I

    .line 887
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccMissingMessageShort:I

    .line 888
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccErrorMessageShort:I

    .line 889
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->networkLockedMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    return-void
.end method
