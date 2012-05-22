.class public Lcom/scalado/app/rewind/ManualRewindViewer;
.super Lcom/scalado/app/rewind/RewindViewer;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/ManualRewindViewer$1;,
        Lcom/scalado/app/rewind/ManualRewindViewer$LayoutCfg;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;,
        Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;
    }
.end annotation


# static fields
.field private static final DETECTING_FACES:I = 0x1

.field private static final MAX_FACES:I = 0x1e

.field private static final NOT_STARTED:I = 0x0

.field private static final RECT_SCALE_X:F = 2.0f

.field private static final RECT_SCALE_Y:F = 2.5f

.field private static final RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ManualRewindViewer"

.field private static final ZOOM_IN:I = 0x1

.field private static final ZOOM_OUT:I = 0x2


# instance fields
.field private ZOOM_TIME:J

.field private mActive:Z

.field private mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

.field private mBackgroundIndex:I

.field private mBgLayer:Lcom/scalado/app/ui/Background;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBlockedUntilUpdated:Z

.field private mBlurInLTW:Z

.field private mBmps:Lcom/scalado/app/rewind/BitmapManager;

.field private mCommits:I

.field private mContinuousUpdates:Z

.field private mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

.field private mCurPaint:Landroid/graphics/Paint;

.field private mCurReplaceArea:Landroid/graphics/Rect;

.field private mCurZoomRect:Landroid/graphics/Rect;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDrawFaceRects:Z

.field private mDstRect:Landroid/graphics/Rect;

.field private mEntriesReady:I

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceRectScale:F

.field private mFaceRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/SelectionRect;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mFixedMagniferSize:Z

.field private mHalfSize:Lcom/scalado/base/Size;

.field private mIsAnimationStarted:Z

.field private mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

.field private mJobIndicatorOnFaceDet:Z

.field private mMagBitmap:Landroid/graphics/Bitmap;

.field private mMagnifierMaxSize:Lcom/scalado/base/Size;

.field private mMagnifierMinSize:Lcom/scalado/base/Size;

.field private mMaxZoomSize:Lcom/scalado/base/Size;

.field private mMinLensSize:Lcom/scalado/base/Size;

.field private mMinReplSize:Lcom/scalado/base/Size;

.field private mMinScreenHeight:I

.field private mMinScreenWidth:I

.field private mMinZoomSize:Lcom/scalado/base/Size;

.field private mMsg:Ljava/lang/String;

.field private mNumImages:I

.field private mOverlayColor:Z

.field private mOverlayPaint:Landroid/graphics/Paint;

.field private mPostview:Lcom/scalado/base/Image;

