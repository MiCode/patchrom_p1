.class public Lcom/scalado/app/rewind/ScreenConfig;
.super Ljava/lang/Object;
.source "ScreenConfig.java"


# instance fields
.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mMinScreenHeight:I

.field private mMinScreenWidth:I

.field private mSame:Z

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/ScreenConfig;->mSame:Z

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 36
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/app/rewind/ScreenConfig;->mMinScreenWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 37
    .local v1, wq:F
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/app/rewind/ScreenConfig;->mMinScreenHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 38
    .local v0, hq:F
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    .line 39
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayWidth:I

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenWidth:I

    .line 40
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayHeight:I

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenHeight:I

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 42
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenWidth:I

    .line 43
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mMinScreenHeight:I

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenHeight:I

    goto :goto_0

    .line 45
    :cond_1
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mMinScreenWidth:I

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenWidth:I

    .line 46
    iget v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mMinScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenHeight:I

    goto :goto_0
.end method


# virtual methods
.method public height()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayHeight:I

    return v0
.end method

.method public setDisplaySize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 18
    iput p1, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayWidth:I

    .line 19
    iput p2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayHeight:I

    .line 20
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 31
    iput p1, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenWidth:I

    .line 32
    iput p2, p0, Lcom/scalado/app/rewind/ScreenConfig;->mScreenHeight:I

    .line 33
    return-void
.end method

.method public width()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/scalado/app/rewind/ScreenConfig;->mDisplayWidth:I

    return v0
.end method
