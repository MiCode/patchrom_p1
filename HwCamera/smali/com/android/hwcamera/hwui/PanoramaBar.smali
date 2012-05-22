.class public Lcom/android/hwcamera/hwui/PanoramaBar;
.super Landroid/widget/FrameLayout;
.source "PanoramaBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;
    }
.end annotation


# static fields
.field public static final CANCEL_STATE:I = 0x4

.field public static final CAPTURE_STATE:I = 0x1

.field public static final DIRECTION_INIT:I = 0x0

.field public static final DIRECTION_LEFT:I = 0x5

.field public static final DIRECTION_RIGHT:I = 0x6

.field public static final DIRECTION_STOP:I = 0x7

.field public static final DIRECTION_STOP_NORMAL:I = 0x8

.field public static final DIRECTION_TEMP_LEFT:I = 0x3

.field public static final DIRECTION_TEMP_RIGHT:I = 0x4

.field public static final DIRECTION_TIPS:I = 0x1

.field public static final DIRECTION_UNKNOW:I = 0x2

.field public static final IDLE_STATE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PANORAMA_MINI_PIC_HEIGHT:I = 0x0

.field private static final PANORAM_GET_MINI_JOINT_TIMER:I = 0x28

.field private static final PANORAM_GET_NEW_MINI_JOINT_PICTURE_MSG:I = 0x1

.field public static final PANORMA_CAPTURE_MAX_PICTURES:I = 0x6

.field public static final PICTURE_OVERLAP:F = 0.6f

.field public static final PREVEIW_STATE:I = 0x2

.field public static final PROCESSING_STATE:I = 0x3

.field private static final RESET_CANCELABLE_FLAG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanoramaBar"

.field private static mCurrentState:I


# instance fields
.field private mAnimToLeft:Landroid/view/animation/Animation;

.field private mAnimToRight:Landroid/view/animation/Animation;

.field private mAnimationDx:F

.field private mAnimationDy:F

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBControlAble:Z

.field private mContext:Landroid/content/Context;

.field public mCurPicture:Landroid/widget/ImageView;

.field private mFlashArrowsanim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mImagePaddingLeft:F

.field private mImagePaddingTop:F

.field private mLeftIndicator:Landroid/view/View;

.field private mLinerLayout:Landroid/view/View;

.field private mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

.field private mMaskAnimation:Landroid/view/animation/Animation;

.field private mMiniPictureCnt:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPanoramaBarRect:Landroid/graphics/Rect;

.field private mPanoramaStatus:I

.field private mPanorama_mini_height:I

.field private mPanorama_thubnail_max_with:I

.field private mPanorma_thubnail_width:F

.field private mPicParam:Landroid/widget/FrameLayout$LayoutParams;

.field private mRightIndicator:Landroid/view/View;

.field private mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

.field private newbitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    :goto_0
    sput v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    return-void

    .line 83
    :cond_0
    const/16 v0, 0x45

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 68
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 72
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 73
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 76
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 77
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 86
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 87
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 88
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 307
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$1;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$2;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 99
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    .line 103
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 68
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 72
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 73
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 76
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 77
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 86
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 87
    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 88
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 307
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$1;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/hwcamera/hwui/PanoramaBar$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaBar$2;-><init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 107
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    .line 111
    :cond_0
    const v0, 0x7f040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    .line 114
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    int-to-float v0, v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    .line 115
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMaxThubnailWidth(F)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/hwui/PanoramaBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/PanoramaBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/PanoramaBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setAlignBase(Z)V

    return-void
.end method

