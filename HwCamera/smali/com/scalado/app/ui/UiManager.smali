.class public Lcom/scalado/app/ui/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/ui/UiManager$1;,
        Lcom/scalado/app/ui/UiManager$WidgetEvent;,
        Lcom/scalado/app/ui/UiManager$AnimationTimerTask;,
        Lcom/scalado/app/ui/UiManager$UiManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UiManager"


# instance fields
.field private mAnimIvl:J

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurTime:J

.field private mDirty:Z

.field private mDirtyArea:Landroid/graphics/Rect;

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDirtyRectSet:Z

.field private mDownModalWidget:Lcom/scalado/app/ui/Widget;

.field private mDownWidget:Lcom/scalado/app/ui/Widget;

.field private mDrawOrder:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mFullyInvalidated:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInvalidated:Z

.field private mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

.field private mLstDrawT:J

.field private mModalWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionCounter:I

.field private mMotionIvl:I

.field private mOnUpWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectClosest:Z

.field private mSize:Lcom/scalado/base/Size;

.field private final mSyncObj:Ljava/lang/Object;

.field private mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchDown:Z

.field private mWidgetRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/UiManager$WidgetEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/ui/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    .line 41
    iput-object v2, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 42
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    .line 45
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRect:Landroid/graphics/Rect;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRectSet:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    .line 50
    iput-object v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 704
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/scalado/app/ui/UiManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/scalado/app/ui/UiManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->updateDirtyArea()V

    return-void
.end method

.method static synthetic access$1200(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->privateDraw()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/scalado/app/ui/UiManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/scalado/app/ui/UiManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/scalado/app/ui/UiManager;->mCurTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/scalado/app/ui/UiManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/scalado/app/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mLstDrawT:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/scalado/app/ui/UiManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/scalado/app/ui/UiManager;)Lcom/scalado/app/ui/UiManager$UiManagerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/ui/UiManager;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    return-object v0
.end method

.method private getModal()Lcom/scalado/app/ui/Widget;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Widget;

    goto :goto_0
.end method

.method private invalidateFully()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 418
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 419
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 423
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    return-void
.end method

