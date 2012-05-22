.class public Lcom/scalado/app/ui/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final CENTER:I = 0xa

.field public static final HORIZONTAL:I = 0x14

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x3

.field public static final VERTICAL:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignInside(Landroid/graphics/Rect;IILandroid/graphics/Rect;II)V
    .locals 6
    .parameter "rect"
    .parameter "xPad"
    .parameter "yPad"
    .parameter "container"
    .parameter "xAlign"
    .parameter "yAlign"

    .prologue
    const/high16 v5, 0x3f00

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, x:I
    const/4 v2, 0x0

    .line 155
    .local v2, y:I
    sparse-switch p4, :sswitch_data_0

    .line 166
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad x-alignment."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :sswitch_0
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int v1, v3, p1

    .line 168
    :goto_0
    sparse-switch p5, :sswitch_data_1

    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad y-alignment."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :sswitch_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 161
    goto :goto_0

    .line 163
    :sswitch_2
    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v3, v4

    .line 164
    goto :goto_0

    .line 170
    :sswitch_3
    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int v2, v3, p2

    .line 181
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 182
    .local v0, tmpRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    return-void

    .line 173
    .end local v0           #tmpRect:Landroid/graphics/Rect;
    :sswitch_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 174
    goto :goto_1

    .line 176
    :sswitch_5
    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .line 177
    goto :goto_1

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xa -> :sswitch_1
    .end sparse-switch

    .line 168
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0xa -> :sswitch_4
    .end sparse-switch
.end method

.method public static alignInside(Landroid/graphics/Rect;IILcom/scalado/base/Size;II)V
    .locals 6
    .parameter "rect"
    .parameter "xPad"
    .parameter "yPad"
    .parameter "containerSize"
    .parameter "xAlign"
    .parameter "yAlign"

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v3, screenRect:Landroid/graphics/Rect;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/scalado/app/ui/Layout;->alignInside(Landroid/graphics/Rect;IILandroid/graphics/Rect;II)V

    .line 149
    return-void
.end method

.method public static centerRect(Landroid/graphics/Rect;II)V
    .locals 5
    .parameter "rect"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v4, 0x3f00

    .line 300
    int-to-float v2, p1

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 301
    .local v0, dx:I
    int-to-float v2, p2

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 302
    .local v1, dy:I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 303
    return-void
.end method

.method public static centerRectOn(Landroid/graphics/Rect;FF)V
    .locals 4
    .parameter "r"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f00

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 307
    .local v0, newX:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 308
    .local v1, newY:I
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 309
    return-void
.end method

.method public static centerRectOn(Landroid/graphics/Rect;FFFF)V
    .locals 2
    .parameter "r"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v1, 0x3f00

    .line 312
    mul-float v0, v1, p3

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 313
    mul-float v0, v1, p4

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 314
    mul-float v0, v1, p3

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 315
    mul-float v0, v1, p4

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 316
    return-void
.end method

.method public static ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "maxW"
    .parameter "maxH"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 259
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 262
    int-to-float v0, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 264
    :cond_1
    return-void
.end method

.method public static ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "maxSize"

    .prologue
    .line 268
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/scalado/app/ui/Layout;->ensureRectMaxSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V

    .line 269
    return-void
.end method

.method public static ensureRectMinSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "minW"
    .parameter "minH"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 244
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 247
    int-to-float v0, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;F)V

    .line 249
    :cond_1
    return-void
.end method

.method public static ensureRectMinSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "rect"
    .parameter "screenDims"
    .parameter "minSize"

    .prologue
    .line 253
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/scalado/app/ui/Layout;->ensureRectMinSize(Landroid/graphics/Rect;Lcom/scalado/base/Size;II)V

    .line 254
    return-void
.end method