.field private mPostviewBytes:[B

.field private mPostviewConfig:Lcom/scalado/base/Image$Config;

.field private mPostviewSize:Lcom/scalado/base/Size;

.field private mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mStartIndex:I

.field private mState:I

.field private mSurfaceChanged:Z

.field private mT0:J

.field private mThumbsReady:I

.field private mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

.field private mTxtPaint:Landroid/graphics/Paint;

.field private mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

.field private mUpdatePreview:Z

.field private mWheel:Lcom/scalado/app/ui/Wheel;

.field private mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

.field private mWheelGroup:Lcom/scalado/app/ui/Group;

.field private mZoomedInBgAlpha:I

.field private mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

.field private pfd:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 9
    .parameter "surfaceView"

    .prologue
    const/high16 v8, -0x4000

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindViewer;-><init>(Landroid/view/SurfaceView;)V

    .line 69
    new-instance v0, Lcom/scalado/app/rewind/BitmapManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/BitmapManager;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    .line 76
    const/16 v0, 0x14

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    .line 79
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    .line 80
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    .line 81
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    .line 85
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    .line 90
    new-instance v0, Lcom/scalado/base/Size;

    const/16 v1, 0x1e0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    .line 95
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    .line 96
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRectScale:F

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    invoke-direct {v0, p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    .line 108
    iput v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    .line 109
    iput v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    .line 110
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    .line 116
    iput v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 118
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    .line 119
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContinuousUpdates:Z

    .line 121
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    .line 122
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    .line 123
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    .line 124
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    .line 125
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    .line 126
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    .line 127
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    .line 129
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J

    .line 131
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 133
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlurInLTW:Z

    .line 135
    iput-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayColor:Z

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    .line 137
    const/16 v0, 0xa0

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomedInBgAlpha:I

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    .line 144
    iput v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 146
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 158
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 164
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0xe6

    const/16 v3, 0xdc

    const/16 v4, 0xd2

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgrListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->setListener(Lcom/scalado/app/ui/UiManager$UiManagerListener;)V

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 175
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    .line 182
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ScreenAnimation;)Lcom/scalado/app/rewind/ScreenAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/PaintFlagsDrawFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->endShowWheel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->endHideWheel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Group;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/scalado/app/rewind/ManualRewindViewer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->startHideWheel(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/scalado/app/rewind/ManualRewindViewer;IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/rewind/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mContinuousUpdates:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V

    return-void
.end method

.method static synthetic access$2300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/scalado/app/rewind/ManualRewindViewer;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    return v0
.end method

.method static synthetic access$2600(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/scalado/app/rewind/ManualRewindViewer;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/ui/SelectionRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->startShowWheel(Lcom/scalado/app/ui/SelectionRect;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->asyncFaceDetectionComplete()V

    return-void
.end method

.method static synthetic access$3002(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    return v0
.end method

.method static synthetic access$3300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/scalado/app/rewind/ManualRewindViewer;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3508(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    return v0
.end method

.method static synthetic access$3600(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->startAsyncDetectFaces()V

    return-void
.end method

.method static synthetic access$3700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/AsyncTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    return v0
.end method

.method static synthetic access$3900(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/scalado/app/rewind/ManualRewindViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/scalado/app/rewind/ManualRewindViewer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->drawSrcMgrBg(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/ManualRewindViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/ManualRewindViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    return-object v0
.end method

.method private adjustZoomRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "zoomRect"

    .prologue
    .line 874
    const/high16 v1, 0x4060

    invoke-static {p1, v1}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 875
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 876
    .local v0, wh:I
    invoke-static {p1, v0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 877
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v1}, Lcom/scalado/app/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    invoke-static {p1, v1, v2}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 878
    return-void
.end method

.method private asyncFaceDetectionComplete()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 570
    iget-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v5, :cond_0

    .line 571
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/scalado/app/ui/JobIndicator;->onJobEnded(I)V

    .line 573
    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->getBestStartImage()I

    move-result v1

    .line 575
    .local v1, iMax:I
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->isComplete()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    .line 577
    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v8}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v8

    filled-new-array {v5, v8}, [I

    move-result-object v5

    const-class v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iput-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    if-ge v0, v5, :cond_4

    .line 579
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v5

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v8, v0}, Lcom/scalado/app/rewind/RectTracker;->numRects(I)I

    move-result v8

    if-eq v5, v8, :cond_1

    .line 580
    const-string v5, "ManualRewindViewer"

    const-string v8, "WARNING! rects in %d not maximal!"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/RectTracker;->numRects()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 584
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    new-instance v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    invoke-direct {v8, p0, v11}, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    aput-object v8, v5, v2

    .line 585
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v8, v0, v2}, Lcom/scalado/app/rewind/RectTracker;->getId(II)I

    move-result v8

    iput v8, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    .line 586
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v8, v0, v2}, Lcom/scalado/app/rewind/RectTracker;->getRect(II)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v2           #j:I
    :cond_2
    move v5, v7

    .line 575
    goto :goto_0

    .line 578
    .restart local v0       #i:I
    .restart local v2       #j:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 590
    .end local v2           #j:I
    :cond_4
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->prepareFaceWidgets()V

    .line 591
    iput v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I

    .line 592
    if-ltz v1, :cond_5

    .line 593
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v5, v1}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 594
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v5, v1}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 595
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    .line 597
    :cond_5
    iput v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 598
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v5}, Lcom/scalado/app/rewind/AsyncTracker;->finish()V

    .line 599
    iput-object v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 601
    .local v3, t1:J
    const-string v5, "ManualRewindViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bench: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mT0:J

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v5, :cond_6

    .line 603
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v5, v1}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 605
    :cond_6
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v5, :cond_7

    .line 606
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 608
    :cond_7
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v5, :cond_8

    .line 609
    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 611
    :cond_8
    invoke-virtual {p0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->selectBackground(I)V

    .line 612
    return-void
.end method

.method private calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V
    .locals 12
    .parameter "zoomRectScreen"
    .parameter "scaleFactor"
    .parameter "dims"

    .prologue
    .line 962
    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v10}, Lcom/scalado/app/rewind/RewindSession;->getCoordTransform()Lcom/scalado/app/rewind/CoordTransform;

    move-result-object v5

    .line 963
    .local v5, transform:Lcom/scalado/app/rewind/CoordTransform;
    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v10}, Lcom/scalado/app/rewind/RewindSession;->curSourceDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 964
    .local v4, srcDims:Lcom/scalado/base/Size;
    invoke-virtual {v5}, Lcom/scalado/app/rewind/CoordTransform;->canvasDims()Lcom/scalado/base/Size;

    move-result-object v0

    .line 965
    .local v0, canvasDims:Lcom/scalado/base/Size;
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 966
    .local v7, wQuota:F
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 967
    .local v2, hQuota:F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 969
    .local v3, quota:F
    new-instance v8, Lcom/scalado/base/Rect;

    invoke-direct {v8}, Lcom/scalado/base/Rect;-><init>()V

    .line 970
    .local v8, zoomRectScreenC:Lcom/scalado/base/Rect;
    new-instance v9, Lcom/scalado/base/Rect;

    invoke-direct {v9}, Lcom/scalado/base/Rect;-><init>()V

    .line 971
    .local v9, zoomRectSessionC:Lcom/scalado/base/Rect;
    invoke-static {p1, v8}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 972
    invoke-virtual {v5, v8, v9}, Lcom/scalado/app/rewind/CoordTransform;->transformRectToCurrent(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 973
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 975
    .local v6, w:I
    invoke-virtual {v9}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 978
    .local v1, h:I
    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    if-gt v6, v10, :cond_0

    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    if-le v1, v10, :cond_1

    .line 980
    :cond_0
    const-string v10, "ManualRewindViewer"

    const-string v11, "WARNING: zoom lvl!!!!!!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_1
    invoke-virtual {p3, v6}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 983
    invoke-virtual {p3, v1}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 984
    return-void
.end method

.method private drawSrcMgrBg(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1056
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 1057
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 1058
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    .line 1060
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1062
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getSourceManager()Lcom/scalado/app/rewind/SourceManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v2

    .line 1064
    .local v2, image:Lcom/scalado/base/Image;
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1065
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1066
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1067
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/BitmapManager;->unlockDisplayed()V

    .line 1068
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1069
    return-void
.end method

.method private endHideWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1014
    :try_start_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 1015
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RewindSession;->setZoom(F)V

    .line 1016
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->resetScreen()V

    .line 1017
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    if-eqz v3, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    .line 1020
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_1

    .line 1021
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 1023
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_2

    .line 1024
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    .line 1025
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 1028
    :cond_2
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/SelectionRect;

    .line 1029
    .local v2, slr:Lcom/scalado/app/ui/SelectionRect;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/scalado/app/ui/SelectionRect;->setRectVisibility(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1031
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #slr:Lcom/scalado/app/ui/SelectionRect;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "ManualRewindViewer"

    const-string v4, "endHideWheel null pointer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    iput-boolean v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 1036
    return-void
.end method

.method private endShowWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 817
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayColor:Z

    if-eqz v3, :cond_3

    .line 818
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mOverlayPaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 822
    :goto_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getMagnifiedPreview()Lcom/scalado/base/Image;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/Wheel;->setImage(Lcom/scalado/base/Image;)V

    .line 823
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    invoke-virtual {v3, v2}, Lcom/scalado/app/ui/Group;->showOnTop(Z)V

    .line 824
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->resetScreen()V

    .line 825
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/scalado/app/rewind/Geom;->convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 826
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setBgFx(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestRender()V

    .line 828
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v1

    .line 830
    .local v0, getMagnified:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V

    .line 833
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_1

    .line 834
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 836
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v3, :cond_2

    .line 837
    iput-boolean v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    .line 838
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 840
    :cond_2
    iput-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 841
    return-void

    .line 820
    .end local v0           #getMagnified:Z
    :cond_3
    iput-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 828
    goto :goto_1
.end method

.method private hideBgSelector()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 734
    :cond_0
    return-void
.end method

.method private needUpdate(I)Z
    .locals 1
    .parameter "fgIndex"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisplay()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method private prepareFaceWidgets()V
    .locals 5

    .prologue
    .line 615
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/SelectionRect;

    .line 616
    .local v2, r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/scalado/app/ui/UiManager;->removeWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 618
    .end local v2           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 619
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 620
    new-instance v3, Lcom/scalado/app/ui/SelectionRect;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v3, v4}, Lcom/scalado/app/ui/SelectionRect;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 621
    .local v3, selRect:Lcom/scalado/app/ui/SelectionRect;
    invoke-virtual {v3}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 622
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/SelectionRect;->setStatic(Z)V

    .line 623
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/SelectionRect;->setListener(Lcom/scalado/app/ui/SelectionRect$RectListener;)V

    .line 625
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v3}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 626
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    .end local v0           #i:I
    .end local v3           #selRect:Lcom/scalado/app/ui/SelectionRect;
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/ui/SelectionRect;

    .line 630
    .restart local v2       #r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v4, v2}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 632
    .end local v2           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_2
    return-void
.end method

.method private privateClear()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x0

    .line 305
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 306
    .local v1, canvas:Landroid/graphics/Canvas;
    if-eqz v1, :cond_3

    .line 307
    invoke-virtual {v1, v13, v13, v13}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 308
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 309
    iget v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v4, v6, 0x2

    .line 310
    .local v4, x:I
    iget v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v5, v6, 0x2

    .line 311
    .local v5, y:I
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    int-to-float v8, v4

    int-to-float v9, v5

    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 312
    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 314
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    if-eqz v6, :cond_1

    .line 315
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    new-instance v10, Lcom/scalado/base/Size;

    iget v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v12, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v10, v11, v12}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v11, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-static {v6, v8, v9, v10, v11}, Lcom/scalado/app/rewind/ImageUtils;->convert([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image;

    move-result-object v3

    .line 319
    .local v3, image:Lcom/scalado/base/Image;
    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 320
    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 322
    .end local v3           #image:Lcom/scalado/base/Image;
    :cond_1
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    if-eqz v6, :cond_2

    move-object v6, v7

    .line 323
    check-cast v6, Landroid/graphics/Bitmap;

    new-instance v8, Lcom/scalado/base/Size;

    iget v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    invoke-virtual {v6}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 327
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-direct {v2, v13, v13, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    .local v2, dst:Landroid/graphics/Rect;
    invoke-virtual {v1, v0, v7, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    iput-object v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 332
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dst:Landroid/graphics/Rect;
    :cond_2
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 334
    :cond_3
    return-void
.end method

.method private privateCommit()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 719
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 720
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->needUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->commit()V

    .line 723
    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 724
    return-void
.end method

.method private replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "enlargedRect"
    .parameter "actualRect"

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, replaceArea:Landroid/graphics/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 848
    .local v2, replaceAreaCAPS:Lcom/scalado/base/Rect;
    new-instance v1, Landroid/graphics/Rect;

    .end local v1           #replaceArea:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 849
    .restart local v1       #replaceArea:Landroid/graphics/Rect;
    const-string v4, "ManualRewindViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* replaceArea"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 853
    .local v3, zoomRect:Landroid/graphics/Rect;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 854
    .local v0, capsRect:Lcom/scalado/base/Rect;
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 855
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4, v2, v2}, Lcom/scalado/app/rewind/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 856
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 857
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 858
    if-eqz p4, :cond_0

    .line 859
    invoke-virtual {p4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 862
    :cond_0
    invoke-direct {p0, v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->adjustZoomRect(Landroid/graphics/Rect;)V

    .line 863
    invoke-static {v3, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 865
    const-string v4, "ManualRewindViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* replaceArea 4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/scalado/app/rewind/Geom;->rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    if-eqz p3, :cond_1

    .line 867
    invoke-virtual {p3, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 869
    :cond_1
    return-void
.end method

.method private requestMagnifiedUpdate()V
    .locals 3

    .prologue
    .line 709
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->getMagnifierSize()Lcom/scalado/base/Size;

    move-result-object v0

    .line 710
    .local v0, magDims:Lcom/scalado/base/Size;
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    .line 712
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->zoomToReplacement()V

    .line 713
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->setBlur(Z)V

    .line 714
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->updateMagnified(Landroid/graphics/Bitmap;)V

    .line 715
    return-void
.end method

.method private setBgFx(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlurInLTW:Z

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setBlur(Z)V

    .line 1043
    :cond_0
    return-void
.end method

.method private setFaceRects(IZ)V
    .locals 9
    .parameter "imageIndex"
    .parameter "flash"

    .prologue
    .line 635
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 636
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x1e

    if-ge v1, v6, :cond_0

    .line 637
    new-instance v3, Lcom/scalado/app/ui/SelectionRect;

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v3, v6}, Lcom/scalado/app/ui/SelectionRect;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 638
    .local v3, selRect:Lcom/scalado/app/ui/SelectionRect;
    invoke-virtual {v3}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 639
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/scalado/app/ui/SelectionRect;->setStatic(Z)V

    .line 640
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;

    invoke-virtual {v3, v6}, Lcom/scalado/app/ui/SelectionRect;->setListener(Lcom/scalado/app/ui/SelectionRect$RectListener;)V

    .line 642
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v6, v3}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 643
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v1           #i:I
    .end local v3           #selRect:Lcom/scalado/app/ui/SelectionRect;
    :cond_0
    const/4 v1, 0x0

    .line 647
    .restart local v1       #i:I
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/SelectionRect;

    .line 648
    .local v4, slr:Lcom/scalado/app/ui/SelectionRect;
    invoke-virtual {v4}, Lcom/scalado/app/ui/SelectionRect;->show()V

    goto :goto_1

    .line 655
    .end local v4           #slr:Lcom/scalado/app/ui/SelectionRect;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v6, p1}, Lcom/scalado/app/rewind/RectTracker;->numRects(I)I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 658
    :try_start_0
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/SelectionRect;

    .line 659
    .restart local v3       #selRect:Lcom/scalado/app/ui/SelectionRect;
    iget v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v7, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v3, v6, v7}, Lcom/scalado/app/ui/SelectionRect;->updateLayout(II)V

    .line 660
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v6, v3}, Lcom/scalado/app/ui/UiManager;->drawFirst(Lcom/scalado/app/ui/Widget;)V

    .line 661
    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mTrackedFaces:[[Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    aget-object v6, v6, p1

    aget-object v5, v6, v1

    .line 662
    .local v5, tf:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;
    iget-object v6, v5, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/scalado/app/ui/SelectionRect;->setRect(Landroid/graphics/Rect;)V

    .line 663
    invoke-virtual {v3, v5}, Lcom/scalado/app/ui/SelectionRect;->setObject(Ljava/lang/Object;)V

    .line 664
    iget-boolean v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDrawFaceRects:Z

    invoke-virtual {v3, v6}, Lcom/scalado/app/ui/SelectionRect;->setDraw(Z)V

    .line 665
    if-eqz p2, :cond_2

    .line 667
    invoke-virtual {v3}, Lcom/scalado/app/ui/SelectionRect;->zoomIn()V

    .line 669
    :cond_2
    invoke-virtual {v3}, Lcom/scalado/app/ui/SelectionRect;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v3           #selRect:Lcom/scalado/app/ui/SelectionRect;
    .end local v5           #tf:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ManualRewindViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when setting face rects for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 677
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private setupZoomRect(IILandroid/graphics/Rect;)V
    .locals 20
    .parameter "bgIndex"
    .parameter "fgIndex"
    .parameter "dstZoomRect"

    .prologue
    .line 881
    const/4 v9, 0x0

    .line 882
    .local v9, replaceArea:Landroid/graphics/Rect;
    new-instance v10, Lcom/scalado/base/Rect;

    invoke-direct {v10}, Lcom/scalado/base/Rect;-><init>()V

    .line 883
    .local v10, replaceAreaCAPS:Lcom/scalado/base/Rect;
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 884
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #replaceArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v15, v15, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v9, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 886
    .restart local v9       #replaceArea:Landroid/graphics/Rect;
    const-string v15, "jimmy"

    const-string v16, "setupZoomRect %d == %d)"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 896
    const-string v15, "jimmy"

    const-string v16, "setupZoomRect replaceArea == null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #replaceArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v15, v15, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-direct {v9, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 901
    .restart local v9       #replaceArea:Landroid/graphics/Rect;
    :cond_1
    const-string v15, "jimmy"

    const-string v16, "setupZoomRect 1 (L %d, R %d)( T %d, B %d)"

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v6, 0x0

    .line 907
    .local v6, maxTranslation:I
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 908
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v7

    .line 909
    .local v7, r0:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 910
    .local v8, r1:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 911
    .local v3, dx:F
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 912
    .local v4, dy:F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v15 .. v17}, Lcom/scalado/app/rewind/RectTracker;->deltaX(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 914
    .local v12, xTransl:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v15 .. v17}, Lcom/scalado/app/rewind/RectTracker;->deltaY(II)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 915
    .local v13, yTransl:I
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 916
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 917
    const/16 v15, 0x32

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 920
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v7           #r0:Landroid/graphics/Rect;
    .end local v8           #r1:Landroid/graphics/Rect;
    .end local v12           #xTransl:I
    .end local v13           #yTransl:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v15, v15, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRectScale:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    div-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 922
    .local v5, feathering:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v15, v6}, Lcom/scalado/app/rewind/RewindSession;->setMaxTranslation(I)V

    .line 923
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v15, v5}, Lcom/scalado/app/rewind/RewindSession;->setFeathering(I)V

    .line 926
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 927
    .local v14, zoomRect:Landroid/graphics/Rect;
    new-instance v2, Lcom/scalado/base/Rect;

    invoke-direct {v2}, Lcom/scalado/base/Rect;-><init>()V

    .line 928
    .local v2, capsRect:Lcom/scalado/base/Rect;
    invoke-static {v9, v10}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v15, v10, v10}, Lcom/scalado/app/rewind/RewindSession;->transformReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 930
    invoke-static {v10, v9}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 931
    invoke-static {v10, v14}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 934
    const/high16 v15, 0x4060

    invoke-static {v14, v15}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 935
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 936
    .local v11, wh:I
    invoke-static {v14, v11, v11}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 938
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v15}, Lcom/scalado/app/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V

    .line 939
    invoke-static {v14, v2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v15, v2}, Lcom/scalado/app/rewind/RewindSession;->setMagnifiedPreviewRect(Lcom/scalado/base/Rect;)V

    .line 942
    if-eqz p3, :cond_3

    .line 943
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 945
    :cond_3
    return-void

    .line 888
    .end local v2           #capsRect:Lcom/scalado/base/Rect;
    .end local v5           #feathering:I
    .end local v6           #maxTranslation:I
    .end local v11           #wh:I
    .end local v14           #zoomRect:Landroid/graphics/Rect;
    :cond_4
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v15, v15, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    if-ltz v15, :cond_0

    .line 890
    const-string v15, "jimmy"

    const-string v16, "setupZoomRect %d != %d)"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/scalado/app/rewind/RectTracker;->getRectById(II)Landroid/graphics/Rect;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private startAsyncDetectFaces()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 546
    iput v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 549
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/SelectionRect;

    .line 550
    .local v1, r:Lcom/scalado/app/ui/SelectionRect;
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v3, v1}, Lcom/scalado/app/ui/UiManager;->removeWidget(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 553
    .end local v1           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getSourceManager()Lcom/scalado/app/rewind/SourceManager;

    move-result-object v2

    .line 555
    .local v2, srcMgr:Lcom/scalado/app/rewind/SourceManager;
    new-instance v3, Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    invoke-direct {v3, v2, v4}, Lcom/scalado/app/rewind/RectTracker;-><init>(Lcom/scalado/app/rewind/SourceManager;I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    .line 556
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setScreenDims(II)V

    .line 557
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    const/high16 v4, 0x4000

    const/high16 v5, 0x4020

    invoke-virtual {v3, v4, v5}, Lcom/scalado/app/rewind/RectTracker;->setRectScaling(FF)V

    .line 558
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/RectTracker;->setFaceDetectionDims(Lcom/scalado/base/Size;)V

    .line 559
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/AsyncTracker;->setTracker(Lcom/scalado/app/rewind/RectTracker;)V

    .line 560
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTrackerListener:Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/AsyncTracker;->setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V

    .line 562
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v3, v4, v6}, Lcom/scalado/app/rewind/RewindSession;->setJobListener(Lcom/scalado/app/rewind/JobListener;I)V

    .line 563
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicatorOnFaceDet:Z

    if-eqz v3, :cond_1

    .line 564
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/scalado/app/ui/JobIndicator;->onJobStarted(I)V

    .line 566
    :cond_1
    return-void
.end method

.method private startHideWheel(Z)V
    .locals 3
    .parameter "commit"

    .prologue
    const/4 v2, 0x0

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 988
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    invoke-virtual {v0}, Lcom/scalado/app/ui/Group;->hide()V

    .line 989
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->setBgFx(Z)V

    .line 990
    if-nez p1, :cond_3

    .line 991
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, v2, v2}, Lcom/scalado/app/rewind/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1001
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V

    .line 1002
    iput-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;

    .line 1004
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->commitButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 1010
    :cond_2
    return-void

    .line 993
    :cond_3
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v1

    iput v1, v0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 994
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateCommit()V

    .line 995
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z

    if-nez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    goto :goto_0
.end method

.method private startShowWheel(Lcom/scalado/app/ui/SelectionRect;)V
    .locals 12
    .parameter "selRect"

    .prologue
    const/4 v11, 0x1

    .line 743
    iput-boolean v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 744
    invoke-virtual {p1}, Lcom/scalado/app/ui/SelectionRect;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 745
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurReplaceArea:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 746
    invoke-virtual {p1}, Lcom/scalado/app/ui/SelectionRect;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iput-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    .line 747
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v8, v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    if-gez v8, :cond_0

    .line 748
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v9

    iput v9, v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    .line 750
    :cond_0
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v9, v9, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v8, v9}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 751
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v9, v9, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    invoke-virtual {v8, v9}, Lcom/scalado/app/ui/Wheel;->select(I)V

    .line 752
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/scalado/app/ui/Wheel;->markPosition(I)V

    .line 754
    const-string v8, "ManualRewindViewer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Face id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v10, v10, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget-object v8, v8, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 756
    const-string v8, "ManualRewindViewer"

    const-string v9, "!= != != Rects not equal!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_1
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scalado/app/ui/SelectionRect;

    .line 759
    .local v5, r:Lcom/scalado/app/ui/SelectionRect;
    invoke-virtual {v5}, Lcom/scalado/app/ui/SelectionRect;->hide()V

    .line 760
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/scalado/app/ui/SelectionRect;->setRectVisibility(Z)V

    goto :goto_0

    .line 763
    .end local v5           #r:Lcom/scalado/app/ui/SelectionRect;
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 766
    .local v3, lensRect:Landroid/graphics/Rect;
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 767
    .local v0, capsRect:Lcom/scalado/base/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 768
    .local v1, enlargedReplaceArea:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v9

    iget-object v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurFace:Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;

    iget v10, v10, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mId:I

    invoke-virtual {v8, v9, v10}, Lcom/scalado/app/rewind/RectTracker;->getSafeEnlargedRect(II)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 771
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 772
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v8, v0, v0}, Lcom/scalado/app/rewind/RewindSession;->setReplaceArea(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 773
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 776
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 777
    .local v7, zoomRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v8}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v8

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v9

    invoke-direct {p0, v8, v9, v7}, Lcom/scalado/app/rewind/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V

    .line 779
    invoke-static {v7, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 780
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 781
    invoke-virtual {v0}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 782
    .local v4, magSize:Lcom/scalado/base/Size;
    iget-boolean v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    if-nez v8, :cond_6

    .line 783
    new-instance v4, Lcom/scalado/base/Size;

    .end local v4           #magSize:Lcom/scalado/base/Size;
    invoke-direct {v4}, Lcom/scalado/base/Size;-><init>()V

    .line 784
    .restart local v4       #magSize:Lcom/scalado/base/Size;
    const/high16 v8, 0x3fc0

    invoke-direct {p0, v7, v8, v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->calculateMagnifierSize(Landroid/graphics/Rect;FLcom/scalado/base/Size;)V

    .line 788
    :goto_1
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v8, v4}, Lcom/scalado/app/rewind/RewindSession;->setMagnifierSize(Lcom/scalado/base/Size;)V

    .line 792
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    invoke-static {v3, v8, v9}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;II)V

    .line 793
    iget-boolean v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFixedMagniferSize:Z

    if-eqz v8, :cond_3

    .line 794
    iget v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v3, v8, v9}, Lcom/scalado/app/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 796
    :cond_3
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v8, v3}, Lcom/scalado/app/ui/Wheel;->setPosition(Landroid/graphics/Rect;)V

    .line 797
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/scalado/app/ui/Wheel;->setSize(I)V

    .line 798
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v9}, Lcom/scalado/app/rewind/RewindSession;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Lcom/scalado/app/ui/Wheel;->setPivot(I)V

    .line 799
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v8, v3}, Lcom/scalado/app/ui/Wheel;->getRect(Landroid/graphics/Rect;)V

    .line 802
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 803
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v8, :cond_4

    .line 804
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v8}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 806
    :cond_4
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v8, :cond_5

    .line 807
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindViewerConfig;->cancelButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v8}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 810
    :cond_5
    new-instance v8, Lcom/scalado/base/Size;

    iget v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    .line 813
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    iget-object v9, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mHalfSize:Lcom/scalado/base/Size;

    invoke-virtual {v8, v11, v9}, Lcom/scalado/app/rewind/RewindSession;->lockScreen(ILcom/scalado/base/Size;)V

    .line 814
    return-void

    .line 786
    :cond_6
    iget-object v8, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v4

    goto :goto_1