.method private logSync(I)V
    .locals 6
    .parameter "n"

    .prologue
    .line 715
    const-string v0, "UiManager"

    const-string v1, "sync %d id=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method private logSyncEnd(I)V
    .locals 6
    .parameter "n"

    .prologue
    .line 721
    const-string v0, "UiManager"

    const-string v1, "sync end %d id=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 223
    iput-boolean v11, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 224
    iput-object v12, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 225
    iput-object v12, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 226
    iput-boolean v10, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 227
    iput-boolean v10, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 228
    iput v10, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, ret:Z
    const/4 v0, 0x1

    .line 231
    .local v0, checkAllWidgets:Z
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v5

    .line 232
    .local v5, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 233
    invoke-virtual {v5, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 234
    if-nez v6, :cond_7

    .line 235
    iget-object v10, v5, Lcom/scalado/app/ui/Widget;->mCfg:Lcom/scalado/app/ui/Widget$Config;

    iget-boolean v10, v10, Lcom/scalado/app/ui/Widget$Config;->mOnTopDeselectOnDown:Z

    if-nez v10, :cond_6

    .line 236
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 237
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 238
    const/4 v0, 0x0

    .line 243
    :goto_0
    const/4 v6, 0x1

    .line 249
    :goto_1
    invoke-virtual {v5}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 252
    :cond_0
    invoke-virtual {p0, v5}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 255
    :cond_1
    if-eqz v0, :cond_a

    .line 256
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/ui/Widget;

    .line 257
    .local v7, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eq v7, v5, :cond_2

    invoke-virtual {v7, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 258
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 261
    :cond_3
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 262
    invoke-virtual {p0, v7}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 263
    const/4 v6, 0x1

    .line 267
    .end local v7           #w:Lcom/scalado/app/ui/Widget;
    :cond_4
    if-nez v6, :cond_a

    .line 268
    const v3, 0x7f7fffff

    .line 269
    .local v3, dMin:F
    const/4 v1, 0x0

    .line 270
    .local v1, closest:Lcom/scalado/app/ui/Widget;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 271
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 273
    .local v9, y:I
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/ui/Widget;

    .line 274
    .restart local v7       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v7, v8, v9}, Lcom/scalado/app/ui/Widget;->distance(II)F

    move-result v2

    .line 275
    .local v2, d:F
    invoke-virtual {v7}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eq v7, v5, :cond_5

    cmpg-float v10, v2, v3

    if-gez v10, :cond_5

    .line 276
    move-object v1, v7

    .line 277
    move v3, v2

    goto :goto_2

    .line 240
    .end local v1           #closest:Lcom/scalado/app/ui/Widget;
    .end local v2           #d:F
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #w:Lcom/scalado/app/ui/Widget;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_6
    invoke-virtual {p0, v5}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 241
    iget-object v10, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v10, v5}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    goto/16 :goto_0

    .line 245
    :cond_7
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 246
    iput-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 247
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 280
    .restart local v1       #closest:Lcom/scalado/app/ui/Widget;
    .restart local v3       #dMin:F
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_8
    if-eqz v1, :cond_a

    const v10, 0x7f7fffff

    cmpg-float v10, v3, v10

    if-gez v10, :cond_a

    .line 281
    iput-boolean v11, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 282
    invoke-virtual {v1, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 284
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 286
    :cond_9
    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 287
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 288
    const/4 v6, 0x1

    .line 292
    .end local v1           #closest:Lcom/scalado/app/ui/Widget;
    .end local v3           #dMin:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_a
    return v6
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 296
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    if-lez v1, :cond_2

    .line 297
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    iget v2, p0, Lcom/scalado/app/ui/UiManager;->mMotionIvl:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 298
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 299
    const/4 v0, 0x1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    iget v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 303
    :cond_2
    const/4 v0, 0x0

    .line 304
    .local v0, ret:Z
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, ret:Z
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4, p1}, Lcom/scalado/app/ui/Widget;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 324
    const/4 v2, 0x1

    .line 327
    :cond_1
    if-nez v2, :cond_2

    .line 328
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    if-eqz v4, :cond_4

    .line 329
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 330
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 331
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-interface {v4, v5}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 332
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 333
    const/4 v2, 0x1

    .line 348
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v4, :cond_3

    .line 349
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v4}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onNoneSelected()V

    .line 351
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 352
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/Widget;

    .line 353
    .local v3, w:Lcom/scalado/app/ui/Widget;
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    #getter for: Lcom/scalado/app/ui/UiManager$WidgetEvent;->mEvent:I
    invoke-static {v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;->access$000(Lcom/scalado/app/ui/UiManager$WidgetEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 351
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0           #i:I
    .end local v3           #w:Lcom/scalado/app/ui/Widget;
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/ui/Widget;

    .line 336
    .restart local v3       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v3}, Lcom/scalado/app/ui/Widget;->isInteractible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/scalado/app/ui/Widget;->mCfg:Lcom/scalado/app/ui/Widget$Config;

    iget-boolean v4, v4, Lcom/scalado/app/ui/Widget$Config;->mHideOnOut:Z

    if-eqz v4, :cond_5

    .line 337
    invoke-virtual {v3}, Lcom/scalado/app/ui/Widget;->onOut()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 339
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v4, v3}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 340
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 341
    const/4 v2, 0x1

    .line 342
    goto :goto_0

    .line 355
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v0       #i:I
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 356
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 359
    :pswitch_1
    iput-boolean v6, v3, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 360
    invoke-virtual {p0, v3}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_2

    .line 364
    .end local v3           #w:Lcom/scalado/app/ui/Widget;
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 365
    iget-object v4, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 366
    iput-boolean v6, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 367
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 368
    iput-object v7, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 369
    iput-boolean v6, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    .line 370
    return v2

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private privateDraw()Z
    .locals 8

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 432
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 433
    if-nez v0, :cond_1

    .line 434
    const-string v5, "UiManager"

    const-string v6, "Failed to lock canvas."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v5, 0x0

    .line 453
    if-eqz v0, :cond_0

    .line 454
    iget-object v6, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 457
    :cond_0
    :goto_0
    return v5

    .line 437
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v5, v0}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDraw(Landroid/graphics/Canvas;)V

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, n:I
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Widget;

    .line 440
    .local v4, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 441
    :cond_2
    invoke-virtual {v4, v0}, Lcom/scalado/app/ui/Widget;->draw(Landroid/graphics/Canvas;)V

    .line 442
    iget-object v5, v4, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 443
    iget-object v5, v4, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 444
    add-int/lit8 v3, v3, 0x1

    .line 446
    :cond_3
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->setClean()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 449
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:I
    .end local v4           #w:Lcom/scalado/app/ui/Widget;
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    const-string v5, "UiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in privateDraw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    if-eqz v0, :cond_4

    .line 454
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 457
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    const/4 v5, 0x1

    goto :goto_0

    .line 448
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #n:I
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/scalado/app/ui/UiManager;->mLstDrawT:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 453
    if-eqz v0, :cond_4

    .line 454
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 453
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:I
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 454
    iget-object v6, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_6
    throw v5
