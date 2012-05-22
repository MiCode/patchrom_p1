.class Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;
.super Ljava/lang/Object;
.source "RewindApp.java"

# interfaces
.implements Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindViewerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 4

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$Rewinding;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$Rewinding;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onAllImagesAdded()V

    .line 1009
    :cond_1
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onExit()V

    .line 1029
    :cond_0
    return-void
.end method

.method public onFaceDetecionComplete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->indexSelector:Lcom/scalado/app/rewind/ExtIndexSelector;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->indexSelector:Lcom/scalado/app/rewind/ExtIndexSelector;

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/ExtIndexSelector;->selectIndex(I)V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 1023
    :cond_2
    return-void
.end method

.method public onNewFaceUpdated()V
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1039
    .local v0, msg1:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1040
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$3600(Lcom/scalado/app/rewind/RewindApp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    return-void
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$MyRewindViewerCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onSaved(Ljava/lang/String;)V

    .line 1035
    :cond_0
    return-void
.end method
