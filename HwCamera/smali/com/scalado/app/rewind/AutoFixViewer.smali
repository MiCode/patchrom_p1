.class public Lcom/scalado/app/rewind/AutoFixViewer;
.super Lcom/scalado/app/rewind/RewindViewer;
.source "AutoFixViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoFixViewer$1;,
        Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;
    }
.end annotation


# instance fields
.field private mAutoSession:Lcom/scalado/app/rewind/AutoSession;

.field private mCurIndex:I

.field private mDrawRects:Z

.field private mMergedIsDisplayed:Z

.field private mMsg:Ljava/lang/String;

.field private mNotReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPaint:Landroid/graphics/Paint;

.field private mReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBmp:Landroid/graphics/Bitmap;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSurfaceChanged:Z

.field private mTxtPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 7
    .parameter "surfaceView"

    .prologue
    const/16 v6, 0xff

    const/high16 v5, -0x4000

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 37
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindViewer;-><init>(Landroid/view/SurfaceView;)V

    .line 30
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    .line 34
    iput v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 42
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/scalado/app/rewind/AutoFixViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/AutoFixViewer;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$302(Lcom/scalado/app/rewind/AutoFixViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/AutoFixViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    return-void
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/AutoFixViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/AutoFixViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    return v0
.end method

.method private draw()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 168
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 169
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 170
    const-string v5, "RewindViewer"

    const-string v6, "Failed to lock canvas."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 174
    .local v4, w:I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 176
    .local v1, h:I
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    :cond_1
    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v5, :cond_3

    .line 180
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 184
    .local v3, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 188
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 189
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 191
    .restart local v3       #r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 196
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_3
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private privateClear()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 155
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0, v4, v4, v4}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 157
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 159
    .local v1, x:I
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 160
    .local v2, y:I
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    iget-object v6, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    .line 163
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    .line 144
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->privateClear()V

    .line 147
    :cond_0
    return-void
.end method

.method public display()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onSurfaceChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 126
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 127
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    .line 129
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->privateClear()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 72
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5, v0}, Lcom/scalado/app/rewind/ExtWidget;->getRect(Landroid/graphics/Rect;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 77
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 78
    .local v2, y:I
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 97
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 82
    .restart local v0       #r:Landroid/graphics/Rect;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 86
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 97
    goto :goto_0

    .line 91
    :pswitch_1
    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v5, :cond_0

    .line 92
    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    .line 93
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    .line 151
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    .line 69
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/AutoSession;->outputToFile(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public save(Ljava/lang/String;III)V
    .locals 0
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 250
    return-void
.end method

.method public selectBackground(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 113
    iget v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    .line 121
    :goto_1
    iput p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->getSourceImage(I)V

    goto :goto_1
.end method

.method public setAutoReplacer(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 3
    .parameter "autoReplacer"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 139
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;-><init>(Lcom/scalado/app/rewind/AutoFixViewer;Lcom/scalado/app/rewind/AutoFixViewer$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    .line 140
    return-void
.end method

.method public setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V
    .locals 0
    .parameter "ltw"
    .parameter "numImages"

    .prologue
    .line 63
    return-void
.end method
