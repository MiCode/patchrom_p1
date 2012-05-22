.class Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationStatistics"
.end annotation


# instance fields
.field private mId:I

.field private mImageIndex:I

.field private mRelDx:F

.field private mRelDy:F

.field private mRelVftDx:F

.field private mRelVftDy:F

.field private mSeqCount:I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V
    .locals 0
    .parameter
    .parameter "seqCount"
    .parameter "index"
    .parameter "id"
    .parameter "relDx"
    .parameter "relDy"
    .parameter "relVftDx"
    .parameter "relVftDy"

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I

    .line 1145
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I

    .line 1146
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I

    .line 1147
    iput p5, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F

    .line 1148
    iput p6, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F

    .line 1149
    iput p7, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F

    .line 1150
    iput p8, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F

    .line 1151
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1133
    invoke-direct/range {p0 .. p8}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V

    return-void
.end method

.method static synthetic access$2800(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F

    return v0
.end method

.method static synthetic access$2900(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F

    return v0
.end method

.method static synthetic access$3000(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F

    return v0
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F

    return v0
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I

    return v0
.end method

.method static synthetic access$3400(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I

    return v0
.end method