.method private drawDashBackGround(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4000

    const/4 v8, 0x0

    .line 274
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 276
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getWidth()I

    move-result v3

    .line 279
    .local v3, width:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 280
    .local v2, padtop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 281
    .local v1, padleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    .line 282
    int-to-float v4, v1

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    .line 283
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    add-int/2addr v7, v2

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    .line 296
    .end local v1           #padleft:I
    .end local v2           #padtop:I
    .end local v3           #width:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xef

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 297
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 299
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getHeight()I

    move-result v0

    .line 287
    .local v0, height:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 288
    .restart local v1       #padleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    sub-int v4, v0, v4

    div-int/lit8 v2, v4, 0x2

    .line 289
    .restart local v2       #padtop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorma_thubnail_width:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    .line 290
    int-to-float v4, v2

    iput v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    .line 291
    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_mini_height:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    add-int/2addr v7, v2

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaBarRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private flashArrows()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 594
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 595
    .local v2, imageHeight:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 598
    .local v1, height:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 599
    .local v3, width:I
    const/4 v0, 0x0

    .line 600
    .local v0, animatLeft:Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animatLeft:Landroid/view/animation/Animation;
    neg-int v4, v3

    int-to-float v4, v4

    invoke-direct {v0, v6, v4, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 604
    .restart local v0       #animatLeft:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v3

    invoke-direct {v4, v6, v5, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    .line 613
    :goto_0
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 614
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 615
    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 617
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 618
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 619
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 620
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 621
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->showTwoArrows(Z)V

    .line 622
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 623
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 624
    return-void

    .line 608
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animatLeft:Landroid/view/animation/Animation;
    neg-int v4, v1

    int-to-float v4, v4

    invoke-direct {v0, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 609
    .restart local v0       #animatLeft:Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    invoke-direct {v4, v6, v6, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public static getMaxThubnailWidth(F)I
    .locals 2
    .parameter "width"

    .prologue
    .line 119
    const/high16 v0, 0x4080

    mul-float/2addr v0, p0

    const v1, 0x3ecccccc

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static isOnPanoramaCapture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 337
    sget v1, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazPreview()Z
    .locals 2

    .prologue
    .line 341
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazProcessing()Z
    .locals 2

    .prologue
    .line 345
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnPanoramazProcessingCancel()Z
    .locals 2

    .prologue
    .line 349
    sget v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDirectionChanged(I)V
    .locals 9
    .parameter "direct"

    .prologue
    const-wide/16 v7, 0x258

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    const-string v1, "PanoramaBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDirectionChanged direct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDirectionNew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    .line 381
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    packed-switch v1, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 384
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->flashArrows()V

    .line 385
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 388
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    goto :goto_0

    .line 391
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    goto :goto_0

    .line 394
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    .line 397
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 401
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    neg-float v2, v2

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    .line 410
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 411
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 412
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 406
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    neg-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;

    goto :goto_1

    .line 418
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->showOneArrow(Z)V

    .line 421
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 425
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDx:F

    invoke-direct {v1, v2, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    .line 434
    :goto_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 435
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 436
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 437
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 439
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->moveTrackerToEdge(ZI)V

    .line 430
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimationDy:F

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;

    goto :goto_2

    .line 444
    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->showTwoArrows(Z)V

    goto/16 :goto_0

    .line 448
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 449
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopPanoramaTracker()V

    .line 450
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->restoreUi()V

    .line 451
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    if-eqz v1, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, bshot:Z
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    invoke-interface {v1, v0}, Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;->onPanroamaStop(Z)V

    goto/16 :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private setAlignBase(Z)V
    .locals 7
    .parameter "top_left"

    .prologue
    const/4 v6, 0x0

    .line 467
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 469
    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    :goto_0
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 470
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 471
    .local v3, width:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 472
    .local v1, marginleft:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    float-to-int v4, v4

    sub-int v3, v4, v1

    .line 476
    add-int/lit8 v3, v3, 0x1

    .line 477
    if-eqz p1, :cond_1

    .line 478
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 479
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 502
    .end local v1           #marginleft:I
    .end local v3           #width:I
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    const-string v4, "PanoramaBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Move picture to top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->requestLayout()V

    .line 507
    return-void

    .line 469
    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    .line 481
    .restart local v1       #marginleft:I
    .restart local v3       #width:I
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 482
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 486
    .end local v1           #marginleft:I
    .end local v3           #width:I
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_3

    const/16 v4, 0x50

    :goto_2
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 488
    .local v0, hegiht:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v2, v0, v4

    .line 489
    .local v2, margintop:I
    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    float-to-int v4, v4

    sub-int v0, v4, v2

    .line 493
    add-int/lit8 v0, v0, 0x1

    .line 494
    if-eqz p1, :cond_4

    .line 495
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 496
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 486
    .end local v0           #hegiht:I
    .end local v2           #margintop:I
    :cond_3
    const/16 v4, 0x30

    goto :goto_2

    .line 498
    .restart local v0       #hegiht:I
    .restart local v2       #margintop:I
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 499
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public static setPanoramaState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 333
    sput p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurrentState:I

    .line 334
    return-void
.end method

.method private showOneArrow(Z)V
    .locals 3
    .parameter "bShowLeft"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method beginGetJointPictures()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setMiniPanorama(Z)Z

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 556
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelPanorama()V

    .line 557
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    return v0
.end method

.method public getImagePaddingLeft()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingLeft:F

    return v0
.end method

.method public getImagePaddingTop()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mImagePaddingTop:F

    return v0
.end method

.method public getMiniPanoramaLenghth()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 537
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 548
    :goto_0
    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0

    .line 548
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNewMinishot()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setMiniPanorama(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const/4 v0, 0x0

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 209
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyBeforeCaputre()V

    .line 210
    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    if-ne v1, v0, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method

.method public getPanoramaControlAble()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    return v0
.end method

.method public movePanoramaToEdge(I)V
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    .line 627
    const-string v0, "PanoramaBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePanoramaToEdge direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v5, v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v4, v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v3, v0, :cond_3

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 635
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 638
    :cond_3
    if-nez p1, :cond_4

    .line 641
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->lockPanoramaDirection(I)V

    .line 642
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0

    .line 644
    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->lockPanoramaDirection(I)V

    .line 645
    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method

.method public notifyBeforeCaputre()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->drawDashBackGround(Landroid/graphics/Canvas;)V

    .line 199
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 127
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 129
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    .line 130
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    .line 131
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    .line 133
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/PanoramaTracker;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    .line 134
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setTrackerparent(Lcom/android/hwcamera/hwui/PanoramaBar;)V

    .line 135
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    return-void
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mListeners:Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;

    .line 565
    return-void
.end method

.method public restoreUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 237
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setKeepScreenOn(Z)V

    .line 240
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z

    .line 241
    iput v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mMiniPictureCnt:I

    .line 242
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    iput-object v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 246
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->restoreTrackerPostion(II)V

    .line 249
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setVisibility(I)V

    .line 252
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLinerLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->requestLayout()V

    .line 265
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPicParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public setMiniPanorama(Z)Z
    .locals 4
    .parameter "bShut"

    .prologue
    const/4 v0, 0x1

    .line 510
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v1, v2, :cond_1

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->stopGetJointPictures()V

    .line 531
    :goto_0
    return v0

    .line 514
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->getMiniPanorama()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    .line 515
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 516
    const-string v0, "PanoramaBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get mini bitmap is null mPanoramaStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 518
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->newbitmap:Landroid/graphics/Bitmap;

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOrientationEx(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 653
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaTracker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setOrientationEx(I)V

    .line 656
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 139
    const-string v2, "PanoramaBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPosition x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDirectionNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-nez v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getNewMinishot()Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v2, 0x7

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v2, v3, :cond_0

    .line 147
    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v5, v2, :cond_2

    iget v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-eq v6, v2, :cond_2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I

    if-ne v2, v3, :cond_4

    .line 153
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    move v1, p2

    .line 157
    .local v1, temp:I
    move p2, p1

    .line 158
    move p1, v1

    .line 160
    .end local v1           #temp:I
    :cond_3
    const/4 v2, -0x3

    if-gt p2, v2, :cond_5

    .line 161
    invoke-direct {p0, v5}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 168
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setPosition(II)I

    move-result v0

    .line 169
    .local v0, status:I
    invoke-virtual {p0, p1, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->trialRelativeOffset(II)V

    goto :goto_0

    .line 162
    .end local v0           #status:I
    :cond_5
    if-lt p2, v5, :cond_4

    .line 163
    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_1
.end method

.method public showTwoArrows(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 269
    .local v0, visable:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void

    .line 268
    .end local v0           #visable:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 0
    .parameter "iscaplast"

    .prologue
    .line 552
    invoke-static {p1}, Lcom/android/hwcamera/Util;->stopPanorama(Z)V

    .line 553
    return-void
.end method

.method stopGetJointPictures()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    return-void
.end method

.method public stopPanoramaTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 327
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mTrackerView:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->setVisibility(I)V

    .line 330
    return-void
.end method

.method trialRelativeOffset(II)V
    .locals 2
    .parameter "x"
    .parameter "status"

    .prologue
    .line 174
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 175
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getMiniPanoramaLenghth()I

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar;->mPanorama_thubnail_max_with:I

    if-le v0, v1, :cond_0

    .line 180
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V

    goto :goto_0
.end method
