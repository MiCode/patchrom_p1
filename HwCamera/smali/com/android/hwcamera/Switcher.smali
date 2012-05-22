.class public Lcom/android/hwcamera/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Switcher$OnSwitchListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0xc8

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "Switcher"


# instance fields
.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    .line 48
    iput v0, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    .line 55
    return-void
.end method

.method private startParkingAnimation()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    .line 142
    iget v0, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    iput v0, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartPosition:I

    .line 143
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 149
    .local v0, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 153
    .local v2, drawableHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 163
    .end local v2           #drawableHeight:I
    :goto_0
    iget v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-gez v4, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 164
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-le v4, v0, :cond_1

    iput v0, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    .line 166
    return-void

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 159
    .local v3, drawableWidth:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v3

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_0
.end method

.method private tryToSetSwitch(Z)V
    .locals 2
    .parameter "onOff"

    .prologue
    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 78
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/Switcher;->startParkingAnimation()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/hwcamera/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 78
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/Switcher;->startParkingAnimation()V

    goto :goto_0

    .line 74
    :cond_2
    :try_start_2
    iput-boolean p1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/Switcher;->startParkingAnimation()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/Switcher;->startParkingAnimation()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 235
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 172
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 173
    .local v5, drawableHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 175
    .local v6, drawableWidth:I
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    .line 181
    .local v1, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v5

    .line 191
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    .line 192
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 193
    .local v10, time:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    sub-long v12, v10, v12

    long-to-int v2, v12

    .line 194
    .local v2, deltaTime:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v13, :cond_6

    .end local v2           #deltaTime:I
    :goto_2
    mul-int/lit16 v13, v2, 0xc8

    div-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 196
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 197
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-le v12, v1, :cond_3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v13, :cond_7

    .end local v1           #available:I
    :goto_3
    if-ne v12, v1, :cond_8

    const/4 v3, 0x1

    .line 199
    .local v3, done:Z
    :goto_4
    if-nez v3, :cond_9

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    .line 216
    .end local v3           #done:Z
    .end local v10           #time:J
    :cond_4
    :goto_5
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    add-int v8, v12, v13

    .line 219
    .local v8, offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v7, v12, 0x2

    .line 226
    .local v7, offsetLeft:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 227
    .local v9, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 228
    int-to-float v12, v7

    int-to-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 188
    .end local v7           #offsetLeft:I
    .end local v8           #offsetTop:I
    .end local v9           #saveCount:I
    .restart local v1       #available:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v6

    goto/16 :goto_1

    .line 194
    .restart local v2       #deltaTime:I
    .restart local v10       #time:J
    :cond_6
    neg-int v2, v2

    goto :goto_2

    .line 198
    .end local v2           #deltaTime:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .end local v1           #available:I
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 202
    .restart local v3       #done:Z
    :cond_9
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    goto :goto_5

    .line 204
    .end local v3           #done:Z
    .end local v10           #time:J
    .restart local v1       #available:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->isPressed()Z

    move-result v12

    if-nez v12, :cond_4

    .line 206
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 208
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v12, :cond_b

    const/4 v1, 0x0

    .end local v1           #available:I
    :cond_b
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_5

    .line 211
    .restart local v1       #available:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v12, :cond_d

    .end local v1           #available:I
    :goto_7
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_5

    .restart local v1       #available:I
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 222
    .end local v1           #available:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v8, v12, 0x2

    .line 223
    .restart local v8       #offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    add-int v7, v12, v13

    .restart local v7       #offsetLeft:I
    goto :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 241
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return v3

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 105
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 137
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v0, v1, v4

    goto :goto_1

    .line 107
    :pswitch_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 113
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 117
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 119
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    iget v1, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_2

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    .line 129
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 122
    goto :goto_3

    .line 126
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_4

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    goto :goto_4

    :cond_4
    move v1, v3

    goto :goto_5

    .line 133
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    goto :goto_2

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    .line 87
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean p1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    .line 60
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    goto :goto_0
.end method
