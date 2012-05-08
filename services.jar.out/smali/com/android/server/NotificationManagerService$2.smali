.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, action:Ljava/lang/String;
    const/4 v10, 0x0

    .line 326
    .local v10, queryRestart:Z
    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 331
    :cond_0
    const/4 v8, 0x0

    .line 332
    .local v8, pkgList:[Ljava/lang/String;
    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 333
    const-string v13, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 347
    :goto_0
    if-eqz v8, :cond_7

    array-length v13, v8

    if-lez v13, :cond_7

    .line 348
    move-object v3, v8

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_7

    aget-object v9, v3, v6

    .line 349
    .local v9, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-nez v10, :cond_5

    const/4 v13, 0x1

    :goto_2
    move/from16 v0, v16

    invoke-virtual {v14, v9, v15, v0, v13}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 348
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 334
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 335
    const-string v13, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 338
    .local v12, uri:Landroid/net/Uri;
    if-nez v12, :cond_4

    .line 414
    .end local v8           #pkgList:[Ljava/lang/String;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 341
    .restart local v8       #pkgList:[Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 342
    .restart local v9       #pkgName:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 345
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    .end local v8           #pkgList:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v9, v8, v13

    .restart local v8       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v12           #uri:Landroid/net/Uri;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 352
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #pkgList:[Ljava/lang/String;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v14, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v13, v14}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    .line 387
    :cond_7
    :goto_4
    const-string v13, "true"

    const-string v14, "ro.config.hw_quickpoweron"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 388
    const-string v13, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    monitor-enter v14

    .line 390
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 391
    .local v1, N:I
    add-int/lit8 v5, v1, -0x1

    .local v5, i:I
    :goto_5
    if-ltz v5, :cond_e

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 393
    .local v11, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v13, v13, Landroid/app/Notification;->flags:I

    and-int/lit8 v13, v13, 0x6

    if-eqz v13, :cond_9

    const-string v13, "android"

    iget-object v15, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "system"

    iget-object v15, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 395
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_8

    .line 397
    :try_start_1
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v13, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v13}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :cond_8
    :goto_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v15, 0x0

    #calls: Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    invoke-static {v13, v11, v15}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 360
    .end local v1           #N:I
    .end local v5           #i:I
    .end local v11           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_a
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v14, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v13, v14}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 366
    :cond_b
    const-string v13, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v13, v14}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 370
    :cond_c
    const-string v13, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_4

    .line 378
    :cond_d
    const-string v13, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_4

    .line 398
    .restart local v1       #N:I
    .restart local v5       #i:I
    .restart local v11       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catch_0
    move-exception v4

    .line 401
    .local v4, ex:Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "canceled PendingIntent for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 409
    .end local v1           #N:I
    .end local v4           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v5           #i:I
    .end local v11           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 408
    .restart local v1       #N:I
    .restart local v5       #i:I
    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v13}, Lcom/android/server/NotificationManagerService;->access$1000(Lcom/android/server/NotificationManagerService;)V

    .line 409
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method
