.class Lcom/scalado/app/ui/SelectionRect$Xmyzptlk;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/SelectionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Xmyzptlk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/ui/SelectionRect;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/SelectionRect;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/scalado/app/ui/SelectionRect$Xmyzptlk;->this$0:Lcom/scalado/app/ui/SelectionRect;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 616
    return-void
.end method
