.class Lcom/android/hwcamera/hwui/ListSubSettingView$1;
.super Ljava/lang/Object;
.source "ListSubSettingView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/ListSubSettingView;->initModeView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/ListSubSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 63
    .local v0, index:I
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    if-ne v3, v4, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$200(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, oldIndex:I
    if-eq v1, v0, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    monitor-enter v4

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/hwcamera/ListPreference;->setValueIndex(I)V

    .line 72
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$300(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->ChangeRadioImg(IZ)V

    .line 77
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const/4 v4, 0x1

    invoke-virtual {v3, p3, v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->ChangeRadioImg(IZ)V

    .line 78
    return-void

    .line 72
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
