.class public Lcom/scalado/app/ui/Strip$Transition;
.super Ljava/lang/Object;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/Strip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Transition"
.end annotation


# instance fields
.field mDst:Lcom/scalado/app/ui/StripLayout;

.field mT:J

.field final synthetic this$0:Lcom/scalado/app/ui/Strip;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/Strip;Lcom/scalado/app/ui/StripLayout;J)V
    .locals 0
    .parameter
    .parameter "layout"
    .parameter "t"

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/scalado/app/ui/Strip$Transition;->this$0:Lcom/scalado/app/ui/Strip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    iput-object p2, p0, Lcom/scalado/app/ui/Strip$Transition;->mDst:Lcom/scalado/app/ui/StripLayout;

    .line 1439
    iput-wide p3, p0, Lcom/scalado/app/ui/Strip$Transition;->mT:J

    .line 1440
    return-void
.end method