.end method

.method private final setDownWidget(Lcom/scalado/app/ui/Widget;Z)V
    .locals 0
    .parameter "w"
    .parameter "isOnTop"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 634
    if-eqz p2, :cond_0

    .line 635
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 637
    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    .line 640
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 642
    new-instance v0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;-><init>(Lcom/scalado/app/ui/UiManager;Lcom/scalado/app/ui/UiManager$1;)V

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    .line 643
    const-string v0, "kangwei"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    iget-wide v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    iget-wide v4, p0, Lcom/scalado/app/ui/UiManager;->mAnimIvl:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 646
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 649
    const-string v0, "kangwei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAnimation out if mAnimationTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "kangwei"

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 654
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 655
    iput-object v3, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    .line 656
    iput-object v3, p0, Lcom/scalado/app/ui/UiManager;->mTimerTask:Lcom/scalado/app/ui/UiManager$AnimationTimerTask;

    .line 658
    :cond_0
    return-void
.end method

.method private update()Z
    .locals 6

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, doDraw:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 464
    .local v2, t:J
    iput-wide v2, p0, Lcom/scalado/app/ui/UiManager;->mCurTime:J

    .line 465
    iget-object v5, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/ui/Widget;

    .line 466
    .local v4, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    invoke-virtual {v4, v2, v3}, Lcom/scalado/app/ui/Widget;->update(J)V

    .line 468
    invoke-virtual {p0, v4}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 469
    const/4 v0, 0x1

    goto :goto_0

    .line 472
    .end local v4           #w:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v0
.end method

