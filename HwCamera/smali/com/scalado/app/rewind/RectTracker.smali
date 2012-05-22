.class public Lcom/scalado/app/rewind/RectTracker;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$1;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;,
        Lcom/scalado/app/rewind/RectTracker$Comparison;,
        Lcom/scalado/app/rewind/RectTracker$StatisticPoint;,
        Lcom/scalado/app/rewind/RectTracker$TrackedRect;,
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;,
        Lcom/scalado/app/rewind/RectTracker$AbstractFace;,
        Lcom/scalado/app/rewind/RectTracker$TrackedImage;,
        Lcom/scalado/app/rewind/RectTracker$RankedId;,
        Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;,
        Lcom/scalado/app/rewind/RectTracker$State;,
        Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    }
.end annotation


# static fields
.field private static final BLINK_DIST_THRES:I = 0x5

.field private static final BLINK_THRES:I = 0x14

.field private static final BLINK_UPPER_THRES:I = 0x5a

.field private static final DEFAULT_MAX_TRANSLATION:F = 0.15f

.field private static final MIN_FACE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RectTracker"

.field private static final UNKNOWN_SCORE:F = -4.0f

.field private static mBlinkMultiplier:F = 0.0f

.field private static final mBlinkThreshold:I = 0x3c

.field private static maxConnectTime:J

.field private static sDxdyCount:I

.field private static sLogging:Z

.field private static sMaxRelDx:F

.field private static sMaxRelDy:F

.field private static sMaxRelVftDx:F

.field private static sMaxRelVftDy:F

.field private static sSequenceCount:I

.field private static sTranslations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlignRectSizes:Z

.field private mAllFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyzeComplete:Z

.field private mBestImage:I

.field private mBestImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mBestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$RankedId;",
            ">;"
        }
    .end annotation
.end field

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private final mDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

.field private mFaceScaleX:F

.field private mFaceScaleY:F

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFacesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredFaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation
.end field

.field private mGuessRects:Z

.field private mImageDims:Lcom/scalado/base/Size;

.field private mImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsComplete:Z

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLockingEnabled:Z

