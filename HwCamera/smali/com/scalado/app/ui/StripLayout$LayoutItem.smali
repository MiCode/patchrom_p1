.class public Lcom/scalado/app/ui/StripLayout$LayoutItem;
.super Ljava/lang/Object;
.source "StripLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/StripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LayoutItem"
.end annotation


# instance fields
.field protected mIndex:I

.field protected mOffset:F

.field protected mVisible:Z

.field final synthetic this$0:Lcom/scalado/app/ui/StripLayout;


# direct methods
.method protected constructor <init>(Lcom/scalado/app/ui/StripLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->this$0:Lcom/scalado/app/ui/StripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/ui/StripLayout$LayoutItem;->mVisible:Z

    return-void
.end method
