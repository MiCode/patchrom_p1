.class Lcom/android/hwcamera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1870
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ImageCapture;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/hwcamera/Camera$ImageCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1870
    invoke-direct {p0}, Lcom/android/hwcamera/Camera$ImageCapture;->capture()V

    return-void
.end method

.method private capture()V
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1872
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mJpegImageData:[B
    invoke-static {v6, v10}, Lcom/android/hwcamera/Camera;->access$6802(Lcom/android/hwcamera/Camera;[B)[B

    .line 1876
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 1879
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1886
    :goto_0
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$9100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 1887
    .local v2, loc:Landroid/location/Location;
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mGpsSignalState:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$9200(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1888
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1889
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {v6, v5}, Lcom/android/hwcamera/Camera;->access$5402(Lcom/android/hwcamera/Camera;Z)Z

    .line 1893
    :goto_1
    invoke-static {v9}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1894
    invoke-static {}, Lcom/android/hwcamera/Util;->stopFaceDetection()V

    .line 1895
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1896
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Camera;->access$5002(Lcom/android/hwcamera/Camera;J)J

    .line 1897
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$5000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1898
    const-string v6, "yyyy:MM:dd kk:mm:ss"

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCaptureStartTime:J
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$5000(Lcom/android/hwcamera/Camera;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, datetime:Ljava/lang/String;
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Flow] Picture capture time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    .end local v0           #datetime:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1903
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 1904
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v7

    #calls: Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1905
    const/4 v1, 0x0

    .line 1906
    .local v1, interval:I
    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 1907
    :cond_1
    const/16 v1, 0xfa

    .line 1910
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9000(Lcom/android/hwcamera/Camera;)I

    move-result v5

    #setter for: Lcom/android/hwcamera/Camera;->mRecordBurstOrientation:I
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$9302(Lcom/android/hwcamera/Camera;I)I

    .line 1911
    invoke-static {v1}, Lcom/android/hwcamera/Util;->setBurstShootingInterval(I)Z

    .line 1912
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->setBurstTotalCaptures(I)V

    .line 1913
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 1914
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v5

    new-instance v6, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v6, v7, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v10, v10, v6}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1916
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v11}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    .line 1945
    .end local v1           #interval:I
    :goto_2
    const-string v4, "ro.camera.support.led"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1946
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 1947
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;)V

    .line 1950
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3200(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-lez v4, :cond_4

    .line 1954
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$9000(Lcom/android/hwcamera/Camera;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 1955
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9000(Lcom/android/hwcamera/Camera;)I

    move-result v5

    #setter for: Lcom/android/hwcamera/Camera;->mReviewOrientation:I
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$9902(Lcom/android/hwcamera/Camera;I)I

    .line 1959
    :cond_4
    return-void

    .line 1881
    .end local v2           #loc:Landroid/location/Location;
    :cond_5
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)I

    move-result v7

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v8}, Lcom/android/hwcamera/Camera;->access$9000(Lcom/android/hwcamera/Camera;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->setRotationParameter(Landroid/hardware/Camera$Parameters;II)V

    goto/16 :goto_0

    .line 1891
    .restart local v2       #loc:Landroid/location/Location;
    :cond_6
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mLocationState:Z
    invoke-static {v6, v9}, Lcom/android/hwcamera/Camera;->access$5402(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_1

    .line 1917
    :cond_7
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 1918
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mShowProcess:Z
    invoke-static {v6, v5}, Lcom/android/hwcamera/Camera;->access$9502(Lcom/android/hwcamera/Camera;Z)Z

    .line 1919
    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$1700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$9600(Lcom/android/hwcamera/Camera;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/hwcamera/Camera$ImageSaver;->resetSavedPictureCnt(I)V

    .line 1920
    invoke-static {}, Lcom/android/hwcamera/Util;->hasHwExtCamera()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1921
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v5, v6, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v4, v10, v10, v10, v5}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1922
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v11}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_2

    :cond_8
    move v4, v5

    .line 1919
    goto :goto_3

    .line 1924
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$9700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$9800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    move-result-object v7

    new-instance v8, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v9, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v8, v9, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1926
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v11}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_2

    .line 1928
    :cond_a
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v4

    const/16 v6, 0x9

    if-ne v4, v6, :cond_b

    .line 1929
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mShowProcess:Z
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$9502(Lcom/android/hwcamera/Camera;Z)Z

    .line 1930
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v5

    new-instance v6, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v6, v7, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v10, v10, v6}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1932
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v11}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_2

    .line 1933
    :cond_b
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 1934
    sget v4, Lcom/android/hwcamera/hwui/PanoramaBar;->PANORAMA_MINI_PIC_HEIGHT:I

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v4, v6}, Lcom/android/hwcamera/Util;->transformDPtoPX(ILandroid/content/Context;)I

    move-result v3

    .line 1935
    .local v3, panorama_mini_pic_height:I
    const/4 v4, 0x6

    const/high16 v6, 0x3e80

    new-instance v7, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v8, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v7, v8, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-static {v3, v4, v6, v10, v7}, Lcom/android/hwcamera/Util;->startPanorama(IIFLandroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1937
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    .line 1938
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1940
    .end local v3           #panorama_mini_pic_height:I
    :cond_c
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$9700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$9800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    move-result-object v7

    new-instance v8, Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v9, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {v8, v9, v2}, Lcom/android/hwcamera/Camera$JpegPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/hwcamera/HwCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1942
    iget-object v4, p0, Lcom/android/hwcamera/Camera$ImageCapture;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v11}, Lcom/android/hwcamera/Camera;->access$5702(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_2
.end method
