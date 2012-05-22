.class Lcom/android/hwcamera/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/hwcamera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/LocationManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "provider"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    .line 130
    iput-object p2, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 132
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "newLocation"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$000(Lcom/android/hwcamera/LocationManager;)Lcom/android/hwcamera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$100(Lcom/android/hwcamera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$000(Lcom/android/hwcamera/LocationManager;)Lcom/android/hwcamera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/hwcamera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    if-nez v0, :cond_2

    .line 148
    const-string v0, "LocationManager"

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 151
    iput-boolean v4, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    .line 161
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 156
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->mValid:Z

    .line 170
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$000(Lcom/android/hwcamera/LocationManager;)Lcom/android/hwcamera/LocationManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$100(Lcom/android/hwcamera/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager$LocationListener;->this$0:Lcom/android/hwcamera/LocationManager;

    #getter for: Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;
    invoke-static {v0}, Lcom/android/hwcamera/LocationManager;->access$000(Lcom/android/hwcamera/LocationManager;)Lcom/android/hwcamera/LocationManager$Listener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/hwcamera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