.method private final updateDirtyArea()V
    .locals 4

    .prologue
    .line 607
    iget-boolean v2, p0, Lcom/scalado/app/ui/UiManager;->mFullyInvalidated:Z

    if-eqz v2, :cond_1

    .line 609
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->invalidateFully()V

    .line 630
    :cond_0
    return-void

    .line 611
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 612
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 613
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 615
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 619
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :cond_3
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 620
    .restart local v1       #w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 621
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 622
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/scalado/app/ui/Widget;->boundingBox(Landroid/graphics/Rect;)V

    .line 623
    iget-object v2, v1, Lcom/scalado/app/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mDirtyArea:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 625
    :cond_5
    invoke-virtual {p0, v1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_1
.end method


# virtual methods
.method public addWidget(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    monitor-exit v1

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method curTime()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/scalado/app/ui/UiManager;->mCurTime:J

    return-wide v0
.end method

.method public dims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public drawFirst(Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 123
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hide(Lcom/scalado/app/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 526
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;-><init>(Lcom/scalado/app/ui/UiManager;ILcom/scalado/app/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 534
    :goto_0
    monitor-exit v1

    .line 536
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 532
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateScreen()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mFullyInvalidated:Z

    .line 414
    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 415
    return-void
.end method

.method isForcedDown()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onDND(Lcom/scalado/app/ui/Widget;Lcom/scalado/app/ui/Item;Lcom/scalado/app/ui/Widget;)V
    .locals 0
    .parameter "src"
    .parameter "item"
    .parameter "dst"

    .prologue
    .line 573
    return-void
.end method

.method onIndexFocused(Lcom/scalado/app/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onIndexFocused(Lcom/scalado/app/ui/Widget;I)V

    .line 589
    :cond_0
    return-void
.end method

.method onIndexSelected(Lcom/scalado/app/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onIndexSelected(Lcom/scalado/app/ui/Widget;I)V

    .line 595
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, ret:Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 376
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v0

    .line 378
    .local v0, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v0, :cond_0

    .line 379
    const/4 v1, 0x1

    .line 381
    :cond_0
    monitor-exit v3

    .line 383
    .end local v0           #modal:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v1

    .line 381
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, ret:Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 389
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->getModal()Lcom/scalado/app/ui/Widget;

    move-result-object v0

    .line 391
    .local v0, modal:Lcom/scalado/app/ui/Widget;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 393
    invoke-virtual {p0, v0}, Lcom/scalado/app/ui/UiManager;->removeModal(Lcom/scalado/app/ui/Widget;)V

    .line 394
    invoke-virtual {p0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 395
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v2, v0}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onDeselect(Lcom/scalado/app/ui/Widget;)V

    .line 396
    const/4 v1, 0x1

    .line 398
    :cond_0
    monitor-exit v3

    .line 400
    .end local v0           #modal:Lcom/scalado/app/ui/Widget;
    :cond_1
    return v1

    .line 398
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onSelected(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    invoke-interface {v0, p1}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->onSelected(Lcom/scalado/app/ui/Widget;)V

    .line 583
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 189
    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mFullyInvalidated:Z

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, ret:Z
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRectSet:Z

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->update()Z

    .line 217
    monitor-exit v2

    .line 219
    return v0

    .line 196
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 197
    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 200
    goto :goto_0

    .line 202
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 203
    goto :goto_0

    .line 205
    :pswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownWidget:Lcom/scalado/app/ui/Widget;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDownModalWidget:Lcom/scalado/app/ui/Widget;

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mSelectClosest:Z

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method putOnTop(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    return-void
.end method

.method public putUnder(Lcom/scalado/app/ui/Widget;Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"
    .parameter "target"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    monitor-exit v2

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, i:I
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 137
    monitor-exit v2

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeModal(Lcom/scalado/app/ui/Widget;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 565
    :cond_0
    return-void
.end method

.method public removeWidget(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDrawOrder:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestDraw()V
    .locals 2

    .prologue
    .line 491
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 493
    monitor-exit v1

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestDraw(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 478
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRectSet:Z

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 483
    :goto_0
    monitor-exit v1

    .line 484
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirty(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mDirty:Z

    .line 543
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirtyRec(Lcom/scalado/app/ui/Widget;)V

    .line 544
    monitor-exit v1

    .line 546
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDirtyRec(Lcom/scalado/app/ui/Widget;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 549
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/scalado/app/ui/Widget;->mDirty:Z

    .line 550
    iget-object v2, p1, Lcom/scalado/app/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/ui/Widget;

    .line 551
    .local v0, child:Lcom/scalado/app/ui/Widget;
    invoke-virtual {p0, v0}, Lcom/scalado/app/ui/UiManager;->setDirtyRec(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 553
    .end local v0           #child:Lcom/scalado/app/ui/Widget;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/scalado/app/ui/UiManager$UiManagerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;

    .line 91
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p1}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 145
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v0, p2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 146
    monitor-exit v1

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager;->mHolder:Landroid/view/SurfaceHolder;

    .line 158
    monitor-exit v1

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method show(Lcom/scalado/app/ui/Widget;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 512
    iget-object v1, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mOnUpWidgets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v0, p0, Lcom/scalado/app/ui/UiManager;->mWidgetRequests:Ljava/util/Vector;

    new-instance v2, Lcom/scalado/app/ui/UiManager$WidgetEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/scalado/app/ui/UiManager$WidgetEvent;-><init>(Lcom/scalado/app/ui/UiManager;ILcom/scalado/app/ui/UiManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 520
    :goto_0
    monitor-exit v1

    .line 522
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/scalado/app/ui/Widget;->mVisible:Z

    .line 518
    invoke-virtual {p0, p1}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->startAnimation()V

    .line 164
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "clearModalWidget"

    .prologue
    .line 168
    const-string v2, "kangwei"

    const-string v3, "stop before sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/scalado/app/ui/UiManager;->stopAnimation()V

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v3, p0, Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/ui/Widget;

    .line 173
    .local v1, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->minimize()V

    .line 174
    invoke-virtual {v1}, Lcom/scalado/app/ui/Widget;->recycle()V

    goto :goto_0

    .line 177
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #w:Lcom/scalado/app/ui/Widget;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 176
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/scalado/app/ui/UiManager;->mModalWidgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 177
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v2, "kangwei"

    const-string v3, "stop after sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method touchDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 498
    iput-boolean v1, p0, Lcom/scalado/app/ui/UiManager;->mDirty:Z

    .line 499
    iput v1, p0, Lcom/scalado/app/ui/UiManager;->mMotionCounter:I

    .line 500
    return-void
.end method

.method touchIsDown()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    return v0
.end method

.method touchUp()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/UiManager;->mTouchDown:Z

    .line 504
    return-void
.end method
