.class Lcom/android/hwcamera/hwui/SuperPanel$1;
.super Landroid/os/Handler;
.source "SuperPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/SuperPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SuperPanel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SuperPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v2, -0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, subMenuContentLength:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 289
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 345
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 346
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 295
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    .line 299
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 301
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    goto :goto_1

    .line 307
    :pswitch_1
    if-lez v0, :cond_3

    .line 309
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 310
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x2

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto :goto_1

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$300(Lcom/android/hwcamera/hwui/SuperPanel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    goto :goto_1

    .line 319
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    goto/16 :goto_1

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    goto/16 :goto_1

    .line 323
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto/16 :goto_1

    .line 331
    :pswitch_3
    if-lez v0, :cond_7

    .line 333
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 334
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x4

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto/16 :goto_1

    .line 336
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->access$302(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    .line 337
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSubPanelClosed()V

    .line 338
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x0

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$602(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_1

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
