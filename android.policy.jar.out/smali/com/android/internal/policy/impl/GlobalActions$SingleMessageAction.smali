.class abstract Lcom/android/internal/policy/impl/GlobalActions$SingleMessageAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingleMessageAction"
.end annotation


# instance fields
.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "statusResId"

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleMessageAction;->mStatusResId:I

    .line 388
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/16 v4, 0x8

    .line 398
    const v2, 0x1090040

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 400
    .local v1, v:Landroid/view/View;
    const v2, 0x1020263

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 402
    .local v0, statusView:Landroid/widget/TextView;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 403
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleMessageAction;->mStatusResId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 406
    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 411
    return-void
.end method

.method public abstract onPress()V
.end method