.end method

.method private zoomToReplacement()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1046
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1047
    .local v0, zoomRect:Landroid/graphics/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 1048
    .local v1, zoomRectC:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v3}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v3

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->replaceAreaZoomRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1050
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 1051
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, v1, v4}, Lcom/scalado/app/rewind/RewindSession;->setZoomRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1052
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    .line 266
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 269
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->startHideWheel(Z)V

    .line 252
    return-void
.end method

.method public display()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCommits:I

    .line 342
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->onDisplay()V

    .line 347
    :cond_0
    return-void
.end method

.method public getCancelState()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCancelButtonState:Z

    return v0
.end method

.method public manualBackPressed()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/ui/UiManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 282
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 471
    :cond_1
    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/UiManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 478
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    if-ne v2, v1, :cond_0

    .line 484
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateCommit()V

    move v0, v1

    .line 486
    goto :goto_0

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, p1, p2}, Lcom/scalado/app/ui/UiManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSurfaceChanged(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3fe0

    const-wide v7, 0x3fd3333333333333L

    .line 492
    const-string v3, "ManualRewindViewer"

    const-string v4, "onSurfaceChanged E"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iput-boolean v11, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    .line 494
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 495
    iput p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    .line 496
    iput p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    .line 497
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5, v6}, Lcom/scalado/app/rewind/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 499
    new-instance v3, Lcom/scalado/base/Size;

    invoke-direct {v3, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 500
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v3, p1, p2}, Lcom/scalado/app/ui/UiManager;->setSize(II)V

    .line 501
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I

    .line 502
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I

    .line 503
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 504
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinReplSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 506
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 507
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMaxZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 508
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 509
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinZoomSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 511
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 512
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMinLensSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 514
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 515
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMinSize:Lcom/scalado/base/Size;

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 516
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 517
    .local v2, wh:I
    mul-int/lit8 v3, v2, 0x18

    div-int/lit8 v2, v3, 0x19

    .line 519
    int-to-float v3, v2

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget v4, v4, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v5}, Lcom/scalado/app/ui/Wheel;->getIndicatorExtraY()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 521
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 522
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMagnifierMaxSize:Lcom/scalado/base/Size;

    invoke-virtual {v3, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 524
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4420

    div-float/2addr v3, v4

    const/high16 v4, 0x428c

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 525
    .local v1, size:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11, v11, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 526
    .local v0, jobRect:Landroid/graphics/Rect;
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I

    iget v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I

    invoke-static {v0, v3, v4}, Lcom/scalado/app/ui/Layout;->centerRect(Landroid/graphics/Rect;II)V

    .line 527
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v3, v0}, Lcom/scalado/app/ui/JobIndicator;->setPos(Landroid/graphics/Rect;)V

    .line 529
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/app/rewind/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 530
    iget-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-nez v3, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->onDisplay()V

    .line 532
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    .line 533
    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 537
    :cond_0
    const-string v3, "ManualRewindViewer"

    const-string v4, "onSurfaceChanged X"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestRender()V

    .line 543
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z

    if-eqz v2, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    iget v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    if-nez v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;

    if-nez v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2, p1}, Lcom/scalado/app/ui/UiManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 448
    goto :goto_0

    .line 450
    :cond_2
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v2, v2, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v1}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    goto :goto_0
.end method

