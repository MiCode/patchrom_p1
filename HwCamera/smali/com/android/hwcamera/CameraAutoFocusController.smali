.class public Lcom/android/hwcamera/CameraAutoFocusController;
.super Ljava/lang/Object;
.source "CameraAutoFocusController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;,
        Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;,
        Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;,
        Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;,
        Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;
    }
.end annotation


# static fields
.field private static final AF_AUTO_PREVIEW_MODE:I = 0x0

.field private static final AF_AUTO_TAKEPICTURE_MODE:I = 0x1

.field private static final AF_CONTROLLER_ENABLE_KEY:Ljava/lang/String; = "ro.config.camera.afctl.enable"

.field private static final AF_CONTROLLER_FINISHED:I = 0x2

.field private static final AF_CONTROLLER_FOCUSING:I = 0x1

.field private static final AF_CONTROLLER_NOT_START:I = 0x0

.field private static final AF_CONTROLLER_SENSOR_TYPE_KEY:Ljava/lang/String; = "ro.config.camera.sensor.type"

.field private static final AF_TOUCH_MODE:I = 0x10

.field private static final SENSOR_TYPE_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final SENSOR_TYPE_GYROSCOPE:Ljava/lang/String; = "gyroscope"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isEnable:Z

.field private isWorking:Z

.field private mAfMode:I

.field private mAfState:I

.field private mFactory:Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;

.field private mListener:Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;

.field private mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "CameraAutoFocusController"

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking:Z

    .line 30
    iput v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    .line 35
    iput v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    .line 37
    iput-object v2, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 38
    iput-object v2, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mListener:Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;

    .line 40
    new-instance v0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;-><init>(Lcom/android/hwcamera/CameraAutoFocusController;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mFactory:Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;

    .line 41
    iput-object v2, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    .line 183
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 185
    invoke-direct {p0}, Lcom/android/hwcamera/CameraAutoFocusController;->initialize()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraAutoFocusController;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraAutoFocusController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 192
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking:Z

    .line 198
    const-string v0, "accelerometer"

    .line 199
    .local v0, sensorType:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mFactory:Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensorFactory;->createAFSensor(Ljava/lang/String;)Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    .line 200
    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    const-string v2, "factory createAFSensor is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    .line 204
    :cond_0
    return-void
.end method

.method private setAFState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 297
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    if-ne v0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    .line 303
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public isAfAutoPreviewMode()Z
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAfAutoTakePicMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 334
    iget v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    return v0
.end method

.method public isWorking()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 238
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraAutoFocusController;->isAfAutoPreviewMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->isInitialize()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->initialize(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 253
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    if-nez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->isMoving([F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mListener:Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mListener:Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;->onAutoFocus()V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->isMoving([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "pause!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 233
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    const-string v1, "resume!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, v3}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->getSensor()Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor register failed, sensor name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->getSensorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-boolean v3, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    .line 215
    :cond_0
    return-void
.end method

.method public setAFPreviewMode()V
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    .line 339
    return-void
.end method

.method public setAFTakePicMode()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    .line 343
    return-void
.end method

.method public setAfAUTOMode()V
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    .line 347
    return-void
.end method

.method public setAfFinishState()V
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public setAfFocuingState()V
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setAfNotStartState()V
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public setAfTOUCHMode()V
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mAfMode:I

    .line 351
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->setInitialize(Z)V

    .line 352
    return-void
.end method

.method public setListener(Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mListener:Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;

    .line 266
    return-void
.end method

.method public setWorking(Z)V
    .locals 1
    .parameter "isWorking"

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking:Z

    if-ne v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isWorking:Z

    goto :goto_0
.end method

.method public startGSensorDetection()V
    .locals 3

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAFState(I)V

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->getSensor()Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor register failed, sensor name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/CameraAutoFocusController;->mSensor:Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->getSensorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController;->isEnable:Z

    .line 226
    :cond_0
    return-void
.end method
