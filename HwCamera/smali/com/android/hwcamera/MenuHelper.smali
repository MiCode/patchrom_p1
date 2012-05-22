.class public Lcom/android/hwcamera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field private static final CAMERA_CLASS:Ljava/lang/String; = "com.android.hwcamera.Camera"

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_SHOWMAP_MENU:I = 0x80

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MENU_IMAGE_SHARE:I = 0x1

.field public static final MENU_IMAGE_SHOWMAP:I = 0x2

.field private static final NO_ANIMATION:I = 0x0

.field private static final PANORAMA_CLASS:Ljava/lang/String; = "com.android.hwcamera.panorama.PanoramaActivity"

.field public static final POSITION_GOTO_GALLERY:I = 0x2

.field public static final POSITION_SWITCH_CAMERA_ID:I = 0x3

.field public static final POSITION_SWITCH_CAMERA_MODE:I = 0x1

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final REWIND_CLASS:Ljava/lang/String; = "com.android.hwcamera.rewind.RewindActivity"

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field private static final VIDEO_CAMERA_CLASS:Ljava/lang/String; = "com.android.hwcamera.VideoCamera"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSwitchModeMenuItem(Landroid/view/Menu;ILjava/lang/Runnable;)V
    .locals 5
    .parameter "menu"
    .parameter "mode"
    .parameter "r"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const v2, 0x7f0c0115

    .line 137
    .local v2, labelId:I
    const v0, 0x7f020025

    .line 143
    .local v0, iconId:I
    invoke-interface {p0, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/hwcamera/MenuHelper$2;

    invoke-direct {v4, p2}, Lcom/android/hwcamera/MenuHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 150
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 92
    new-instance v0, Lcom/android/hwcamera/MenuHelper$1;

    invoke-direct {v0, p3}, Lcom/android/hwcamera/MenuHelper$1;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 108
    return-void
.end method

.method public static gotoCameraImageGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 213
    const v0, 0x7f0c0006

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 215
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 208
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    const-string v1, "com.android.hwcamera.Camera"

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 218
    const v0, 0x7f0c0007

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 220
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 224
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 227
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static gotoMode(ILandroid/app/Activity;)V
    .locals 5
    .parameter "mode"
    .parameter "activity"

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_0

    .line 194
    const-string v2, "MenuHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown camera mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const-string v0, "com.android.hwcamera.rewind.RewindActivity"

    .line 178
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.hwcamera.rewind.RewindActivity"

    .line 179
    .local v1, className:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 182
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_1
    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 183
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.hwcamera.VideoCamera"

    .line 197
    .restart local v1       #className:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v1}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_2
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    .line 187
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.hwcamera.Camera"

    .line 188
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 190
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #className:Ljava/lang/String;
    :pswitch_3
    const-string v0, "com.android.hwcamera.panorama.PanoramaActivity"

    .line 191
    .restart local v0       #action:Ljava/lang/String;
    const-string v1, "com.android.hwcamera.panorama.PanoramaActivity"

    .line 192
    .restart local v1       #className:Ljava/lang/String;
    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 202
    const-string v0, "android.media.action.VIDEO_CAMERA"

    const-string v1, "com.android.hwcamera.VideoCamera"

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private static startCameraActivity(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "intent"
    .parameter "className"

    .prologue
    .line 156
    const/high16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "action"
    .parameter "className"

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 122
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 128
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
