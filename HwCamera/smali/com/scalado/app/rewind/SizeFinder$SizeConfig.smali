.class Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
.super Ljava/lang/Object;
.source "SizeFinder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/SizeFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeConfig"
.end annotation


# instance fields
.field private mPicDims:Lcom/scalado/base/Size;

.field private mPreviewDims:Lcom/scalado/base/Size;

.field private mScore:F

.field final synthetic this$0:Lcom/scalado/app/rewind/SizeFinder;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter "picDims"
    .parameter "previewDims"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;

    .line 220
    iput-object p3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SizeFinder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;-><init>(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    return-void
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->computeScore()V

    return-void
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method private computeScore()V
    .locals 6

    .prologue
    .line 224
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    iget-object v4, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;

    iget-object v5, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;

    #calls: Lcom/scalado/app/rewind/SizeFinder;->arDiff(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F
    invoke-static {v3, v4, v5}, Lcom/scalado/app/rewind/SizeFinder;->access$400(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F

    move-result v0

    .line 225
    .local v0, arDiff:F
    const/4 v2, 0x0

    .line 226
    .local v2, score:F
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$500(Lcom/scalado/app/rewind/SizeFinder;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$500(Lcom/scalado/app/rewind/SizeFinder;)F

    move-result v3

    div-float v2, v0, v3

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mPicMaxDiff:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$600(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v3

    if-lez v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    iget-object v4, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;

    #calls: Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/SizeFinder;->access$700(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SizeFinder;->access$800(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v1, v3

    .line 231
    .local v1, diff:F
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mPicMaxDiff:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$600(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    .line 233
    .end local v1           #diff:F
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mPreviewMaxDiff:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$900(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v3

    if-lez v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    iget-object v4, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;

    #calls: Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/SizeFinder;->access$700(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SizeFinder;->access$1000(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v1, v3

    .line 236
    .restart local v1       #diff:F
    iget-object v3, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->this$0:Lcom/scalado/app/rewind/SizeFinder;

    #getter for: Lcom/scalado/app/rewind/SizeFinder;->mPreviewMaxDiff:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SizeFinder;->access$900(Lcom/scalado/app/rewind/SizeFinder;)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    .line 238
    .end local v1           #diff:F
    :cond_2
    iput v2, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mScore:F

    .line 239
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 242
    move-object v0, p1

    check-cast v0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;

    .line 243
    .local v0, them:Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mScore:F

    iget v2, v0, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mScore:F

    sub-float/2addr v1, v2

    const v2, 0x461c4000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method
