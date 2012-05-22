.class public Lcom/scalado/app/rewind/SizeFinder;
.super Ljava/lang/Object;
.source "SizeFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/SizeFinder$1;,
        Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE_FACTOR:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "SizeFinder"


# instance fields
.field private mArMaxDiff:F

.field private mDesiredPicPixels:I

.field private mDesiredPreviewPixels:I

.field private mExactPicDims:Lcom/scalado/base/Size;

.field private mPicMaxDiff:I

.field private mPicMinDiff:I

.field private mPicTol:I

.field private mPreviewMaxDiff:I

.field private mPreviewMinDiff:I

.field private mPreviewTol:I

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSelectedPicDims:Lcom/scalado/base/Size;

.field private mSelectedPreviewDims:Lcom/scalado/base/Size;


# direct methods
.method public constructor <init>(ILcom/scalado/base/Size;)V
    .locals 2
    .parameter "numPixels"
    .parameter "screenDims"

    .prologue
    const v1, 0x3dcccccd

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    .line 27
    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    .line 31
    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    .line 32
    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    .line 47
    if-gtz p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numPixels <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad screenDims"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput p1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    .line 54
    iput-object p2, p0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    .line 55
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    .line 56
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    .line 57
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "exactPicDims"
    .parameter "screenDims"

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    .line 27
    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    .line 31
    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    .line 32
    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    .line 61
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad screenDims"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    .line 65
    iput-object p2, p0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    .line 67
    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    .line 68
    const v0, 0x3dcccccd

    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    .line 69
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/SizeFinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    return v0
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/SizeFinder;->arDiff(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/scalado/app/rewind/SizeFinder;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F

    return v0
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/SizeFinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicMaxDiff:I

    return v0
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/SizeFinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    return v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/SizeFinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewMaxDiff:I

    return v0
.end method

.method private ar(Lcom/scalado/base/Size;)F
    .locals 2
    .parameter "dims"

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private arDiff(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F
    .locals 3
    .parameter "picDims"
    .parameter "previewDims"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/SizeFinder;->ar(Lcom/scalado/base/Size;)F

    move-result v0

    .line 209
    .local v0, picAr:F
    invoke-direct {p0, p2}, Lcom/scalado/app/rewind/SizeFinder;->ar(Lcom/scalado/base/Size;)F

    move-result v1

    .line 210
    .local v1, previewAr:F
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    return v2
.end method

.method private filterByNumPixels(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "ref"
    .parameter "tol"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/base/Size;

    .line 172
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v3

    .line 173
    .local v3, numPixels:I
    sub-int v4, v3, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, p3, :cond_0

    .line 174
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0           #dims:Lcom/scalado/base/Size;
    .end local v3           #numPixels:I
    :cond_1
    return-object v1
.end method

.method private filterPicDimsByNumPixels(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, picSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    const/4 v0, 0x0

    .line 142
    .local v0, filteredPicSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    :cond_0
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/app/rewind/SizeFinder;->filterByNumPixels(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    if-ge v1, v2, :cond_1

    .line 144
    const v1, 0x3f8ccccd

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    .line 146
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicTol:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    if-lt v1, v2, :cond_0

    .line 147
    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/SizeFinder;->minNumPixelsDiff(Ljava/util/List;I)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicMinDiff:I

    .line 148
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/SizeFinder;->maxNumPixelsDiff(Ljava/util/List;I)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicMaxDiff:I

    .line 149
    return-object v0
.end method

.method private filterPreviewDimsByNumPixels(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, previewSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, filteredPreviewSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    :cond_0
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/app/rewind/SizeFinder;->filterByNumPixels(Ljava/util/List;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    if-ge v1, v2, :cond_1

    .line 158
    const v1, 0x3f8ccccd

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewTol:I

    iget v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    if-lt v1, v2, :cond_0

    .line 162
    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/SizeFinder;->minNumPixelsDiff(Ljava/util/List;I)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewMinDiff:I

    .line 164
    iget v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPreviewPixels:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/SizeFinder;->maxNumPixelsDiff(Ljava/util/List;I)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mPreviewMaxDiff:I

    .line 166
    return-object v0
.end method

.method private maxNumPixelsDiff(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "ref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    const/4 v3, -0x1

    .line 191
    .local v3, maxValue:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/base/Size;

    .line 192
    .local v1, dims:Lcom/scalado/base/Size;
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 193
    .local v0, diff:I
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 194
    goto :goto_0

    .line 195
    .end local v0           #diff:I
    .end local v1           #dims:Lcom/scalado/base/Size;
    :cond_0
    return v3
.end method

.method private minNumPixelsDiff(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "ref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    const v3, 0x7fffffff

    .line 182
    .local v3, minValue:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/base/Size;

    .line 183
    .local v1, dims:Lcom/scalado/base/Size;
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/SizeFinder;->numPixels(Lcom/scalado/base/Size;)I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 184
    .local v0, diff:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 185
    goto :goto_0

    .line 186
    .end local v0           #diff:I
    .end local v1           #dims:Lcom/scalado/base/Size;
    :cond_0
    return v3
.end method

.method private numPixels(Lcom/scalado/base/Size;)I
    .locals 2
    .parameter "dims"

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private useExactPicDims()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, filteredPicSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    iget-object v1, p0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iput v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicMinDiff:I

    .line 135
    iput v2, p0, Lcom/scalado/app/rewind/SizeFinder;->mPicMaxDiff:I

    .line 136
    return-object v0
.end method


# virtual methods
.method public findSize(Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, picSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    .local p2, previewSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v12, sizeConfigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/app/rewind/SizeFinder$SizeConfig;>;"
    const/4 v3, 0x0

    .line 74
    .local v3, filteredPicSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    const/4 v4, 0x0

    .line 75
    .local v4, filteredPreviewSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPicDims:Lcom/scalado/base/Size;

    .line 76
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPreviewDims:Lcom/scalado/base/Size;

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    if-nez v14, :cond_1

    .line 78
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/SizeFinder;->filterPicDimsByNumPixels(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 82
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/SizeFinder;->filterPreviewDimsByNumPixels(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_2

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/SizeFinder;->useExactPicDims()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 86
    :cond_2
    const/high16 v14, -0x4080

    move-object/from16 v0, p0

    iput v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F

    .line 87
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_4

    .line 88
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/base/Size;

    .line 89
    .local v9, picSize:Lcom/scalado/base/Size;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_3

    .line 90
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/scalado/base/Size;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/scalado/app/rewind/SizeFinder;->arDiff(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)F

    move-result v2

    .line 91
    .local v2, arDiff:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mArMaxDiff:F

    .line 92
    new-instance v15, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/scalado/base/Size;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v9, v14, v1}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;-><init>(Lcom/scalado/app/rewind/SizeFinder;Lcom/scalado/base/Size;Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SizeFinder$1;)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 87
    .end local v2           #arDiff:F
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 95
    .end local v7           #j:I
    .end local v9           #picSize:Lcom/scalado/base/Size;
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;

    .line 96
    .local v11, sizeConfig:Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    #calls: Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->computeScore()V
    invoke-static {v11}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->access$100(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)V

    goto :goto_4

    .line 98
    .end local v11           #sizeConfig:Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Lcom/scalado/app/rewind/SizeFinder$SizeConfig;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/scalado/app/rewind/SizeFinder$SizeConfig;

    .line 100
    .local v13, sizeConfigsArray:[Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    if-eqz v14, :cond_6

    .line 102
    const-string v14, "SizeFinder"

    const-string v15, "Candidates for picSize=%dx%d, screen=%dx%d:"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mExactPicDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_5
    const/4 v5, 0x0

    :goto_6
    array-length v14, v13

    if-ge v5, v14, :cond_7

    .line 112
    aget-object v11, v13, v5

    .line 113
    .restart local v11       #sizeConfig:Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    #getter for: Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->access$200(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;

    move-result-object v8

    .line 114
    .local v8, picDims:Lcom/scalado/base/Size;
    #getter for: Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->access$300(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;

    move-result-object v10

    .line 115
    .local v10, prevDims:Lcom/scalado/base/Size;
    const-string v14, "SizeFinder"

    const-string v15, "  pic=%dx%d, preview=%dx%d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 107
    .end local v8           #picDims:Lcom/scalado/base/Size;
    .end local v10           #prevDims:Lcom/scalado/base/Size;
    .end local v11           #sizeConfig:Lcom/scalado/app/rewind/SizeFinder$SizeConfig;
    :cond_6
    const-string v14, "SizeFinder"

    const-string v15, "Candidates for #pixels=%d, screen=%dx%d:"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mDesiredPicPixels:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getWidth()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/SizeFinder;->mScreenDims:Lcom/scalado/base/Size;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Size;->getHeight()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 119
    :cond_7
    const/4 v14, 0x0

    aget-object v14, v13, v14

    #getter for: Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPicDims:Lcom/scalado/base/Size;
    invoke-static {v14}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->access$200(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPicDims:Lcom/scalado/base/Size;

    .line 120
    const/4 v14, 0x0

    aget-object v14, v13, v14

    #getter for: Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->mPreviewDims:Lcom/scalado/base/Size;
    invoke-static {v14}, Lcom/scalado/app/rewind/SizeFinder$SizeConfig;->access$300(Lcom/scalado/app/rewind/SizeFinder$SizeConfig;)Lcom/scalado/base/Size;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPreviewDims:Lcom/scalado/base/Size;

    goto/16 :goto_1
.end method

.method public getPictureDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPicDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getPreviewDimensions()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/scalado/app/rewind/SizeFinder;->mSelectedPreviewDims:Lcom/scalado/base/Size;

    return-object v0
.end method
