.class public Lcom/scalado/app/ui/Item$ItemConfig;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemConfig"
.end annotation


# instance fields
.field mFrameDx:I

.field mFrameDy:I

.field mFramePaint:Landroid/graphics/Paint;

.field mPaint:Landroid/graphics/Paint;

.field mSelectedDx:I

.field mSelectedDy:I

.field mSelectedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
