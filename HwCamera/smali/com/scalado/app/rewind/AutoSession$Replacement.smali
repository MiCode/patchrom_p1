.class Lcom/scalado/app/rewind/AutoSession$Replacement;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Replacement"
.end annotation


# instance fields
.field mBg:I

.field mFeathering:I

.field mFg:I

.field mId:I

.field mMaxTransl:I

.field mRect:Lcom/scalado/base/Rect;

.field mRectBg:Landroid/graphics/Rect;

.field mRectFg:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method constructor <init>(Lcom/scalado/app/rewind/AutoSession;ILcom/scalado/base/Rect;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "rect"
    .parameter "feathering"
    .parameter "maxTransl"
    .parameter "bg"
    .parameter "fg"
    .parameter "rBg"
    .parameter "rFg"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput p2, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mId:I

    .line 626
    iput-object p3, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRect:Lcom/scalado/base/Rect;

    .line 627
    iput p4, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFeathering:I

    .line 628
    iput p5, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mMaxTransl:I

    .line 629
    iput p6, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mBg:I

    .line 630
    iput p7, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mFg:I

    .line 631
    iput-object p8, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectBg:Landroid/graphics/Rect;

    .line 632
    iput-object p9, p0, Lcom/scalado/app/rewind/AutoSession$Replacement;->mRectFg:Landroid/graphics/Rect;

    .line 633
    return-void
.end method
