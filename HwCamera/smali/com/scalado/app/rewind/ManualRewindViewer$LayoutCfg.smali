.class Lcom/scalado/app/rewind/ManualRewindViewer$LayoutCfg;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutCfg"
.end annotation


# instance fields
.field private mIndicator:Landroid/graphics/Bitmap;

.field private mJobbing:Landroid/graphics/Bitmap;

.field private mLens:Landroid/graphics/Bitmap;

.field private mLensRelCenter:Landroid/graphics/PointF;

.field private mLensRelR:F

.field private mLensRelRimW:F

.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$LayoutCfg;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