.method public static putInRect([Landroid/graphics/Rect;IIIILandroid/graphics/Rect;III)V
    .locals 20
    .parameter "rects"
    .parameter "xBorder"
    .parameter "yBorder"
    .parameter "xPad"
    .parameter "yPad"
    .parameter "container"
    .parameter "xAlign"
    .parameter "yAlign"
    .parameter "dir"

    .prologue
    .line 188
    move-object/from16 v3, p0

    .line 189
    .local v3, dstRects:[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 190
    .local v4, dx:I
    const/4 v5, 0x0

    .line 191
    .local v5, dy:I
    packed-switch p8, :pswitch_data_0

    .line 199
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Bad direction."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 193
    :pswitch_0
    const/4 v4, 0x1

    .line 201
    :goto_0
    mul-int v18, v4, p1

    mul-int/lit8 v13, v18, 0x2

    .line 202
    .local v13, wBorder:I
    mul-int v18, v5, p2

    mul-int/lit8 v6, v18, 0x2

    .line 203
    .local v6, hBorder:I
    const/4 v12, 0x0

    .line 204
    .local v12, totWidth:I
    const/4 v11, 0x0

    .line 205
    .local v11, totHeight:I
    move-object/from16 v2, p0

    .local v2, arr$:[Landroid/graphics/Rect;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v10, v2, v8

    .line 206
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v18

    mul-int v18, v18, v4

    add-int v12, v12, v18

    .line 207
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v18

    mul-int v18, v18, v5

    add-int v11, v11, v18

    .line 205
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 196
    .end local v2           #arr$:[Landroid/graphics/Rect;
    .end local v6           #hBorder:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #r:Landroid/graphics/Rect;
    .end local v11           #totHeight:I
    .end local v12           #totWidth:I
    .end local v13           #wBorder:I
    :pswitch_1
    const/4 v5, 0x1

    .line 197
    goto :goto_0

    .line 209
    .restart local v2       #arr$:[Landroid/graphics/Rect;
    .restart local v6       #hBorder:I
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #totHeight:I
    .restart local v12       #totWidth:I
    .restart local v13       #wBorder:I
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int v18, v18, v4

    mul-int v18, v18, p3

    add-int v12, v12, v18

    .line 210
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int v18, v18, v5

    mul-int v18, v18, p4

    add-int v11, v11, v18

    .line 211
    add-int v18, v13, v12

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 212
    add-int v18, v13, v12

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int p1, p1, v18

    .line 214
    :cond_1
    add-int v18, v6, v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 215
    add-int v18, v6, v11

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int p2, p2, v18

    .line 218
    :cond_2
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v15, v18, p1

    .line 219
    .local v15, x0:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v18, p2

    .line 220
    .local v17, y0:I
    const/16 v18, 0x0

    aget-object v18, v3, v18

    const/16 v19, 0x0

    aget-object v19, p0, v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    const/16 v18, 0x0

    aget-object v18, v3, v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 222
    const/4 v7, 0x1

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 223
    add-int/lit8 v18, v7, -0x1

    aget-object v18, v3, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int/lit8 v19, v7, -0x1

    aget-object v19, v3, v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v19, v19, p3

    mul-int v19, v19, v4

    add-int v14, v18, v19

    .line 225
    .local v14, x:I
    add-int/lit8 v18, v7, -0x1

    aget-object v18, v3, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int/lit8 v19, v7, -0x1

    aget-object v19, v3, v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v19, v19, p4

    mul-int v19, v19, v5

    add-int v16, v18, v19

    .line 227
    .local v16, y:I
    aget-object v18, v3, v7

    aget-object v19, p0, v7

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    aget-object v18, v3, v7

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 231
    .end local v14           #x:I
    .end local v16           #y:I
    :cond_3
    return-void

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static resizeRect(Landroid/graphics/Rect;F)V
    .locals 0
    .parameter "rect"
    .parameter "s"

    .prologue
    .line 296
    invoke-static {p0, p1, p1}, Lcom/scalado/app/ui/Layout;->resizeRect(Landroid/graphics/Rect;FF)V

    .line 297
    return-void
.end method

.method public static resizeRect(Landroid/graphics/Rect;FF)V
    .locals 6
    .parameter "rect"
    .parameter "sx"
    .parameter "sy"

    .prologue
    const/high16 v5, 0x3f00

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 286
    .local v2, xc:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 287
    .local v3, yc:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    mul-float v1, v4, v5

    .line 288
    .local v1, w:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    mul-float v0, v4, v5

    .line 289
    .local v0, h:F
    sub-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 290
    sub-float v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 291
    add-float v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->right:I

    .line 292
    add-float v4, v3, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    .line 293
    return-void
.end method

.method public static resizeRect(Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "rect"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v3, 0x3f00

    .line 272
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 274
    .local v0, xc:F
    int-to-float v2, p1

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 275
    int-to-float v2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 277
    .end local v0           #xc:F
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq p2, v2, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 279
    .local v1, yc:F
    int-to-float v2, p2

    mul-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 280
    int-to-float v2, p2

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 282
    .end local v1           #yc:F
    :cond_1
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 8
    .parameter "rect"
    .parameter "s"

    .prologue
    const/high16 v7, 0x3f00

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 235
    .local v0, ar:F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 236
    .local v4, newW:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 237
    .local v3, newH:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v4, v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    neg-int v2, v5

    .line 238
    .local v2, dw:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    neg-int v1, v5

    .line 239
    .local v1, dh:I
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 240
    return-void
.end method

.method public static setNextTo(Landroid/graphics/Rect;Landroid/graphics/Rect;IILcom/scalado/base/Size;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "master"
    .parameter "satellite"
    .parameter "xPad"
    .parameter "yPad"
    .parameter "screenDims"
    .parameter "dst"

    .prologue
    .line 31
    const/4 v12, 0x4

    new-array v8, v12, [Landroid/graphics/Point;

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    aput-object v13, v8, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    aput-object v13, v8, v12

    .line 32
    .local v8, offsets:[Landroid/graphics/Point;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 33
    .local v3, cx:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 34
    .local v4, cy:I
    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int/2addr v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    add-int v14, v14, p3

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 35
    const/4 v12, 0x1

    aget-object v12, v8, v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v13, v13, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 36
    const/4 v12, 0x2

    aget-object v12, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int/2addr v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v14, v14, p3

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 37
    const/4 v12, 0x3

    aget-object v12, v8, v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Rect;->right:I

    add-int v13, v13, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 39
    const/4 v10, 0x0

    .line 40
    .local v10, screenRect:Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    .line 41
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #screenRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v15

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    .restart local v10       #screenRect:Landroid/graphics/Rect;
    :cond_0
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v11, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 49
    const/4 v5, 0x0

    .line 50
    .local v5, done:Z
    move-object v2, v8

    .local v2, arr$:[Landroid/graphics/Point;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v9, v2, v6

    .line 51
    .local v9, p:Landroid/graphics/Point;
    iget v12, v9, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 52
    if-eqz v10, :cond_3

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 53
    const/4 v5, 0x1

    .line 57
    .end local v9           #p:Landroid/graphics/Point;
    :cond_1
    if-nez v5, :cond_2

    .line 58
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 60
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 61
    return-void

    .line 50
    .restart local v9       #p:Landroid/graphics/Point;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static setNextTo(Landroid/graphics/Rect;[Landroid/graphics/Rect;IIIILcom/scalado/base/Size;[Landroid/graphics/Rect;)V
    .locals 26
    .parameter "master"
    .parameter "satellites"
    .parameter "xBorder"
    .parameter "yBorder"
    .parameter "xPad"
    .parameter "yPad"
    .parameter "screenDims"
    .parameter "dsts"

    .prologue
    .line 65
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/graphics/Point;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v16, v22

    const/16 v22, 0x1

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v16, v22

    const/16 v22, 0x2

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v16, v22

    const/16 v22, 0x3

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v16, v22

    .line 66
    .local v16, offsets:[Landroid/graphics/Point;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v7, v0, [Landroid/graphics/Point;

    const/16 v22, 0x0

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v7, v22

    const/16 v22, 0x1

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v7, v22

    const/16 v22, 0x2

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v7, v22

    const/16 v22, 0x3

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v7, v22

    .line 67
    .local v7, borders:[Landroid/graphics/Point;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v10, v0, [Landroid/graphics/Point;

    const/16 v22, 0x0

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v10, v22

    const/16 v22, 0x1

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v10, v22

    const/16 v22, 0x2

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v10, v22

    const/16 v22, 0x3

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    aput-object v23, v10, v22

    .line 68
    .local v10, dirs:[Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v22, 0x0

    aget-object v22, p1, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 69
    .local v6, bbox:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v19, tmp:Landroid/graphics/Rect;
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 71
    aget-object v22, p1, v12

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    add-int/lit8 v22, v12, -0x1

    aget-object v22, p1, v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v22, v22, p4

    add-int/lit8 v23, v12, -0x1

    aget-object v23, p1, v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, p5

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 73
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 70
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 77
    .local v8, cx:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 79
    .local v9, cy:I
    const/16 v22, 0x0

    aget-object v22, v16, v22

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    sub-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v24, v24, p3

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 80
    const/16 v22, 0x3

    aget-object v22, v16, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v24, v24, v9

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 81
    const/16 v22, 0x2

    aget-object v22, v16, v22

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    sub-int v23, v23, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v25

    sub-int v24, v24, v25

    sub-int v24, v24, p3

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 82
    const/16 v22, 0x1

    aget-object v22, v16, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int v23, v23, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v24, v24, v9

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 84
    const/16 v22, 0x0

    aget-object v22, v7, v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 85
    const/16 v22, 0x3

    aget-object v22, v7, v22

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 86
    const/16 v22, 0x2

    aget-object v22, v7, v22

    const/16 v23, 0x0

    move/from16 v0, p3

    neg-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 87
    const/16 v22, 0x1

    aget-object v22, v7, v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 94
    const/16 v22, 0x0

    aget-object v22, v10, v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 95
    const/16 v22, 0x3

    aget-object v22, v10, v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 96
    const/16 v22, 0x2

    aget-object v22, v10, v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 97
    const/16 v22, 0x1

    aget-object v22, v10, v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Point;->set(II)V

    .line 99
    const/16 v18, 0x0

    .line 100
    .local v18, screenRect:Landroid/graphics/Rect;
    if-eqz p6, :cond_1

    .line 101
    new-instance v18, Landroid/graphics/Rect;

    .end local v18           #screenRect:Landroid/graphics/Rect;
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v24

    invoke-virtual/range {p6 .. p6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .restart local v18       #screenRect:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 108
    const/4 v11, 0x0

    .line 109
    .local v11, done:Z
    const/4 v14, 0x0

    .line 110
    .local v14, index:I
    move-object/from16 v5, v16

    .local v5, arr$:[Landroid/graphics/Point;
    array-length v15, v5

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_2

    aget-object v17, v5, v13

    .line 111
    .local v17, p:Landroid/graphics/Point;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 112
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 113
    const/4 v11, 0x1

    .line 118
    .end local v17           #p:Landroid/graphics/Point;
    :cond_2
    if-nez v11, :cond_4

    .line 119
    const/16 v22, 0x0

    aget-object v22, p7, v22

    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    const/16 v22, 0x0

    aget-object v22, p7, v22

    invoke-virtual/range {p6 .. p6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v23

    sub-int v23, v23, p2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v23, v23, v24

    invoke-virtual/range {p6 .. p6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v24

    sub-int v24, v24, p3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 122
    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_5

    .line 123
    add-int/lit8 v22, v12, -0x1

    aget-object v22, p7, v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    aget-object v23, v10, v14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    add-int/lit8 v24, v12, -0x1

    aget-object v24, p7, v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    add-int v24, v24, p4

    mul-int v23, v23, v24

    add-int v20, v22, v23

    .line 125
    .local v20, x:I
    add-int/lit8 v22, v12, -0x1

    aget-object v22, p7, v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    aget-object v23, v10, v14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    add-int/lit8 v24, v12, -0x1

    aget-object v24, p7, v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, p5

    mul-int v23, v23, v24

    add-int v21, v22, v23

    .line 127
    .local v21, y:I
    aget-object v22, p7, v12

    aget-object v23, p1, v12

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    aget-object v22, p7, v12

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 116
    .end local v20           #x:I
    .end local v21           #y:I
    .restart local v17       #p:Landroid/graphics/Point;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 110
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 131
    .end local v17           #p:Landroid/graphics/Point;
    :cond_4
    const/16 v22, 0x0

    aget-object v22, p7, v22

    const/16 v23, 0x0

    aget-object v23, p1, v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    const/16 v22, 0x0

    aget-object v22, p7, v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 133
    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v12, v0, :cond_5

    .line 134
    add-int/lit8 v22, v12, -0x1

    aget-object v22, p7, v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    aget-object v23, v10, v14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    add-int/lit8 v24, v12, -0x1

    aget-object v24, p7, v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    add-int v24, v24, p4

    mul-int v23, v23, v24

    add-int v20, v22, v23

    .line 136
    .restart local v20       #x:I
    add-int/lit8 v22, v12, -0x1

    aget-object v22, p7, v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    aget-object v23, v10, v14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    add-int/lit8 v24, v12, -0x1

    aget-object v24, p7, v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, p5

    mul-int v23, v23, v24

    add-int v21, v22, v23

    .line 138
    .restart local v21       #y:I
    aget-object v22, p7, v12

    aget-object v23, p1, v12

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 139
    aget-object v22, p7, v12

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 133
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 142
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_5
    return-void
.end method