.method public privateSelectBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, p1}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 256
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 258
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getPreviewBackground()Lcom/scalado/base/Image;

    move-result-object v1

    .line 260
    .local v1, img:Lcom/scalado/base/Image;
    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 261
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->unlockDisplayed()V

    .line 262
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/BitmapManager;->clear()V

    .line 389
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->reset()V

    .line 390
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z

    .line 297
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    goto :goto_0
.end method

.method public requestDraw()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 302
    return-void
.end method

.method public requestRender()V
    .locals 3

    .prologue
    .line 696
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 701
    .local v0, dst:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 702
    const-string v1, "ManualRewindViewer"

    const-string v2, "(Render) Out of bitmaps!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession;->render(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 3

    .prologue
    .line 686
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 687
    .local v0, dst:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 688
    const-string v1, "ManualRewindViewer"

    const-string v2, "(Update) Out of bitmaps!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/RewindSession;->update(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mState:I

    .line 356
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->finish()V

    .line 359
    :cond_0
    iput-boolean v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z

    .line 360
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 361
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    .line 362
    iput v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mThumbsReady:I

    .line 363
    iput-boolean v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mActive:Z

    .line 364
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->hideBgSelector()V

    .line 365
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    invoke-virtual {v0}, Lcom/scalado/app/ui/JobIndicator;->hide()V

    .line 367
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AsyncTracker;->setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V

    .line 369
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AsyncTracker;->finish()V

    .line 370
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0, v3}, Lcom/scalado/app/ui/UiManager;->stop(Z)V

    .line 375
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onExit()V

    .line 378
    :cond_2
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostview:Lcom/scalado/base/Image;

    .line 379
    iput-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 380
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/RewindSession;->outputTo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save(Ljava/lang/String;III)V
    .locals 1
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RewindSession;->outputTo(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public selectBackground(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 236
    iput p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBackgroundIndex:I

    .line 237
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2, p1}, Lcom/scalado/app/rewind/RewindSession;->setBackground(I)V

    .line 238
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V

    .line 240
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getPreviewBackground()Lcom/scalado/base/Image;

    move-result-object v1

    .line 242
    .local v1, img:Lcom/scalado/base/Image;
    invoke-virtual {v1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 243
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 244
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 245
    return-void
.end method

.method public setConfig(Lcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 8
    .parameter "config"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 186
    new-instance v0, Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/scalado/app/ui/Wheel;-><init>(Lcom/scalado/app/ui/UiManager;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    .line 187
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->wheelIndicatorBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relCenter:Landroid/graphics/PointF;

    iget v4, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relR:F

    iget v5, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->relRimW:F

    iget v6, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorY:F

    iget v7, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorExtraY:F

    invoke-virtual/range {v0 .. v7}, Lcom/scalado/app/ui/Wheel;->setLayoutParams(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFFF)V

    .line 190
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelCallback:Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Wheel;->setCallback(Lcom/scalado/app/ui/Wheel$WheelCallback;)V

    .line 191
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->addWidget(Lcom/scalado/app/ui/Widget;)V

    .line 192
    new-instance v0, Lcom/scalado/app/ui/Group;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/scalado/app/ui/Group;-><init>(Lcom/scalado/app/ui/UiManager;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    .line 193
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/Group;->addChild(Lcom/scalado/app/ui/Widget;)V

    .line 195
    new-instance v0, Lcom/scalado/app/ui/JobIndicator;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v2, p1, Lcom/scalado/app/rewind/RewindViewerConfig;->jobbingBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/app/ui/JobIndicator;-><init>(Lcom/scalado/app/ui/UiManager;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mJobIndicator:Lcom/scalado/app/ui/JobIndicator;

    .line 196
    new-instance v0, Lcom/scalado/app/ui/Background;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0, v1}, Lcom/scalado/app/ui/Background;-><init>(Lcom/scalado/app/ui/UiManager;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;

    .line 197
    return-void
.end method

.method public setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V
    .locals 4
    .parameter "rewind"
    .parameter "numImages"

    .prologue
    const/4 v3, 0x0

    .line 210
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    .line 211
    iput p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    .line 212
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    new-instance v1, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setCallback(Lcom/scalado/app/rewind/RewindSession$RewindCallback;)V

    .line 217
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    sget-object v1, Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;->QUALITY:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->setPriority(Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)V

    .line 219
    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I

    .line 220
    iput v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mThumbsReady:I

    .line 225
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker;

    iget v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AsyncTracker;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;

    .line 226
    return-void
.end method

.method public showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 1
    .parameter "buffer"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewBytes:[B

    .line 273
    iput-object p2, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewSize:Lcom/scalado/base/Size;

    .line 274
    iput-object p3, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mPostviewConfig:Lcom/scalado/base/Image$Config;

    .line 275
    iget-boolean v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->privateClear()V

    .line 278
    :cond_0
    return-void
.end method

.method public startBenchmark()V
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mT0:J

    .line 397
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/scalado/app/rewind/ManualRewindViewer;->requestUpdate()V

    .line 683
    :cond_0
    return-void
.end method
