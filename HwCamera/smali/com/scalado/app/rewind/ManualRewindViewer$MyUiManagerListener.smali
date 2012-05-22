.class Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/scalado/app/ui/UiManager$UiManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUiManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public needsDrawing()Z
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x0

    return v0
.end method

.method public onDeselect(Lcom/scalado/app/ui/Widget;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mWheelGroup:Lcom/scalado/app/ui/Group;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1800(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Group;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    const/4 v1, 0x0

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->startHideWheel(Z)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1900(Lcom/scalado/app/rewind/ManualRewindViewer;Z)V

    .line 1132
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1077
    const/4 v1, 0x0

    .line 1078
    .local v1, code:I
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1079
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$602(Lcom/scalado/app/rewind/ManualRewindViewer;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1081
    :cond_0
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I
    invoke-static {v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$700(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I
    invoke-static {v6}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$800(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1082
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/BitmapManager;->lockDisplayed()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1083
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    .line 1084
    .local v3, unlock:Z
    if-eqz v0, :cond_6

    .line 1085
    const/4 v2, 0x0

    .line 1086
    .local v2, srcRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1087
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/scalado/app/rewind/ScreenAnimation;->update(J)V

    .line 1088
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/scalado/app/rewind/ScreenAnimation;->render(Landroid/graphics/Bitmap;)V

    .line 1089
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/ScreenAnimation;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1090
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/ScreenAnimation;->done()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/ui/Background;->hide()V

    .line 1092
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/scalado/app/ui/Background;->setMoving(Z)V

    .line 1093
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/ScreenAnimation;->end()V

    .line 1095
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/ScreenAnimation;->getUserCode()I

    move-result v1

    .line 1096
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    const/4 v5, 0x0

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v4, v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1002(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ScreenAnimation;)Lcom/scalado/app/rewind/ScreenAnimation;

    .line 1101
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1200(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1102
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBgPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1300(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1104
    :cond_2
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->pfd:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1400(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1105
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDstRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$600(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mCurPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1200(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1109
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :goto_1
    if-eqz v3, :cond_3

    .line 1110
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/BitmapManager;->unlockDisplayed()V

    .line 1112
    :cond_3
    if-eqz v1, :cond_4

    .line 1113
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v4

    iget-object v5, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayWidth:I
    invoke-static {v5}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$700(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mDisplayHeight:I
    invoke-static {v6}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$800(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5, v6, v7}, Lcom/scalado/app/rewind/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 1115
    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 1117
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->endShowWheel()V
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1500(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    .line 1123
    :cond_4
    :goto_2
    return-void

    .line 1099
    .restart local v2       #srcRect:Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 1107
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :cond_6
    const-string v4, "ManualRewindViewer"

    const-string v5, "mCurBitmap == null!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1120
    :cond_7
    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->endHideWheel()V
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1600(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    goto :goto_2
.end method

.method public onIndexFocused(Lcom/scalado/app/ui/Widget;I)V
    .locals 4
    .parameter "w"
    .parameter "index"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0, p2}, Lcom/scalado/app/rewind/RewindSession;->setForeground(I)V

    .line 1140
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v1, v1, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RewindSession;->getBackground()I

    move-result v1

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/RewindSession;->getForeground()I

    move-result v2

    const/4 v3, 0x0

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->setupZoomRect(IILandroid/graphics/Rect;)V
    invoke-static {v0, v1, v2, v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2000(Lcom/scalado/app/rewind/ManualRewindViewer;IILandroid/graphics/Rect;)V

    .line 1142
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mContinuousUpdates:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2200(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onIndexSelected(Lcom/scalado/app/ui/Widget;I)V
    .locals 1
    .parameter "w"
    .parameter "index"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mUpdatePreview:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->needUpdate(I)Z
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2400(Lcom/scalado/app/rewind/ManualRewindViewer;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyUiManagerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->requestMagnifiedUpdate()V
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2200(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    goto :goto_0
.end method

.method public onNoneSelected()V
    .locals 0

    .prologue
    .line 1135
    return-void
.end method

.method public onSelected(Lcom/scalado/app/ui/Widget;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 1126
    return-void
.end method
