.class Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionOptimizer"
.end annotation


# instance fields
.field private mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

.field private mConnections:[I

.field private mCurConnections:[I

.field private mCurConnectionsBucketIndexes:[I

.field private mEndReached:Z

.field private mFromIds:[I

.field private mInUse:[Z

.field private mMinValue:F

.field private mPossibilities:I

.field private mToIds:[I

.field private mToIdsMap:[I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V
    .locals 8
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter
    .parameter "fromIds"
    .parameter "toIds"
    .parameter "buckets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;[I[I[",
            "Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 3299
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3292
    const v4, 0x7f7fffff

    iput v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3294
    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    .line 3300
    iput-object p7, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 3301
    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    .line 3302
    iput-object p6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    .line 3303
    const/4 v1, 0x0

    .line 3304
    .local v1, i:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mInUse:[Z

    .line 3305
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    .line 3306
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    .line 3307
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    .line 3308
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mInUse:[Z

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([ZZ)V

    .line 3309
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIdsMap:[I

    .line 3310
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 3311
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3312
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4, v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 3311
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3315
    .end local v2           #j:I
    :cond_1
    const/4 v0, 0x1

    .line 3316
    .local v0, N:I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 3317
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v4

    mul-int/2addr v0, v4

    .line 3318
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 3319
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget v3, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3320
    .local v3, toId:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v3, v4, v1

    .line 3322
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3323
    const/4 v0, 0x0

    .line 3333
    .end local v3           #toId:I
    :cond_2
    const-string v4, "ImageConnector: # possibilities = %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3334
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    .line 3335
    return-void

    .line 3326
    .restart local v3       #toId:I
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v4, v4, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 3327
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v7, v4, v1

    .line 3316
    .end local v3           #toId:I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3329
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v6, v4, v1

    .line 3330
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v6, v4, v1

    goto :goto_3
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 3284
    invoke-direct/range {p0 .. p7}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V

    return-void
.end method

.method static synthetic access$10400(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    return v0
.end method

.method static synthetic access$10600(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    return-object v0
.end method

.method static synthetic access$10700(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    return-object v0
.end method

.method private connect(IJ)V
    .locals 10
    .parameter "index"
    .parameter "startTime"

    .prologue
    const/4 v9, 0x1

    .line 3365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3367
    .local v1, currentTime:J
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    array-length v5, v5

    if-ge p1, v5, :cond_0

    sub-long v5, v1, p2

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$11000()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 3369
    :cond_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->eval()V

    .line 3393
    :cond_1
    :goto_0
    return-void

    .line 3372
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v0, v5, p1

    .line 3373
    .local v0, bucket:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v5

    if-le v5, v9, :cond_4

    .line 3374
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 3375
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget v4, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3377
    .local v4, toId:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3374
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3381
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5, v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 3382
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aput v4, v5, p1

    .line 3383
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aput v3, v5, p1

    .line 3384
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    .line 3386
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v6, 0x0

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$10902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 3387
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    const/4 v6, -0x1

    aput v6, v5, p1

    goto :goto_2

    .line 3390
    .end local v3           #i:I
    .end local v4           #toId:I
    :cond_4
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, p2, p3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    goto :goto_0
.end method

.method private eval()V
    .locals 5

    .prologue
    .line 3396
    const/4 v2, 0x0

    .line 3397
    .local v2, s:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 3398
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnectionsBucketIndexes:[I

    aget v0, v3, v1

    .line 3399
    .local v0, bi:I
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mBuckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    aget-object v3, v3, v1

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v3

    aget-object v3, v3, v0

    iget v3, v3, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    add-float/2addr v2, v3

    .line 3397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3401
    .end local v0           #bi:I
    :cond_0
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 3402
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z

    .line 3403
    iput v2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3404
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3405
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mCurConnections:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 3404
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3408
    :cond_1
    return-void
.end method

.method private findBestConnection()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3347
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I

    if-nez v3, :cond_1

    .line 3358
    :cond_0
    return-void

    .line 3350
    :cond_1
    const v3, 0x7f7fffff

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mMinValue:F

    .line 3351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3352
    .local v1, startTime:J
    invoke-direct {p0, v7, v1, v2}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->connect(IJ)V

    .line 3353
    const-string v3, "*** Connections:"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3355
    const-string v3, "[%d] %d -> %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->access$8800(Ljava/lang/String;)V

    .line 3354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPosForToId(I)I
    .locals 2
    .parameter "id"

    .prologue
    .line 3338
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3339
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mToIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 3343
    .end local v0           #j:I
    :goto_1
    return v0

    .line 3338
    .restart local v0       #j:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3343
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