.field private mMatches:[I

.field private mMaxNumRects:I

.field private mMaxScoreImage:I

.field private mMaxTranslation:F

.field private mMinFaceDiffX:F

.field private mMinFaceDiffY:F

.field private mMinMatches:I

.field private mNumAdded:I

.field private mNumGuessed:I

.field private mPredefined:Z

.field private mRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

.field private mState:Lcom/scalado/app/rewind/RectTracker$State;

.field private final mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mUseVfTracker:Z

.field private mUseVftForDelta:Z

.field private mUtils:Lcom/scalado/app/rewind/TrackerUtils;

.field private final mVftDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation
.end field

.field private maxDisplacementModifier:F

.field totalFaceDetectionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 72
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    .line 75
    const/high16 v0, 0x3f80

    sput v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    .line 114
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 115
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 116
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 117
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 118
    sput v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    .line 121
    sput v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8
    .parameter "size"

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4090

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 43
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 46
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 49
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 59
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 60
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 61
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 62
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 64
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 65
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 67
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 77
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 78
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 87
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 88
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 89
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 90
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 92
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 93
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 103
    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 107
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 145
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager;I)V
    .locals 8
    .parameter "srcMgr"
    .parameter "size"

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4090

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 43
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 46
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 49
    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 54
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 59
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 60
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 61
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 62
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 64
    iput-boolean v4, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 65
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 67
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 77
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 78
    iput-boolean v3, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 87
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 88
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 89
    const/high16 v1, 0x3fc0

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 90
    const/high16 v1, 0x4000

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 92
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 93
    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 103
    const v1, 0x3e19999a

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 107
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v1, p0, v5}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 152
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v2, p0, v0, v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 157
    new-instance v1, Lcom/scalado/app/rewind/TrackerUtils;

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {v1, v2}, Lcom/scalado/app/rewind/TrackerUtils;-><init>(Lcom/scalado/app/rewind/SourceManager;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    .line 158
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/TrackerUtils;->getFaceDetectionDims()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 159
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceDetectionDims width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public constructor <init>([[Landroid/graphics/Rect;[[F)V
    .locals 12
    .parameter "rects"
    .parameter "deltas"

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x4090

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 43
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 44
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 45
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    .line 46
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v5, p0, v9}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 49
    iput v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 54
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 59
    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 60
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    .line 61
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    .line 62
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    .line 64
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    .line 65
    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    .line 67
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    .line 77
    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 78
    iput-boolean v7, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 87
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 88
    iput v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 89
    const/high16 v5, 0x3fc0

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 90
    const/high16 v5, 0x4000

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 92
    iput v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    .line 93
    iput v10, p0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    .line 103
    const v5, 0x3e19999a

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 107
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$State;

    invoke-direct {v5, p0, v9}, Lcom/scalado/app/rewind/RectTracker$State;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 109
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    .line 165
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    .line 166
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 168
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    invoke-direct {v4, p0, v0, v9}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 169
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v4           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 172
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    aget-object v5, p1, v0

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 173
    add-int/lit8 v1, v2, 0x1

    .line 174
    .local v1, id:I
    aget-object v5, p1, v0

    aget-object v5, v5, v2

    invoke-direct {p0, v0, v1, v5}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 171
    .end local v1           #id:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v2           #j:I
    :cond_2
    const/4 v0, 0x0

    :goto_3
    array-length v5, p2

    if-ge v0, v5, :cond_3

    .line 178
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    invoke-direct {v3, p0, v9}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 179
    .local v3, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    aget-object v5, p2, v0

    aget v5, v5, v7

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 180
    aget-object v5, p2, v0

    aget v5, v5, v8

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 181
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 183
    .end local v3           #p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_3
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    .line 184
    iput-boolean v8, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    .line 185
    return-void
.end method

.method static synthetic access$11000()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lcom/scalado/app/rewind/RectTracker;->maxConnectTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/scalado/app/rewind/RectTracker;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    return v0
.end method

.method static synthetic access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/scalado/app/rewind/RectTracker;->mBlinkMultiplier:F

    return v0
.end method

.method static synthetic access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/scalado/app/rewind/RectTracker;I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    return-object v0
.end method

.method private accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;)",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .line 1668
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1669
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1670
    .local v1, n:I
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1671
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1672
    .local v3, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    move v0, v2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1673
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$316(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1674
    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$416(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1676
    :cond_0
    if-ge p2, p1, :cond_1

    .line 1677
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1678
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    neg-float v4, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1680
    :cond_1
    return-object v3
.end method

.method private accumulateDelta(IILjava/util/Vector;Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 4
    .parameter "i0"
    .parameter "i1"
    .parameter
    .parameter "dst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ")",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;"
        }
    .end annotation

    .prologue
    .local p3, deltas:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$StatisticPoint;>;"
    const/4 v3, 0x0

    .line 1687
    if-ne p1, p2, :cond_1

    .line 1688
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1689
    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1702
    :cond_0
    :goto_0
    return-object p4

    .line 1692
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1693
    .local v2, start:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1694
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_2

    .line 1695
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$316(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1696
    invoke-virtual {p3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$416(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1694
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1698
    :cond_2
    if-ge p2, p1, :cond_0

    .line 1699
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1700
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v3

    neg-float v3, v3

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {p4, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    goto :goto_0
.end method

.method private addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1786
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1787
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aput-object p4, v0, p3

    .line 1788
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 320
    return-void
.end method

.method private addRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "image"
    .parameter "id"
    .parameter "rect"
    .parameter "sessionRect"

    .prologue
    .line 323
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 324
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 325
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 326
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1, v0}, Lcom/scalado/app/rewind/RectTracker;->updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 327
    return-void
.end method

.method private alignRectSizes()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f00

    .line 3064
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3065
    .local v3, id:I
    const/4 v5, -0x1

    .line 3066
    .local v5, wMax:I
    const/4 v0, -0x1

    .line 3067
    .local v0, hMax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 3068
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 3069
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_1

    .line 3070
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3071
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3067
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3074
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 3075
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 3076
    .restart local v4       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v4, :cond_3

    .line 3077
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3078
    .local v6, x:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3079
    .local v7, y:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 3080
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 3081
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v5

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 3082
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v8

    int-to-float v9, v0

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 3074
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3087
    .end local v0           #hMax:I
    .end local v1           #i:I
    .end local v3           #id:I
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #wMax:I
    :cond_4
    return-void
.end method

.method private allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 5
    .parameter "ranked"

    .prologue
    .line 2144
    const/4 v0, 0x1

    .line 2145
    .local v0, allEqual:Z
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2146
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 2147
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$7000(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2148
    const/4 v0, 0x0

    .line 2152
    :cond_0
    return v0

    .line 2146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private analyze2()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1927
    new-instance v6, Ljava/util/Vector;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    .line 1928
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    .line 1929
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1930
    .local v3, id:I
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    invoke-direct {v0, p0, v3, v8}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 1931
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1932
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1933
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 1935
    invoke-direct {p0, v1, v3, v8}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 1936
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1938
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aput-object v4, v6, v1

    .line 1939
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    aget-object v6, v6, v1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {v6, v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1931
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1942
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 1943
    invoke-direct {p0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 1944
    .local v5, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1942
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1947
    :cond_3
    add-int/lit8 v6, v1, -0x1

    if-ltz v6, :cond_4

    .line 1948
    add-int/lit8 v6, v1, -0x1

    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1951
    :cond_4
    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1952
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v3, v6}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/scalado/app/rewind/RectTracker;->relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;

    move-result-object v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5802(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    goto :goto_3

    .line 1957
    .end local v5           #trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1961
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v3           #id:I
    :cond_6
    return-void
.end method

.method private applyViewfinderTracker(Lcom/scalado/base/Image;)V
    .locals 8
    .parameter "image"

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    .line 276
    .local v0, dims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    .line 277
    .local v1, index:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 280
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Image dimensions doesn\'t match!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 284
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v4, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$502(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    .line 285
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v6, :cond_2

    .line 286
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 288
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-nez v6, :cond_3

    .line 289
    new-instance v6, Lcom/scalado/caps/autorama/ViewfinderTracker;

    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    invoke-direct {v6, v7}, Lcom/scalado/caps/autorama/ViewfinderTracker;-><init>(Lcom/scalado/base/Size;)V

    iput-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    .line 292
    :cond_3
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/caps/autorama/ViewfinderTracker;->track(Lcom/scalado/base/Image;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v5

    .line 293
    .local v5, transform:Lcom/scalado/caps/autorama/Transform;
    if-lez v1, :cond_5

    .line 294
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 295
    .local v2, p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 296
    invoke-virtual {v5}, Lcom/scalado/caps/autorama/Transform;->getTranslationDelta()Lcom/scalado/base/Vector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Vector;->getY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 297
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 298
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 299
    .local v3, p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$324(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 300
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v6

    invoke-static {v2, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$424(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 302
    .end local v3           #p0:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2           #p:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    iget v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/scalado/app/rewind/RectTracker;->mNumAdded:I

    .line 306
    return-void
.end method

.method private approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;
    .locals 7
    .parameter "fromId"
    .parameter "toImage"
    .parameter "fromImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 1609
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1614
    .local v3, r:Landroid/graphics/Rect;
    if-le p2, p3, :cond_0

    .line 1615
    move v1, p3

    .line 1616
    .local v1, deltaIndex:I
    const/high16 v2, 0x3f80

    .line 1623
    .local v2, dir:F
    :goto_0
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1624
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p4, p1, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 1625
    .local v4, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1626
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->offset(Landroid/graphics/Rect;F)V
    invoke-static {v0, v3, v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;Landroid/graphics/Rect;F)V

    .line 1627
    return-object v3

    .line 1617
    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    .end local v4           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_0
    if-ge p2, p3, :cond_1

    .line 1618
    move v1, p2

    .line 1619
    .restart local v1       #deltaIndex:I
    const/high16 v2, -0x4080

    .restart local v2       #dir:F
    goto :goto_0

    .line 1621
    .end local v1           #deltaIndex:I
    .end local v2           #dir:F
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "toImage == fromImage"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private calculateOptimalImages2()V
    .locals 4

    .prologue
    .line 1862
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    if-gez v2, :cond_0

    .line 1863
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Best bg image unknown."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1867
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1868
    .local v0, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    .line 1869
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1879
    .local v1, size:I
    return-void
.end method

.method private calculateStatistics()V
    .locals 6

    .prologue
    .line 1214
    const/4 v3, -0x1

    iput v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1216
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1217
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1218
    .local v1, size:I
    iget v3, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-le v1, v3, :cond_0

    .line 1219
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    .line 1215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1223
    .end local v1           #size:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 1224
    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1226
    :cond_2
    return-void
.end method

.method private connect(II)V
    .locals 27
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v18

    .line 3119
    .local v18, fromIds:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->nonOverlapsBetween(Ljava/util/HashMap;II)[I

    move-result-object v9

    .line 3121
    .local v9, toIds:[I
    move-object/from16 v0, v18

    array-length v4, v0

    if-eqz v4, :cond_0

    array-length v4, v9

    if-nez v4, :cond_1

    .line 3230
    :cond_0
    :goto_0
    return-void

    .line 3124
    :cond_1
    const-string v4, "*** Connecting imgs %d -> %d (#ids=(%d,%d))"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v18

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    array-length v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3140
    move-object/from16 v0, v18

    array-length v4, v0

    new-array v10, v4, [Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 3141
    .local v10, buckets:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 3142
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    array-length v5, v9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;-><init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v4, v10, v19

    .line 3143
    const/16 v20, 0x0

    .local v20, j:I
    :goto_2
    array-length v4, v9

    move/from16 v0, v20

    if-ge v0, v4, :cond_2

    .line 3144
    aget v5, v18, v19

    aget v7, v9, v20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker;->distance(IIIILjava/util/HashMap;)F

    move-result v17

    .line 3145
    .local v17, d:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    aget v5, v9, v20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v25

    .line 3146
    .local v25, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v4, v10, v19

    aget v5, v9, v20

    move/from16 v0, v17

    move-object/from16 v1, v25

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->add(IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v5, v0, v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9700(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 3143
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 3148
    .end local v17           #d:F
    .end local v25           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    aget-object v4, v10, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->sort()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9800(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)V

    .line 3141
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 3150
    .end local v20           #j:I
    :cond_3
    array-length v4, v9

    new-array v0, v4, [Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-object/from16 v23, v0

    .line 3151
    .local v23, orderedScores:[Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_4

    .line 3152
    new-instance v4, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v4, v23, v19

    .line 3151
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 3154
    :cond_4
    const/16 v19, 0x0

    :goto_4
    array-length v4, v10

    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 3155
    const/16 v20, 0x0

    .restart local v20       #j:I
    :goto_5
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_5

    .line 3156
    aget-object v4, v23, v20

    aget-object v5, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v5

    aget-object v5, v5, v20

    iget v5, v5, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    const/4 v6, 0x0

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v4, v5, v6}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 3155
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 3154
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 3160
    .end local v20           #j:I
    :cond_6
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v23

    array-length v4, v0

    move/from16 v0, v19

    if-ge v0, v4, :cond_7

    .line 3161
    aget-object v4, v23, v19

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 3160
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 3175
    :cond_7
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mMaxX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$10000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v21

    .line 3176
    .local v21, maxDist:F
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 3177
    const/4 v4, 0x0

    aget-object v4, v23, v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    add-float v21, v21, v4

    .line 3179
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->maxDisplacementModifier:F

    mul-float v21, v21, v4

    .line 3182
    const/16 v22, 0x0

    .line 3183
    .local v22, maxPossibilities:I
    const/16 v19, 0x0

    :goto_7
    array-length v4, v10

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    .line 3184
    const-string v24, ""

    .line 3185
    .local v24, s:Ljava/lang/String;
    const/16 v20, 0x0

    .line 3188
    .restart local v20       #j:I
    :goto_8
    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a

    if-eqz v20, :cond_9

    aget-object v4, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v4

    aget-object v4, v4, v20

    iget v4, v4, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v4, v4, v21

    if-gez v4, :cond_a

    .line 3189
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %2d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v8, v10, v19

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mMatches:[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$9900(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-result-object v8

    aget-object v8, v8, v20

    iget v8, v8, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3190
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 3192
    :cond_a
    aget-object v4, v10, v19

    move/from16 v0, v20

    #setter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v4, v0}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10102(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)I

    .line 3193
    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 3183
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 3199
    .end local v20           #j:I
    .end local v24           #s:Ljava/lang/String;
    :cond_b
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 3201
    .local v3, connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10300(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3202
    const/16 v26, 0x1

    .line 3203
    .local v26, tries:I
    :goto_9
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10400(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_c

    array-length v4, v9

    move/from16 v0, v26

    if-ge v0, v4, :cond_c

    .line 3204
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V

    .line 3205
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;

    .end local v3           #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v11}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;IILjava/util/HashMap;[I[I[Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 3207
    .restart local v3       #connOptimizer:Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mPossibilities:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10500(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)I

    move-result v4

    const v5, 0x186a0

    if-le v4, v5, :cond_d

    .line 3214
    :cond_c
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mEndReached:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10400(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3215
    const-string v4, "RectTracker"

    const-string v5, "Failed to connect!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 3217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/scalado/app/rewind/RectTracker$State;->alignmentSuccessful:Z

    goto/16 :goto_0

    .line 3210
    :cond_d
    #calls: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->findBestConnection()V
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10300(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)V

    .line 3211
    add-int/lit8 v26, v26, 0x1

    .line 3212
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 3221
    :cond_e
    const/16 v19, 0x0

    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10600(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_f

    .line 3222
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mFromIds:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10600(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v12, v4, v19

    .line 3223
    .local v12, id0:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->mConnections:[I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;->access$10700(Lcom/scalado/app/rewind/RectTracker$ConnectionOptimizer;)[I

    move-result-object v4

    aget v13, v4, v19

    .line 3224
    .local v13, id1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move/from16 v14, p1

    move/from16 v15, p2

    invoke-direct/range {v11 .. v16}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(IIIILjava/util/HashMap;)V

    .line 3221
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 3226
    .end local v12           #id0:I
    .end local v13           #id1:I
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Min matches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3227
    const/16 v19, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 3228
    const-string v4, "   %d->%d : %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v19, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v7, v19

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3227
    add-int/lit8 v19, v19, 0x1

    goto :goto_b
.end method

.method private connectAllImages()V
    .locals 8

    .prologue
    .line 3090
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 3091
    .local v5, toOffsets:[I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v3

    .line 3092
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, imageIndex:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3093
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->numRectsInImage(I)I

    move-result v6

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-ne v6, v7, :cond_2

    .line 3094
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 3095
    aget v6, v5, v2

    add-int v4, v1, v6

    .line 3096
    .local v4, to:I
    if-ltz v4, :cond_0

    if-lt v4, v3, :cond_1

    .line 3094
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3099
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3100
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v6, v6, v0

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    if-eq v6, v7, :cond_0

    .line 3103
    invoke-direct {p0, v4, v1}, Lcom/scalado/app/rewind/RectTracker;->connect(II)V

    goto :goto_2

    .line 3092
    .end local v0           #deltaIndex:I
    .end local v2           #j:I
    .end local v4           #to:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3107
    :cond_3
    return-void

    .line 3090
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 3512
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    if-eqz v2, :cond_0

    .line 3513
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v2, p1, p2}, Lcom/scalado/app/rewind/TrackerUtils;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3526
    :goto_0
    return-void

    .line 3516
    :cond_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_1

    .line 3517
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 3518
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 3519
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3520
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 3522
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3524
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :cond_1
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2952
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2953
    .local v3, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2954
    .local v2, key:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2955
    .local v5, oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    array-length v6, v5

    new-array v4, v6, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2956
    .local v4, newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 2957
    aget-object v6, v5, v0

    aput-object v6, v4, v0

    .line 2956
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2959
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2961
    .end local v0           #i:I
    .end local v2           #key:I
    .end local v4           #newVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #oldVal:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    return-object v3
.end method

.method private createFaceDetector()V
    .locals 4

    .prologue
    .line 3498
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/scalado/caps/face/FaceDetectorFactory;->getFaceDetector(ZI)Lcom/scalado/caps/face/FaceDetector;

    move-result-object v2

    iput-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3500
    new-instance v1, Lcom/scalado/caps/face/FeatureSet;

    invoke-direct {v1}, Lcom/scalado/caps/face/FeatureSet;-><init>()V

    .line 3501
    .local v1, toDetect:Lcom/scalado/caps/face/FeatureSet;
    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->SMILE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3502
    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->BLINK:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3503
    sget-object v2, Lcom/scalado/caps/face/FeatureSet$Feature;->EYE:Lcom/scalado/caps/face/FeatureSet$Feature;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/face/FeatureSet;->enableFeature(Lcom/scalado/caps/face/FeatureSet$Feature;)V

    .line 3505
    :try_start_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    invoke-interface {v2, v1}, Lcom/scalado/caps/face/FaceDetector;->setFeaturesToDetect(Lcom/scalado/caps/face/FeatureSet;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3509
    :goto_0
    return-void

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v2, "RectTracker"

    const-string v3, "Failed to set detectable features."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;
    .locals 9
    .parameter "imgIndex"
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    const/4 v6, 0x0

    .line 2157
    if-eqz p4, :cond_0

    .line 2158
    new-instance v0, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 2160
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v5, -0x3f80

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v8, v6

    invoke-direct/range {v1 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private distance(IIIILjava/util/HashMap;)F
    .locals 3
    .parameter "fromImage"
    .parameter "fromId"
    .parameter "toImage"
    .parameter "toId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 3001
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-direct {p0, p2, p3, p1, p5}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3002
    .local v1, r1:Landroid/graphics/Rect;
    invoke-direct {p0, p5, p4, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3003
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    return v2
.end method

.method private enlargeRectangles(FF)V
    .locals 46
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 423
    .local v25, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 424
    .local v26, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 427
    const/high16 v3, 0x3fc0

    .line 429
    .local v3, baseX:F
    const v5, 0x3e4ccccd

    .line 433
    .local v5, breakPoint:F
    mul-float v42, v3, p2

    div-float v4, v42, p1

    .line 435
    .local v4, baseY:F
    sub-float v23, p1, v3

    .line 439
    .local v23, sxBackoffPart:F
    sub-float v24, p2, v4

    .line 440
    .local v24, syBackoffPart:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v22

    .line 442
    .local v22, rect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v42

    const/16 v43, 0x1

    aget-object v42, v42, v43

    if-eqz v42, :cond_2

    .line 458
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v11, v42, v43

    .line 460
    .local v11, faceRelativeSizeX:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/scalado/base/Size;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    div-float v12, v42, v43

    .line 466
    .local v12, faceRelativeSizeY:F
    cmpl-float v42, v11, v5

    if-lez v42, :cond_3

    .line 467
    const/16 v36, 0x0

    .line 478
    .local v36, xBackoffMultiplier:F
    :goto_2
    cmpl-float v42, v12, v5

    if-lez v42, :cond_4

    .line 479
    const/16 v39, 0x0

    .line 491
    .local v39, yBackoffMultiplier:F
    :goto_3
    new-instance v42, Landroid/graphics/Rect;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 492
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v38

    .line 493
    .local v38, xc:F
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v41

    .line 494
    .local v41, yc:F
    mul-float v42, v23, v36

    add-float v42, v42, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v33, v42, v43

    .line 496
    .local v33, w:F
    mul-float v42, v24, v39

    add-float v42, v42, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    mul-float v42, v42, v43

    const/high16 v43, 0x3f00

    mul-float v14, v42, v43

    .line 499
    .local v14, h:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 500
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    sub-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 501
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v38, v33

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 502
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    add-float v43, v41, v14

    invoke-static/range {v43 .. v43}, Ljava/lang/Math;->round(F)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 503
    new-instance v42, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 454
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v14           #h:F
    .end local v33           #w:F
    .end local v36           #xBackoffMultiplier:F
    .end local v38           #xc:F
    .end local v39           #yBackoffMultiplier:F
    .end local v41           #yc:F
    :cond_2
    const-string v42, "No eye rects for img=%d, id=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1300(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v26 .. v26}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 469
    .restart local v11       #faceRelativeSizeX:F
    .restart local v12       #faceRelativeSizeY:F
    :cond_3
    const/high16 v42, 0x3f80

    div-float v43, v11, v5

    sub-float v36, v42, v43

    .restart local v36       #xBackoffMultiplier:F
    goto/16 :goto_2

    .line 481
    :cond_4
    const/high16 v42, 0x3f80

    div-float v43, v12, v5

    sub-float v39, v42, v43

    .restart local v39       #yBackoffMultiplier:F
    goto/16 :goto_3

    .line 508
    .end local v3           #baseX:F
    .end local v4           #baseY:F
    .end local v5           #breakPoint:F
    .end local v11           #faceRelativeSizeX:F
    .end local v12           #faceRelativeSizeY:F
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #rect:Landroid/graphics/Rect;
    .end local v23           #sxBackoffPart:F
    .end local v24           #syBackoffPart:F
    .end local v25           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v26           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v36           #xBackoffMultiplier:F
    .end local v39           #yBackoffMultiplier:F
    :cond_5
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 509
    .local v18, intersection:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 510
    .local v10, faceIntersection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_15

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 511
    .restart local v25       #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v15, v0, :cond_6

    .line 512
    add-int/lit8 v19, v15, 0x1

    .local v19, j:I
    :goto_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_14

    .line 513
    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    .line 512
    :cond_7
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 516
    :cond_8
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 517
    .local v27, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 518
    .local v28, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    if-eqz v42, :cond_7

    .line 521
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v20

    .line 522
    .local v20, r0:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 523
    .local v21, r1:Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 524
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 527
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 528
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    .line 530
    .local v13, facesIntersects:Z
    if-eqz v13, :cond_9

    .line 531
    const-string v42, "*** Faces intersects: %d - %d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v27 .. v27}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v28 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 534
    :cond_9
    const/4 v7, 0x0

    .line 539
    .local v7, didLock:Z
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v42

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_f

    .line 543
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_d

    .line 544
    move-object/from16 v30, v27

    .line 545
    .local v30, trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v31, v28

    .line 550
    .local v31, trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_7
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 552
    .local v6, dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v34, v42, v6

    .line 553
    .local v34, wLeft:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 554
    .local v8, diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v34, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v37

    .line 557
    .local v37, xBorder:I
    const/4 v9, 0x0

    .line 558
    .local v9, doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_e

    .line 559
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 561
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v37

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 563
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    move/from16 v0, v37

    move/from16 v1, v42

    if-lt v0, v1, :cond_b

    .line 565
    :cond_a
    const/4 v9, 0x1

    .line 570
    :cond_b
    :goto_8
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 571
    const-string v42, "Locking. (diff=%f(%f), left=%s, right=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffX:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v30 .. v30}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v31 .. v31}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 577
    const/4 v7, 0x1

    .line 620
    .end local v30           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_c
    :goto_9
    if-eqz v7, :cond_7

    .line 621
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static/range {v27 .. v28}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 622
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    goto/16 :goto_6

    .line 547
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    :cond_d
    move-object/from16 v30, v28

    .line 548
    .restart local v30       #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v31, v27

    .restart local v31       #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_7

    .line 568
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v34       #wLeft:F
    .restart local v37       #xBorder:I
    :cond_e
    const/4 v9, 0x1

    goto :goto_8

    .line 583
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v30           #trLeft:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v31           #trRight:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v34           #wLeft:F
    .end local v37           #xBorder:I
    :cond_f
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_12

    .line 584
    move-object/from16 v32, v27

    .line 585
    .local v32, trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v28

    .line 590
    .local v29, trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :goto_a
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v6, v0

    .line 592
    .restart local v6       #dSum:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v35, v42, v6

    .line 593
    .local v35, wTop:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v8, v0

    .line 594
    .restart local v8       #diff:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v43, v35, v8

    add-float v42, v42, v43

    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->round(F)I

    move-result v40

    .line 597
    .local v40, yBorder:I
    const/4 v9, 0x0

    .line 598
    .restart local v9       #doLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v42, v0

    cmpl-float v42, v8, v42

    if-ltz v42, :cond_13

    .line 599
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 601
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 603
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-le v0, v1, :cond_10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v42

    if-lt v0, v1, :cond_11

    .line 605
    :cond_10
    const/4 v9, 0x1

    .line 610
    :cond_11
    :goto_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker;->mLockingEnabled:Z

    move/from16 v42, v0

    if-eqz v42, :cond_c

    .line 611
    const-string v42, "Locking. (diff=%f(%f), top=%s, bottom=%s)"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker;->mMinFaceDiffY:F

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v32 .. v32}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v29 .. v29}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 617
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 587
    .end local v6           #dSum:F
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v29           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_12
    move-object/from16 v32, v28

    .line 588
    .restart local v32       #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v29, v27

    .restart local v29       #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    goto/16 :goto_a

    .line 608
    .restart local v6       #dSum:F
    .restart local v8       #diff:F
    .restart local v9       #doLock:Z
    .restart local v35       #wTop:F
    .restart local v40       #yBorder:I
    :cond_13
    const/4 v9, 0x1

    goto :goto_b

    .line 511
    .end local v6           #dSum:F
    .end local v7           #didLock:Z
    .end local v8           #diff:F
    .end local v9           #doLock:Z
    .end local v13           #facesIntersects:Z
    .end local v20           #r0:Landroid/graphics/Rect;
    .end local v21           #r1:Landroid/graphics/Rect;
    .end local v27           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v28           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v29           #trBottom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v32           #trTop:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v35           #wTop:F
    .end local v40           #yBorder:I
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 627
    .end local v15           #i:I
    .end local v19           #j:I
    .end local v25           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->filterFaces()Ljava/util/Vector;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    .line 628
    return-void
.end method

.method private estimateDeltas()V
    .locals 15

    .prologue
    .line 1229
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    .line 1230
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1231
    .local v7, id:I
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1232
    .local v8, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_0

    .line 1233
    add-int/lit8 v11, v5, -0x1

    aget-object v10, v8, v11

    .line 1234
    .local v10, prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v1, v8, v5

    .line 1235
    .local v1, curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v10, :cond_1

    if-nez v1, :cond_2

    .line 1232
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1239
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1240
    .local v9, prev:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1241
    .local v0, cur:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    sub-float v3, v11, v12

    .line 1242
    .local v3, dx:F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    sub-float v4, v11, v12

    .line 1243
    .local v4, dy:F
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1244
    .local v2, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v2, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    .line 1245
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->addObservation(FF)V
    invoke-static {v11, v3, v4}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3600(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;FF)V

    goto :goto_1

    .line 1248
    .end local v0           #cur:Landroid/graphics/Rect;
    .end local v1           #curTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v5           #i:I
    .end local v7           #id:I
    .end local v8           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v9           #prev:Landroid/graphics/Rect;
    .end local v10           #prevTr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 1249
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1250
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1251
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #calls: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->compute()V
    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3700(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)V

    .line 1252
    const-string v11, "Delta       %d -> %d: (%f,%f), std dev = (%f, %f), n = %d"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3900(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1256
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1257
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1258
    .restart local v2       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    const-string v11, "(VFT) Delta %d -> %d: (%f,%f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v14, v5, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1261
    :cond_4
    iget-object v11, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v12

    aput v12, v11, v5

    .line 1248
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1263
    .end local v2           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_5
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 1264
    const-string v11, "Total Delta: (%f,%f) std dev = (%f, %f)"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevX:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3800(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/scalado/app/rewind/RectTracker;->mTotalDelta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mStdDevY:F
    invoke-static {v14}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$3900(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method private filterFaces()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$AbstractFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1990
    new-instance v2, Ljava/util/Vector;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/Vector;-><init>(I)V

    .line 1991
    .local v2, faces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$AbstractFace;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1992
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mAllFaces:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1993
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1994
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1991
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1996
    :cond_1
    const/4 v0, 0x1

    .line 1997
    .local v0, add:Z
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1998
    .local v5, lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-virtual {v2, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1999
    const/4 v0, 0x0

    .line 2003
    .end local v5           #lockedWith:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_3
    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2008
    .end local v0           #add:Z
    .end local v1           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-object v2
.end method

.method private findFirstImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1731
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1732
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1740
    :cond_0
    :goto_0
    return v0

    .line 1735
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1736
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1735
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1740
    goto :goto_0
.end method

.method private findLastImage(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, -0x1

    .line 1744
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1745
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_1

    move v0, v2

    .line 1753
    :cond_0
    :goto_0
    return v0

    .line 1748
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1749
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    .line 1748
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1753
    goto :goto_0
.end method

.method private getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 3
    .parameter "index"

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1600
    .local v0, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mSize:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$4000(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVftForDelta:Z

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    check-cast v0, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1603
    .restart local v0       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_0
    return-object v0
.end method

.method private getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 1
    .parameter "id"
    .parameter "index"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    return-object v0
.end method

.method private getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .locals 3
    .parameter
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v1, 0x0

    .line 1811
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return-object v1

    .line 1814
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1815
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    aget-object v2, v0, p3

    if-eqz v2, :cond_0

    .line 1816
    aget-object v1, v0, p3

    goto :goto_0
.end method

.method private getTransforms()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$StatisticPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1659
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    .line 1662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mDeltas:Ljava/util/Vector;

    goto :goto_0
.end method

.method private guessRects(I)V
    .locals 26
    .parameter "numSteps"

    .prologue
    .line 1520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v21

    .line 1521
    .local v21, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1522
    .local v11, done:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 1523
    .local v17, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .line 1524
    .local v23, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1525
    .local v16, id:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1527
    .end local v16           #id:I
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1528
    .local v6, id0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v14

    .line 1529
    .local v14, first:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v18

    .line 1530
    .local v18, last:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v22

    .line 1532
    .local v22, numImgs:I
    const/16 v20, 0x0

    .line 1534
    .local v20, nTot:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v22

    if-eq v0, v4, :cond_1

    .line 1537
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1540
    const/16 v19, 0x0

    .line 1541
    .local v19, n:I
    :goto_2
    if-lez v14, :cond_3

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 1542
    add-int/lit8 v5, v14, -0x1

    .line 1543
    .local v5, index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6, v14}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1544
    .local v9, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1545
    .local v7, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1546
    .local v10, delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v12, v4

    .line 1547
    .local v12, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v13, v4

    .line 1548
    .local v13, dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1549
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1550
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1551
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1552
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1553
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1555
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1556
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_2
    add-int/lit8 v19, v19, 0x1

    .line 1559
    add-int/lit8 v14, v14, -0x1

    .line 1560
    goto/16 :goto_2

    .line 1561
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #index:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v10           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v12           #dx:I
    .end local v13           #dy:I
    :cond_3
    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    .line 1562
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v21

    .line 1563
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v21

    .line 1564
    goto/16 :goto_1

    .line 1566
    :cond_4
    move/from16 v20, v19

    .line 1567
    const/16 v19, 0x0

    .line 1568
    :goto_3
    if-ltz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 1569
    add-int/lit8 v5, v18, 0x1

    .line 1570
    .restart local v5       #index:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v9

    .line 1571
    .restart local v9       #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v7, Landroid/graphics/Rect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1572
    .restart local v7       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getDelta(I)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v10

    .line 1573
    .restart local v10       #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1574
    .restart local v12       #dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1575
    .restart local v13       #dy:I
    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 1576
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1577
    .restart local v3       #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v4, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1578
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1579
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/app/rewind/RectTracker;->mNumGuessed:I

    .line 1580
    const-string v4, "Making up rect (img=%d id=%d %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v7, v8, v24

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1582
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1583
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1585
    :cond_5
    add-int/lit8 v19, v19, 0x1

    .line 1586
    add-int/lit8 v18, v18, 0x1

    .line 1587
    goto/16 :goto_3

    .line 1588
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #index:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v10           #delta:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .end local v12           #dx:I
    .end local v13           #dy:I
    :cond_6
    add-int v20, v20, v19

    .line 1589
    if-lez v20, :cond_1

    .line 1590
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v21

    .line 1591
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v21

    goto/16 :goto_1

    .line 1594
    .end local v6           #id0:I
    .end local v14           #first:I
    .end local v18           #last:I
    .end local v19           #n:I
    .end local v20           #nTot:I
    .end local v22           #numImgs:I
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 1595
    return-void
.end method

.method private idsOverlaps(Ljava/util/HashMap;II)Z
    .locals 4
    .parameter
    .parameter "id0"
    .parameter "id1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1759
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1760
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1761
    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1762
    const/4 v3, 0x1

    .line 1765
    :goto_1
    return v3

    .line 1760
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1765
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private inNumImages(Ljava/util/HashMap;I)I
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1717
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 1718
    .local v2, n:I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1719
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v1, :cond_0

    .line 1720
    const/4 v3, 0x0

    .line 1727
    :goto_0
    return v3

    .line 1722
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1723
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    .line 1724
    add-int/lit8 v2, v2, 0x1

    .line 1722
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1727
    goto :goto_0
.end method

.method private increaseBuckets([Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;I)V
    .locals 2
    .parameter "buckets"
    .parameter "maxNum"

    .prologue
    .line 3233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3234
    aget-object v1, p1, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->mNumPossible:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10100(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 3235
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;->access$10108(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;)I

    .line 3233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3238
    :cond_1
    return-void
.end method

.method private isComplete(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1823
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1824
    .local v1, id:I
    invoke-direct {p0, p1, v1}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not complete id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, v1}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1826
    const/4 v2, 0x0

    .line 1829
    .end local v1           #id:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private lockFaces(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 8
    .parameter "tr0"
    .parameter "tr1"

    .prologue
    .line 1833
    const-string v4, "Locking faces (img=%d) %d and %d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1800(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1835
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v1

    .line 1836
    .local v1, face0:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$4500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v2

    .line 1837
    .local v2, face1:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1838
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1, v4}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2302(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1840
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1841
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1843
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1844
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2302(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1846
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1847
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1849
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1850
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1851
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1854
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_5
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1855
    .restart local v0       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1856
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1859
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_7
    return-void
.end method

.method public static logDumpTranslations()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1113
    const-string v4, "*** Translations ***"

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1114
    const-string v4, "Count = %d"

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1115
    const-string v4, "Relative to FD dims."

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1116
    const-string v4, "Max (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1117
    const-string v4, "Max VFT (%f, %f)"

    new-array v5, v10, [Ljava/lang/Object;

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    sget v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1119
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 1120
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1121
    sget-object v4, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    .line 1122
    .local v3, s:Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2800(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2900(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1123
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3000(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3100(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1124
    .local v1, dy:F
    const-string v4, "%03d. img%d->%d, id%d: (%f, %f), VFT (%f, %f), diff (%f, %f)"

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3200(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3300(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3300(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3400(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2800(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3000(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$2900(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    #getter for: Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->access$3100(Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1120
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1131
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v3           #s:Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
    :cond_0
    return-void
.end method

.method private logTranslations()V
    .locals 24

    .prologue
    .line 1155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v14, v1

    .line 1156
    .local v14, fdw:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    int-to-float v13, v1

    .line 1157
    .local v13, fdh:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1158
    .local v5, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1159
    const/4 v15, 0x1

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v15, v1, :cond_0

    .line 1160
    add-int/lit8 v1, v15, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1161
    .local v22, trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1162
    .local v21, trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v22, :cond_1

    if-nez v21, :cond_2

    .line 1163
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d -> %d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1159
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1167
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1168
    :cond_3
    const-string v1, "%d -> %d: no rects"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto :goto_1

    .line 1171
    :cond_4
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v19, v1, v2

    .line 1172
    .local v19, mw:F
    const/high16 v1, 0x3f00

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v17, v1, v2

    .line 1173
    .local v17, mh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    .line 1174
    .local v11, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v12, v1

    .line 1175
    .local v12, dy:F
    div-float v6, v11, v19

    .line 1176
    .local v6, relDx:F
    div-float v7, v12, v17

    .line 1177
    .local v7, relDy:F
    const-string v1, "%d -> %d: (dx, dy) = (%f, %f) (rel to f. size)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1180
    .local v18, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_a

    .line 1181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    .line 1182
    .local v20, sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    div-float v6, v11, v14

    .line 1183
    div-float v7, v12, v13

    .line 1184
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v8, v1, v14

    .line 1185
    .local v8, relVftDx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static/range {v20 .. v20}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    div-float v9, v1, v13

    .line 1186
    .local v9, relVftDy:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", (%f, %f), vft=(%f, %f)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    const/4 v4, 0x3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1188
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 1189
    sput v6, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDx:F

    .line 1191
    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 1192
    sput v7, Lcom/scalado/app/rewind/RectTracker;->sMaxRelDy:F

    .line 1194
    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 1195
    sput v8, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDx:F

    .line 1197
    :cond_7
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1198
    sput v9, Lcom/scalado/app/rewind/RectTracker;->sMaxRelVftDy:F

    .line 1200
    :cond_8
    sget-object v1, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    if-eqz v1, :cond_9

    .line 1201
    sget-object v23, Lcom/scalado/app/rewind/RectTracker;->sTranslations:Ljava/util/Vector;

    new-instance v1, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;

    sget v3, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v4, v15, -0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_9
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sDxdyCount:I

    .line 1207
    .end local v8           #relVftDx:F
    .end local v9           #relVftDy:F
    .end local v20           #sp:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1210
    .end local v5           #id:I
    .end local v6           #relDx:F
    .end local v7           #relDy:F
    .end local v11           #dx:F
    .end local v12           #dy:F
    .end local v15           #i:I
    .end local v17           #mh:F
    .end local v18           #msg:Ljava/lang/String;
    .end local v19           #mw:F
    .end local v21           #trCur:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v22           #trPrev:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_b
    sget v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/scalado/app/rewind/RectTracker;->sSequenceCount:I

    .line 1211
    return-void
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3540
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3541
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_0
    return-void
.end method

.method private static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3546
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3547
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_0
    return-void
.end method

.method private static final logdind(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3552
    sget-boolean v0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    if-eqz v0, :cond_0

    .line 3553
    const-string v0, "RectTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_0
    return-void
.end method

.method private static final logw(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3536
    const-string v0, "RectTracker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    return-void
.end method

.method private meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "r0"
    .parameter "r1"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f00

    .line 1646
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    add-float/2addr v5, v6

    div-float v3, v5, v8

    .line 1647
    .local v3, xc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    add-float/2addr v5, v6

    div-float v4, v5, v8

    .line 1648
    .local v4, yc:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v7

    .line 1649
    .local v2, w:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v0, v5, v7

    .line 1650
    .local v0, h:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1651
    .local v1, r:Landroid/graphics/Rect;
    mul-float v5, v7, v2

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1652
    mul-float v5, v7, v0

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1653
    mul-float v5, v7, v2

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1654
    mul-float v5, v7, v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1655
    return-object v1
.end method

.method private mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v15

    .line 1441
    .local v15, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 1442
    .local v20, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1443
    .local v10, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1444
    .local v6, id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1446
    .end local v6           #id:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1449
    .local v18, overlaps:[F
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1450
    .local v7, id0:I
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1451
    .local v8, id1:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    if-eq v7, v8, :cond_2

    .line 1455
    if-eqz p2, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1459
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v13

    .line 1460
    .local v13, n0:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/scalado/app/rewind/RectTracker;->inNumImages(Ljava/util/HashMap;I)I

    move-result v14

    .line 1461
    .local v14, n1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-ne v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-ne v14, v0, :cond_2

    .line 1464
    const/16 v16, 0x0

    .line 1465
    .local v16, numOverlaps:I
    const/4 v12, 0x0

    .line 1466
    .local v12, meanOverlap:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_5

    .line 1467
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1468
    .local v21, tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1469
    .local v22, tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v23

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v17

    .line 1470
    .local v17, overlap:F
    aput v17, v18, v3

    .line 1471
    add-float v12, v12, v17

    .line 1472
    const v23, 0x3e4ccccd

    cmpg-float v23, v17, v23

    if-gez v23, :cond_4

    .line 1466
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1474
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1477
    .end local v17           #overlap:F
    .end local v21           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v22           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v12, v12, v23

    .line 1478
    if-lez v16, :cond_6

    .line 1479
    const-string v23, "id=%d and id=%d #overlaps=%d."

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1482
    :cond_6
    const/4 v9, 0x0

    .line 1483
    .local v9, isOverlap:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1484
    const/4 v9, 0x1

    .line 1488
    :cond_7
    :goto_4
    if-eqz v9, :cond_2

    .line 1491
    const-string v23, "id=%d and id=%d equal, merging (approx.)."

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1493
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_9

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1495
    .local v19, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v21

    .line 1496
    .restart local v21       #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v22

    .line 1497
    .restart local v22       #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v21 .. v21}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v23

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v22 .. v22}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 1498
    .local v11, mean:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0, v11}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1499
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1493
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1485
    .end local v11           #mean:Landroid/graphics/Rect;
    .end local v19           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v21           #tr0:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v22           #tr1:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_8
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    const v23, 0x3e19999a

    cmpl-float v23, v12, v23

    if-lez v23, :cond_7

    .line 1486
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 1502
    :cond_9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1505
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #id0:I
    .end local v8           #id1:I
    .end local v9           #isOverlap:Z
    .end local v12           #meanOverlap:F
    .end local v13           #n0:I
    .end local v14           #n1:I
    .end local v16           #numOverlaps:I
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1506
    .restart local v6       #id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1508
    .end local v6           #id:I
    :cond_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "# ids = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1509
    if-eqz p2, :cond_d

    .line 1510
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1511
    .restart local v6       #id:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 1512
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1516
    .end local v6           #id:I
    :cond_d
    return-object v15
.end method

.method private mergeIds(Ljava/util/HashMap;II)V
    .locals 4
    .parameter
    .parameter "master"
    .parameter "slave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1770
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1771
    .local v1, indexes0:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1772
    .local v2, indexes1:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1773
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 1774
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 1772
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    return-void
.end method

.method private mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 27
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v18

    .line 1374
    .local v18, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .line 1375
    .local v23, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1376
    .local v16, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1377
    .local v14, id:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1382
    .end local v14           #id:I
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1383
    .local v6, id0:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1384
    .local v15, id1:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eq v6, v15, :cond_2

    .line 1388
    if-eqz p2, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1392
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v17

    .line 1393
    .local v17, last0:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/scalado/app/rewind/RectTracker;->findFirstImage(Ljava/util/HashMap;I)I

    move-result v10

    .line 1394
    .local v10, first1:I
    add-int/lit8 v5, v17, 0x1

    .line 1395
    .local v5, imageIndex:I
    if-ltz v17, :cond_2

    if-ltz v10, :cond_2

    add-int/lit8 v4, v17, 0x2

    if-ne v4, v10, :cond_2

    .line 1398
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v20

    .line 1399
    .local v20, r0:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v5, v10, v1}, Lcom/scalado/app/rewind/RectTracker;->approximateRect(IIILjava/util/HashMap;)Landroid/graphics/Rect;

    move-result-object v21

    .line 1400
    .local v21, r1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v19

    .line 1401
    .local v19, overlap:F
    const v4, 0x3e4ccccd

    cmpl-float v4, v19, v4

    if-ltz v4, :cond_2

    .line 1404
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/scalado/app/rewind/RectTracker;->meanRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1405
    .local v7, r:Landroid/graphics/Rect;
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1406
    .local v3, newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1407
    .local v9, curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    invoke-static {v9, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1408
    const-string v22, ""

    .line 1409
    .local v22, s:Ljava/lang/String;
    move v11, v10

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v11, v4, :cond_5

    .line 1410
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15, v11}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v24

    .line 1411
    .local v24, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_4

    if-eqz v24, :cond_4

    .line 1412
    move-object/from16 v0, v24

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0, v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 1413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1409
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1415
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " X"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    .line 1418
    .end local v24           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    const-string v4, "Merging (approx.) %d with %d (in images %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v8, v25

    const/16 v25, 0x2

    aput-object v22, v8, v25

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v5, v3}, Lcom/scalado/app/rewind/RectTracker;->addId(Ljava/util/HashMap;IILcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    .line 1422
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6, v15}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1423
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1427
    .end local v3           #newRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v5           #imageIndex:I
    .end local v6           #id0:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v9           #curImage:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v10           #first1:I
    .end local v11           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #id1:I
    .end local v17           #last0:I
    .end local v19           #overlap:F
    .end local v20           #r0:Landroid/graphics/Rect;
    .end local v21           #r1:Landroid/graphics/Rect;
    .end local v22           #s:Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# ids = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1428
    if-eqz p2, :cond_8

    .line 1429
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1430
    .restart local v14       #id:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1431
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1435
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #id:I
    :cond_8
    return-object v18
.end method

.method private mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;
    .locals 26
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1280
    .local p1, oldMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    .local p2, removed:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p1}, Lcom/scalado/app/rewind/RectTracker;->copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v17

    .line 1281
    .local v17, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 1282
    .local v22, toFix:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .line 1283
    .local v23, toRemove:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1284
    .local v16, keys:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1285
    .local v13, id:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    .end local v13           #id:I
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1289
    .local v14, id0:I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1298
    .local v7, last:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v7, v4, :cond_1

    .line 1301
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_1

    .line 1302
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v7}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 1303
    .local v5, curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1304
    .local v15, img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/16 v19, 0x0

    .line 1305
    .local v19, rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v9, 0x0

    .line 1306
    .local v9, bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v15}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1307
    .local v6, rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v4

    if-eq v4, v14, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v4}, Lcom/scalado/app/rewind/RectTracker;->idsOverlaps(Ljava/util/HashMap;II)Z

    move-result v4

    if-nez v4, :cond_2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1316
    new-instance v3, Lcom/scalado/app/rewind/RectTracker$Comparison;

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/app/rewind/RectTracker$Comparison;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 1317
    .local v3, cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    if-eqz v9, :cond_3

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->compare(Lcom/scalado/app/rewind/RectTracker$Comparison;)I
    invoke-static {v3, v9}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$4200(Lcom/scalado/app/rewind/RectTracker$Comparison;Lcom/scalado/app/rewind/RectTracker$Comparison;)I

    move-result v4

    if-lez v4, :cond_2

    .line 1318
    :cond_3
    move-object v9, v3

    .line 1319
    move-object/from16 v19, v6

    goto :goto_2

    .line 1325
    .end local v3           #cmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v6           #rect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    if-eqz v19, :cond_1

    if-eqz v9, :cond_1

    #calls: Lcom/scalado/app/rewind/RectTracker$Comparison;->isOk()Z
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$Comparison;->access$4300(Lcom/scalado/app/rewind/RectTracker$Comparison;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1327
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v20

    .line 1328
    .local v20, rmId:I
    const-string v21, ""

    .line 1329
    .local v21, s:Ljava/lang/String;
    add-int/lit8 v10, v7, 0x1

    .local v10, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v10, v4, :cond_6

    .line 1330
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v18

    .line 1331
    .local v18, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v18, :cond_5

    .line 1332
    move-object/from16 v0, v18

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0, v14}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1329
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1335
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " X"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_4

    .line 1338
    .end local v18           #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_6
    const-string v4, "Merging %d with %d (in images %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v8, v24

    const/16 v24, 0x2

    aput-object v21, v8, v24

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1340
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1341
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 1348
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/scalado/app/rewind/RectTracker;->findLastImage(Ljava/util/HashMap;I)I

    move-result v7

    .line 1349
    goto/16 :goto_1

    .line 1352
    .end local v5           #curRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v7           #last:I
    .end local v9           #bestCmp:Lcom/scalado/app/rewind/RectTracker$Comparison;
    .end local v10           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #id0:I
    .end local v15           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    .end local v19           #rectMin:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v20           #rmId:I
    .end local v21           #s:Ljava/lang/String;
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# ids = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1353
    if-eqz p2, :cond_a

    .line 1354
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1355
    .restart local v13       #id:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1356
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1360
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #id:I
    :cond_a
    return-object v17
.end method

.method private mergeRects(IIIILjava/util/HashMap;)V
    .locals 10
    .parameter "masterId"
    .parameter "slaveId"
    .parameter "masterImg"
    .parameter "slaveImg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3025
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    if-ne p3, p4, :cond_0

    .line 3026
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image == slave image."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3028
    :cond_0
    sub-int v6, p3, p4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 3029
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master image and slave image not next to each other."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3032
    :cond_1
    if-ne p1, p2, :cond_2

    .line 3033
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Master ID == slave ID."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3036
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 3037
    .local v5, size:I
    if-le p4, p3, :cond_3

    .line 3038
    const/4 v1, 0x1

    .line 3043
    .local v1, dir:I
    :goto_0
    const-string v4, ""

    .line 3044
    .local v4, s:Ljava/lang/String;
    add-int v2, p3, v1

    .line 3045
    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_5

    if-ge v2, v5, :cond_5

    .line 3046
    invoke-direct {p0, p5, p2, v2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    .line 3047
    .local v3, r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v3, :cond_4

    .line 3048
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3049
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 3053
    :goto_2
    add-int/2addr v2, v1

    .line 3054
    goto :goto_1

    .line 3040
    .end local v1           #dir:I
    .end local v2           #i:I
    .end local v3           #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    .restart local v1       #dir:I
    goto :goto_0

    .line 3051
    .restart local v2       #i:I
    .restart local v3       #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .restart local v4       #s:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3055
    .end local v3           #r:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_5
    const-string v6, "Merging %d with %d (in images %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3057
    invoke-direct {p0, p5, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->mergeIds(Ljava/util/HashMap;II)V

    .line 3058
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3059
    .local v0, deltaIndex:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 3060
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->updateMinMatches()V

    .line 3061
    return-void
.end method

.method private nonOverlapsBetween(Ljava/util/HashMap;II)[I
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 2967
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    const/4 v2, 0x0

    .line 2968
    .local v2, n:I
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2969
    .local v3, trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 2970
    .local v4, trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_0

    .line 2971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2974
    .end local v3           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    new-array v0, v2, [I

    .line 2975
    .local v0, fromIds:[I
    const/4 v2, 0x0

    .line 2976
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2977
    .restart local v3       #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    invoke-direct {p0, p1, v5, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(Ljava/util/HashMap;II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v4

    .line 2978
    .restart local v4       #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v4, :cond_2

    .line 2979
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v5

    aput v5, v0, v2

    .line 2980
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2983
    .end local v3           #trFrom:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v4           #trTo:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_3
    return-object v0
.end method

.method private numRectsInImage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private optimizeSelection()V
    .locals 14

    .prologue
    .line 1882
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1883
    .local v8, so:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
    #calls: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4700(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V

    .line 1884
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4800(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1885
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    .line 1886
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/scalado/app/rewind/RectTracker$State;->compositionSuccessful:Z

    .line 1887
    const-string v9, "RectTracker"

    const-string v10, "Failed to determine best images."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :goto_0
    return-void

    .line 1890
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 1891
    .local v6, sel:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5000(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I

    move-result v0

    .line 1892
    .local v0, bg:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 1893
    const-string v10, "cand %f"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1892
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1895
    :cond_1
    const-string v9, "bg = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1896
    const/4 v3, 0x0

    :goto_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    array-length v9, v9

    if-ge v3, v9, :cond_5

    .line 1897
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 1898
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v4

    .line 1899
    .local v4, id:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v9

    aget v2, v9, v3

    .line 1902
    .local v2, fg:I
    if-gez v2, :cond_2

    .line 1903
    const-string v9, "%d (don\'t care)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1904
    .local v5, msg:Ljava/lang/String;
    move v7, v0

    .line 1918
    .local v7, selected:I
    :goto_3
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v1, v7}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$1902(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)I

    .line 1919
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id %d: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V

    .line 1896
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1905
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_2
    if-eq v0, v2, :cond_4

    .line 1906
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->canReplace(II)Z
    invoke-static {v1, v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$5300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1907
    const-string v9, "%d, cost = %f"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1908
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v2

    .restart local v7       #selected:I
    goto :goto_3

    .line 1910
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_3
    const-string v9, "%d, (don\'t dare, %d cost = %f)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v12

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1912
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto :goto_3

    .line 1915
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_4
    const-string v9, "%d (bg)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1916
    .restart local v5       #msg:Ljava/lang/String;
    move v7, v0

    .restart local v7       #selected:I
    goto/16 :goto_3

    .line 1921
    .end local v1           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v2           #fg:I
    .end local v4           #id:I
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #selected:I
    :cond_5
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 1922
    const-string v9, "num poss %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I
    invoke-static {v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$5500(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 26
    .parameter "image"
    .parameter "image2"
    .parameter "imgIndex"

    .prologue
    .line 3413
    const-string v3, "kangwei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "privateAddImage index :"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    if-nez v3, :cond_0

    .line 3416
    invoke-direct/range {p0 .. p0}, Lcom/scalado/app/rewind/RectTracker;->createFaceDetector()V

    .line 3419
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    if-nez v3, :cond_1

    .line 3420
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImageDims:Lcom/scalado/base/Size;

    .line 3424
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3427
    .local v12, before:J
    const/16 v16, 0x0

    .line 3428
    .local v16, collection:Lcom/scalado/caps/face/FaceCollection;
    const/4 v15, 0x5

    .line 3429
    .local v15, cnt:I
    if-nez p3, :cond_2

    .line 3430
    const/16 v15, 0x32

    .line 3432
    :cond_2
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v15, :cond_3

    .line 3433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/scalado/caps/face/FaceDetector;->detectFaces(Lcom/scalado/base/Image;)Lcom/scalado/caps/face/FaceCollection;

    move-result-object v16

    .line 3432
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 3435
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3436
    .local v10, after:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    sub-long v24, v10, v12

    add-long v3, v3, v24

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 3438
    const-string v3, "RectTracker.Benchmark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Face detection time is = "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/scalado/caps/face/FaceCollection;->getSize()I

    move-result v21

    .line 3443
    .local v21, size:I
    const-string v3, "kangwei"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "collection.getSize() :"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    const-string v3, "[%d] Faces detected = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v24

    const/16 v24, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v24

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 3445
    if-lez v21, :cond_a

    .line 3446
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 3447
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/scalado/caps/face/FaceCollection;->getFaceAt(I)Lcom/scalado/caps/face/Face;

    move-result-object v18

    .line 3448
    .local v18, face:Lcom/scalado/caps/face/Face;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getSmilePercent()I

    move-result v22

    .line 3449
    .local v22, smile:I
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getBlinkPercent()I

    move-result v14

    .line 3450
    .local v14, blink:I
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 3451
    .local v23, tmpRect:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/scalado/app/rewind/RectTracker;->convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3452
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getId()I

    move-result v5

    .line 3453
    .local v5, id:I
    if-ltz v22, :cond_5

    if-gez v14, :cond_5

    .line 3457
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v5, v2}, Lcom/scalado/app/rewind/RectTracker;->addRect(IILandroid/graphics/Rect;)V

    .line 3459
    const/4 v6, 0x0

    .line 3460
    .local v6, left:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 3461
    .local v7, right:Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 3462
    .local v8, mouth:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 3463
    .local v9, nose:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3464
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #left:Landroid/graphics/Rect;
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 3465
    .restart local v6       #left:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getLeftEyeRect()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3467
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 3468
    new-instance v7, Landroid/graphics/Rect;

    .end local v7           #right:Landroid/graphics/Rect;
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3469
    .restart local v7       #right:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getRightEyeRect()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3471
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 3472
    new-instance v8, Landroid/graphics/Rect;

    .end local v8           #mouth:Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 3473
    .restart local v8       #mouth:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getMouthRect()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 3475
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3476
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #nose:Landroid/graphics/Rect;
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 3477
    .restart local v9       #nose:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getNoseRect()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    :cond_9
    move-object/from16 v3, p0

    move/from16 v4, p3

    .line 3479
    invoke-direct/range {v3 .. v9}, Lcom/scalado/app/rewind/RectTracker;->setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3480
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2, v14}, Lcom/scalado/app/rewind/RectTracker;->setSmileBlink(IIII)V

    .line 3482
    const-string v3, "%s, id = %d (s=%d, b=%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/caps/face/Face;->getFaceRect()Lcom/scalado/base/Rect;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    const/16 v24, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v24

    const/16 v24, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v24

    const/16 v24, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v4, v24

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker;->logdind(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3446
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 3489
    .end local v5           #id:I
    .end local v6           #left:Landroid/graphics/Rect;
    .end local v7           #right:Landroid/graphics/Rect;
    .end local v8           #mouth:Landroid/graphics/Rect;
    .end local v9           #nose:Landroid/graphics/Rect;
    .end local v10           #after:J
    .end local v12           #before:J
    .end local v14           #blink:I
    .end local v15           #cnt:I
    .end local v16           #collection:Lcom/scalado/caps/face/FaceCollection;
    .end local v18           #face:Lcom/scalado/caps/face/Face;
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v21           #size:I
    .end local v22           #smile:I
    .end local v23           #tmpRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v17

    .line 3490
    .local v17, e:Ljava/lang/Exception;
    const-string v3, "RectTracker"

    const-string v4, "Excpetion:"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3492
    .end local v17           #e:Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v3, :cond_b

    .line 3493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    .line 3495
    :cond_b
    return-void
.end method

.method private rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 18
    .parameter "id"
    .parameter "ranked"

    .prologue
    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v17

    .line 2110
    .local v17, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 2111
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v7

    .line 2113
    .local v7, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v7, :cond_0

    .line 2114
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7, v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)F

    .line 2115
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$RankedId;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v2, p2, v4

    .line 2110
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2117
    :cond_0
    new-instance v8, Lcom/scalado/app/rewind/RectTracker$RankedId;

    const/high16 v12, -0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v10, v4

    move/from16 v11, p1

    invoke-direct/range {v8 .. v15}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$1;)V

    aput-object v8, p2, v4

    goto :goto_1

    .line 2127
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RectTracker;->allIdsSame([Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v16

    .line 2128
    .local v16, allEqual:Z
    if-eqz v16, :cond_3

    .line 2129
    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 2130
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    const/4 v3, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2129
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2132
    :cond_2
    const/4 v2, 0x0

    .line 2140
    :goto_3
    return v2

    .line 2134
    :cond_3
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2135
    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    .line 2136
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v2, :cond_4

    .line 2137
    aget-object v2, p2, v4

    iget-object v2, v2, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v2, v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2135
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2140
    :cond_5
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private rankImages()I
    .locals 24

    .prologue
    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v15

    .line 2013
    .local v15, size:I
    new-array v0, v15, [I

    move-object/from16 v18, v0

    .line 2019
    .local v18, votes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2020
    .local v6, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 2023
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    new-array v10, v0, [Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2024
    .local v10, locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/16 v19, 0x0

    aput-object v6, v10, v19

    .line 2025
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 2026
    add-int/lit8 v20, v9, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    aput-object v19, v10, v20

    .line 2025
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2041
    :cond_1
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v14, v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2042
    .local v14, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 2043
    const/4 v9, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 2044
    aget-object v19, v10, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    aget-object v17, v19, v7

    .line 2045
    .local v17, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/scalado/app/rewind/RectTracker;->createRankedId(IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v19

    aput-object v19, v14, v9

    .line 2043
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2047
    .end local v17           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2048
    const/4 v9, 0x0

    :goto_3
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 2049
    aget-object v19, v10, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v19

    aget-object v17, v19, v7

    .line 2050
    .restart local v17       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$5902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2051
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2052
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6102(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I

    .line 2053
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2054
    const/16 v19, 0x0

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v19

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$6302(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z

    .line 2048
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2054
    :cond_3
    const/16 v19, 0x0

    goto :goto_4

    .line 2042
    .end local v17           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2058
    .end local v6           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v7           #i:I
    .end local v9           #j:I
    .end local v10           #locked:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v14           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_5
    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 2059
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_a

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2061
    .restart local v6       #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    new-array v14, v15, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2062
    .restart local v14       #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/scalado/app/rewind/RectTracker;->rankId(I[Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v13

    .line 2063
    .local v13, rankSuccessful:Z
    add-int/lit8 v19, v15, -0x1

    aget-object v19, v14, v19

    move-object/from16 v0, v19

    iget v4, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2064
    .local v4, best:I
    const-string v16, "   "

    .line 2065
    .local v16, spc:Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 2066
    const-string v19, "id %d (best img = %d)"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2067
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_6
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 2068
    aget-object v19, v14, v9

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-object/from16 v17, v0

    .line 2069
    .restart local v17       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const-string v19, "%simg=%d, (score=%1.5f)"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aget-object v22, v14, v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aget-object v22, v14, v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2071
    .local v12, msg:Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 2072
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2073
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", rank=%d, (s=%d, b=%d)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2082
    :goto_7
    invoke-static {v12}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2067
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 2076
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", rank=%d, [no s & b]"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static/range {v17 .. v17}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 2080
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", [no rect]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 2084
    .end local v12           #msg:Ljava/lang/String;
    .end local v17           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_8
    aget v19, v18, v4

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v4

    .line 2092
    .end local v9           #j:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v6, v14}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6502(Lcom/scalado/app/rewind/RectTracker$AbstractFace;[Lcom/scalado/app/rewind/RectTracker$RankedId;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2059
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 2086
    :cond_9
    const-string v19, "id %d (best img = ?)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2087
    const-string v19, "%sWARNING: id %d couldn\'t determine best image."

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 2090
    const/16 v19, 0x1

    move/from16 v0, v19

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v6, v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    goto :goto_8

    .line 2095
    .end local v4           #best:I
    .end local v6           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v13           #rankSuccessful:Z
    .end local v14           #ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    .end local v16           #spc:Ljava/lang/String;
    :cond_a
    const/4 v11, -0x1

    .line 2096
    .local v11, maxVotes:I
    const/4 v5, -0x1

    .line 2097
    .local v5, bestPic:I
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v15, :cond_c

    .line 2098
    aget v19, v18, v7

    move/from16 v0, v19

    if-le v0, v11, :cond_b

    .line 2099
    aget v11, v18, v7

    .line 2100
    move v5, v7

    .line 2097
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2103
    :cond_c
    move-object/from16 v0, p0

    iput v5, v0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 2104
    move-object/from16 v0, p0

    iput v5, v0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    .line 2105
    return v5
.end method

.method private rectCenterDist(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 2994
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2995
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2996
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private rectOverlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .parameter "r0"
    .parameter "r1"

    .prologue
    .line 1631
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1632
    .local v1, intRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1633
    .local v2, overlap:F
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1634
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1635
    .local v0, intArea:F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v3, v4

    .line 1636
    .local v3, totArea:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 1637
    sub-float/2addr v3, v0

    .line 1638
    div-float v2, v0, v3

    .line 1642
    .end local v0           #intArea:F
    .end local v3           #totArea:F
    :goto_0
    return v2

    .line 1640
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recycleFaceDetection()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3529
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    .line 3530
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 3531
    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetector:Lcom/scalado/caps/face/FaceDetector;

    .line 3532
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/app/rewind/RectTracker;->totalFaceDetectionTime:J

    .line 3533
    return-void
.end method

.method private relativeFaceDist(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/PointF;
    .locals 8
    .parameter "trPrev"
    .parameter "trCur"

    .prologue
    const/4 v6, 0x0

    .line 1964
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1984
    :cond_0
    :goto_0
    return-object v6

    .line 1967
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1970
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v3, v6

    .line 1971
    .local v3, fdw:F
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 1977
    .local v2, fdh:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 1978
    .local v0, dx:F
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 1982
    .local v1, dy:F
    div-float v4, v0, v3

    .line 1983
    .local v4, relDx:F
    div-float v5, v1, v2

    .line 1984
    .local v5, relDy:F
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method private setFeatures(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "image"
    .parameter "id"
    .parameter "leftEye"
    .parameter "rightEye"
    .parameter "mouth"
    .parameter "nose"

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 342
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 343
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 344
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    .line 346
    :cond_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    aput-object v1, v3, v4

    .line 347
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_2
    aput-object v2, v1, v3

    .line 349
    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    .line 346
    goto :goto_0
.end method

.method public static setLogging(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 188
    sput-boolean p0, Lcom/scalado/app/rewind/RectTracker;->sLogging:Z

    .line 189
    return-void
.end method

.method private translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    .locals 5
    .parameter "i0"
    .parameter "i1"
    .parameter "id"

    .prologue
    .line 1706
    new-instance v2, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;-><init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V

    .line 1709
    .local v2, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    invoke-direct {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1710
    .local v0, r0:Landroid/graphics/Rect;
    invoke-direct {p0, p3, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1711
    .local v1, r1:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$302(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1712
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    #setter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$402(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;F)F

    .line 1713
    return-object v2
.end method

.method private updateMapForRect(Ljava/util/HashMap;ILcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 7
    .parameter
    .parameter "imageIndex"
    .parameter "rect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;I",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1792
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/scalado/app/rewind/RectTracker$TrackedRect;>;"
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1793
    .local v4, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1794
    .local v3, rectIndex:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {p3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 1795
    .local v0, id:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1796
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1797
    .local v1, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 1798
    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 1797
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1800
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    .end local v1           #indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v2           #k:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    aput-object v6, v5, p2

    .line 1803
    return-void
.end method

.method private updateMinMatches()V
    .locals 3

    .prologue
    .line 2987
    const v1, 0x7fffffff

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2988
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2989
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMatches:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/scalado/app/rewind/RectTracker;->mMinMatches:I

    .line 2988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2991
    :cond_0
    return-void
.end method


# virtual methods
.method public analyze()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateStatistics()V

    .line 369
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->estimateDeltas()V

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 371
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mPredefined:Z

    if-nez v1, :cond_1

    .line 372
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mGuessRects:Z

    if-eqz v1, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->connectAllImages()V

    .line 374
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 376
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 378
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->guessRects(I)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeAllRectPairs(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    .line 385
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mAlignRectSizes:Z

    if-eqz v1, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->alignRectSizes()V

    .line 390
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->logTranslations()V

    .line 392
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker;->isComplete(Ljava/util/HashMap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    .line 393
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v2, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    iput-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$State;->isComplete:Z

    .line 394
    return-void

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3}, Lcom/scalado/app/rewind/RectTracker;->mergeRects(Ljava/util/HashMap;Ljava/util/Vector;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mAnalyzeComplete:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    .line 257
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze()V

    .line 245
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->analyze2()V

    .line 249
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    .line 250
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->rankImages()I

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    .line 251
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->calculateOptimalImages2()V

    .line 252
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->optimizeSelection()V

    .line 253
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 254
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    goto :goto_0
.end method

.method public canReplace()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deltaForRectX(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1049
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1050
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaForRectY(III)I
    .locals 2
    .parameter "id"
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1062
    invoke-direct {p0, p2, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->translation(III)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1063
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaX(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1024
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public deltaY(II)I
    .locals 2
    .parameter "i0"
    .parameter "i1"

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->getTransforms()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/scalado/app/rewind/RectTracker;->accumulateDelta(IILjava/util/Vector;)Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    move-result-object v0

    .line 1037
    .local v0, translation:Lcom/scalado/app/rewind/RectTracker$StatisticPoint;
    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public enlargeRectangles()V
    .locals 2

    .prologue
    .line 406
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    iget v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->enlargeRectangles(FF)V

    .line 407
    return-void
.end method

.method public getAllIds()[I
    .locals 5

    .prologue
    .line 758
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v2, v4, [I

    .line 759
    .local v2, ids:[I
    const/4 v3, 0x0

    .line 760
    .local v3, j:I
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 761
    .local v1, id:I
    aput v1, v2, v3

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    .end local v1           #id:I
    :cond_0
    return-object v2
.end method

.method public getBestImage(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 669
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1800(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    return v1
.end method

.method public getBestImage(II)I
    .locals 4
    .parameter "id"
    .parameter "n"

    .prologue
    .line 673
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mBestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 674
    .local v0, ranked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    aget-object v1, v0, v2

    .line 675
    .local v1, ri:Lcom/scalado/app/rewind/RectTracker$RankedId;
    iget-boolean v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    if-eqz v2, :cond_0

    .line 676
    iget v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 678
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBestStartImage()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getEnlargedRectangle(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 927
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 930
    :cond_0
    const/4 v1, 0x0

    .line 932
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getError()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    iget-boolean v0, v0, Lcom/scalado/app/rewind/RectTracker$State;->error:Z

    return v0
.end method

.method public getId(II)I
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    return v0
.end method

.method getListener()Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 968
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 969
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 970
    .local v2, id:I
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v3, v6, [I

    .line 971
    .local v3, indexes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 972
    invoke-direct {p0, v2, v0}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    .line 973
    .local v5, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v5, :cond_0

    .line 974
    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aput v6, v3, v0

    .line 971
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 976
    :cond_0
    const/4 v6, -0x1

    aput v6, v3, v0

    goto :goto_2

    .line 979
    .end local v5           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 981
    .end local v0           #i:I
    .end local v2           #id:I
    .end local v3           #indexes:[I
    :cond_2
    return-object v4
.end method

.method public getMaxScoreImage()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxScoreImage:I

    return v0
.end method

.method public getNumRectsForId(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 789
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 790
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    if-nez v0, :cond_0

    .line 791
    const/4 v1, 0x0

    .line 796
    :goto_0
    return v1

    .line 793
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 794
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOriginalEnlargedRectangle(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 936
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 937
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 940
    :cond_0
    const/4 v1, 0x0

    .line 942
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRect(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "imageIndex"
    .parameter "rectIndex"

    .prologue
    .line 811
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 812
    .local v0, r:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 826
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 827
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 828
    :cond_0
    const/4 v1, 0x0

    .line 830
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getRectInImage(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 12
    .parameter "rect"
    .parameter "srcImage"
    .parameter "dstImage"

    .prologue
    .line 986
    iget-object v10, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v10, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 987
    .local v6, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v5, 0x0

    .line 988
    .local v5, srcFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    const/4 v4, 0x0

    .line 989
    .local v4, retRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 990
    .local v8, x:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 991
    .local v9, y:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 992
    .local v7, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v10, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 993
    move-object v5, v7

    .line 997
    .end local v7           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_1
    if-eqz v5, :cond_3

    .line 998
    if-ne p2, p3, :cond_2

    .line 999
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1011
    :goto_0
    return-object v10

    .line 1001
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v10

    invoke-direct {p0, v10, p3}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 1002
    .local v0, dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #retRect:Landroid/graphics/Rect;
    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1003
    .restart local v4       #retRect:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1005
    .local v1, dx:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1007
    .local v2, dy:I
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .end local v0           #dstFace:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    .end local v1           #dx:I
    .end local v2           #dy:I
    :cond_3
    move-object v10, v4

    .line 1011
    goto :goto_0
.end method

.method public getRelativeAbsTranslation(III)F
    .locals 9
    .parameter "id"
    .parameter "img0"
    .parameter "img1"

    .prologue
    .line 711
    invoke-virtual {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v3

    .line 712
    .local v3, r0:Landroid/graphics/Rect;
    invoke-virtual {p0, p3, p1}, Lcom/scalado/app/rewind/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 713
    .local v4, r1:Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 716
    :cond_0
    const/4 v0, 0x0

    .line 724
    :goto_0
    return v0

    .line 718
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    sub-float v1, v5, v6

    .line 719
    .local v1, dx:F
    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float v2, v5, v6

    .line 720
    .local v2, dy:F
    mul-float v5, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 721
    .local v0, d:F
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    int-to-float v1, v5

    .line 722
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 723
    float-to-double v5, v0

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v0, v5

    .line 724
    goto :goto_0
.end method

.method public getSafeEnlargedRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 889
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 890
    .local v2, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    aget-object v5, v2, p1

    if-nez v5, :cond_2

    .line 893
    :cond_0
    const/4 v4, 0x0

    .line 914
    :cond_1
    :goto_0
    return-object v4

    .line 895
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 896
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 897
    const/4 v4, 0x0

    .line 898
    .local v4, r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    .line 899
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 901
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 902
    .local v3, lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 905
    if-eqz v4, :cond_5

    .line 906
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 908
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v4       #r:Landroid/graphics/Rect;
    goto :goto_1

    .line 914
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    aget-object v5, v2, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0
.end method

.method public getSafeIds()[I
    .locals 3

    .prologue
    .line 774
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 775
    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2200(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v2

    aput v2, v1, v0

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_0
    return-object v1
.end method

.method public getSafeRect(II)Landroid/graphics/Rect;
    .locals 7
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 834
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 835
    .local v2, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v2, :cond_0

    aget-object v5, v2, p1

    if-nez v5, :cond_2

    .line 838
    :cond_0
    const/4 v4, 0x0

    .line 858
    :cond_1
    :goto_0
    return-object v4

    .line 840
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 841
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 842
    const/4 v4, 0x0

    .line 843
    .local v4, r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_3

    .line 844
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 846
    .restart local v4       #r:Landroid/graphics/Rect;
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 847
    .local v3, lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 850
    if-eqz v4, :cond_5

    .line 851
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 853
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #r:Landroid/graphics/Rect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v5

    aget-object v5, v5, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v4       #r:Landroid/graphics/Rect;
    goto :goto_1

    .line 858
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #lockedFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    aget-object v5, v2, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0
.end method

.method public getScore(II)F
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 696
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 697
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    .line 699
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    int-to-float v1, v1

    .line 701
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x80

    goto :goto_0
.end method

.method public getSelectedBg(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 683
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mBestImage:I

    return v0
.end method

.method public getSelectedFg(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 687
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mFacesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 688
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    if-nez v0, :cond_0

    .line 689
    const/4 v1, -0x1

    .line 691
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mSelectedImageIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$1900(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v1

    goto :goto_0
.end method

.method public getSessionRectById(II)Landroid/graphics/Rect;
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 863
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 864
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 865
    :cond_0
    const/4 v1, 0x0

    .line 867
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/scalado/app/rewind/RectTracker$State;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mState:Lcom/scalado/app/rewind/RectTracker$State;

    return-object v0
.end method

.method public hasNeighbours(II)Z
    .locals 2
    .parameter "id"
    .parameter "image"

    .prologue
    .line 706
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 707
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mIsComplete:Z

    return v0
.end method

.method public logDump(Z)V
    .locals 13
    .parameter "smileBlink"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1085
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1086
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1087
    .local v2, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1088
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 1089
    .local v3, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1087
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1092
    :cond_0
    if-nez p1, :cond_1

    .line 1093
    const-string v4, "[%d, %d] id=%d, rect=%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 1101
    :cond_1
    const-string v4, "[%d, %d] id=%d, rect=%s, smile=%d, blink=%d, score=%d"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    const/4 v6, 0x5

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 1085
    .end local v3           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1108
    .end local v1           #j:I
    .end local v2           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_3
    const-string v4, "Face detection dims: %dx%d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public numImages()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public numRects()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxNumRects:I

    return v0
.end method

.method public numRects(I)I
    .locals 4
    .parameter "imageIndex"

    .prologue
    const/4 v0, -0x1

    .line 744
    const-string v1, "kangwei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numRects imageIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1072
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 1073
    .local v1, ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #setter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$502(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;

    goto :goto_0

    .line 1075
    .end local v1           #ti:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker;->recycleFaceDetection()V

    .line 1076
    iput-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 1077
    iput-object v3, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    .line 1078
    return-void
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "dims"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 217
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/TrackerUtils;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 218
    return-void
.end method

.method public setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    .line 262
    return-void
.end method

.method public setMaxTranslation(F)V
    .locals 0
    .parameter "maxValue"

    .prologue
    .line 265
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mMaxTranslation:F

    .line 266
    return-void
.end method

.method public setRect(IILandroid/graphics/Rect;)V
    .locals 1
    .parameter "imageIndex"
    .parameter "rectIndex"
    .parameter "rect"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 411
    return-void
.end method

.method public setRectScaling(FF)V
    .locals 0
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 204
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleX:F

    .line 205
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker;->mFaceScaleY:F

    .line 206
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/rewind/TrackerUtils;->setScreenDims(II)V

    .line 193
    return-void
.end method

.method public setSmileBlink(IIII)V
    .locals 1
    .parameter "image"
    .parameter "id"
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 360
    invoke-direct {p0, p2, p1}, Lcom/scalado/app/rewind/RectTracker;->getRectInImage(II)Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v0

    .line 361
    .local v0, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V
    invoke-static {v0, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$1000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V

    .line 362
    return-void
.end method

.method public trackImage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUtils:Lcom/scalado/app/rewind/TrackerUtils;

    invoke-virtual {v1, p1}, Lcom/scalado/app/rewind/TrackerUtils;->getFaceTrackingImage(I)Lcom/scalado/base/Image;

    move-result-object v0

    .line 222
    .local v0, image:Lcom/scalado/base/Image;
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 225
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 226
    return-void
.end method

.method public trackImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V
    .locals 1
    .parameter "image"
    .parameter "image2"
    .parameter "index"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker;->mUseVfTracker:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker;->applyViewfinderTracker(Lcom/scalado/base/Image;)V

    .line 232
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/RectTracker;->privateAddImage(Lcom/scalado/base/Image;Lcom/scalado/base/Image;I)V

    .line 233
    return-void
.end method

.method public wasFound(II)Z
    .locals 3
    .parameter "imageIndex"
    .parameter "id"

    .prologue
    .line 871
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker;->mRectMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 872
    .local v0, indexes:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-eqz v0, :cond_0

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 873
    :cond_0
    const/4 v1, 0x0

    .line 875
    :goto_0
    return v1

    :cond_1
    aget-object v1, v0, p1

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v1

    goto :goto_0
.end method
