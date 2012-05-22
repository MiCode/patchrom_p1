.class public Lcom/android/hwcamera/hwui/RotateProgress;
.super Ljava/lang/Object;
.source "RotateProgress.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mRotateEnable:Z

.field private mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "RotateProgress"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mOrientation:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateEnable:Z

    .line 18
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/RotateProgress;->initRotateProgress()V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/RotateProgress;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initRotateProgress()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, lay:Landroid/view/LayoutInflater;
    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 35
    return-void
.end method


# virtual methods
.method protected createProcessDialogNoTitle(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "waitContent"

    .prologue
    .line 70
    new-instance v0, Lcom/android/hwcamera/hwui/RotateProgress$1;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/hwui/RotateProgress$1;-><init>(Lcom/android/hwcamera/hwui/RotateProgress;Landroid/content/Context;)V

    .line 83
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 85
    return-object v0
.end method

.method public getWaitingDialogShowing()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideWaitDialog()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;

    const-string v1, "hide progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 42
    :cond_0
    return-void
.end method

.method public onBackPressedEvent()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orient"

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateEnable:Z

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mOrientation:I

    .line 61
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 62
    .local v0, rotateProgressbarLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setDegree(I)V

    goto :goto_0
.end method

.method public setOriginOrientation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mOrientation:I

    .line 92
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 93
    .local v0, rotateProgressbarLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    iget v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setDegree(I)V

    .line 94
    return-void
.end method

.method public setRotateEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateEnable:Z

    .line 89
    return-void
.end method

.method public showWaitDialog()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->TAG:Ljava/lang/String;

    const-string v1, "show progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateProgress;->createProcessDialogNoTitle(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 28
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mWaitingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateProgress;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 29
    return-void
.end method
