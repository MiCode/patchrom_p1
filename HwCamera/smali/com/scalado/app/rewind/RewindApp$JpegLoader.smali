.class Lcom/scalado/app/rewind/RewindApp$JpegLoader;
.super Landroid/os/AsyncTask;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method

.method private loadFromAssets([Ljava/lang/String;[I)V
    .locals 11
    .parameter "images"
    .parameter "sizes"

    .prologue
    .line 1114
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindApp;->access$2400(Lcom/scalado/app/rewind/RewindApp;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 1115
    .local v5, mgr:Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1145
    :cond_0
    return-void

    .line 1119
    :cond_1
    aget-object v6, p1, v2

    .line 1120
    .local v6, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 1124
    .local v3, in:Ljava/io/InputStream;
    const-string v8, "RewindApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1127
    aget v7, p2, v2

    .line 1128
    .local v7, size:I
    new-array v0, v7, [B

    .line 1129
    .local v0, bytes:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 1132
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->addJpeg([B)V
    invoke-static {v8, v0}, Lcom/scalado/app/rewind/RewindApp;->access$3700(Lcom/scalado/app/rewind/RewindApp;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1135
    if-eqz v3, :cond_2

    .line 1137
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1115
    .end local v0           #bytes:[B
    .end local v7           #size:I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1138
    .restart local v0       #bytes:[B
    .restart local v7       #size:I
    :catch_0
    move-exception v4

    .line 1139
    .local v4, ioe:Ljava/io/IOException;
    const-string v8, "RewindApp"

    const-string v9, "Exception when closing input stream!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v8, "RewindApp"

    const-string v9, "Ex:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1133
    .end local v0           #bytes:[B
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v7           #size:I
    :catch_1
    move-exception v8

    .line 1135
    if-eqz v3, :cond_2

    .line 1137
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1138
    :catch_2
    move-exception v4

    .line 1139
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v8, "RewindApp"

    const-string v9, "Exception when closing input stream!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v8, "RewindApp"

    const-string v9, "Ex:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1135
    .end local v4           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_3

    .line 1137
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1141
    :cond_3
    :goto_2
    throw v8

    .line 1138
    :catch_3
    move-exception v4

    .line 1139
    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadFromMemory()V
    .locals 4

    .prologue
    .line 1102
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1103
    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/scalado/app/rewind/RewindApp;->access$3800(Lcom/scalado/app/rewind/RewindApp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1104
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1105
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    :cond_0
    return-void

    .line 1108
    :cond_1
    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mJpegData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/scalado/app/rewind/RewindApp;->access$3800(Lcom/scalado/app/rewind/RewindApp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    #calls: Lcom/scalado/app/rewind/RewindApp;->addJpeg([B)V
    invoke-static {v3, v2}, Lcom/scalado/app/rewind/RewindApp;->access$3700(Lcom/scalado/app/rewind/RewindApp;[B)V

    .line 1104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadFromSD([Ljava/lang/String;)V
    .locals 12
    .parameter "images"

    .prologue
    .line 1066
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1067
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_0

    .line 1068
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1099
    :cond_0
    return-void

    .line 1071
    :cond_1
    aget-object v7, p1, v2

    .line 1072
    .local v7, name:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v8, v9

    .line 1075
    .local v8, size:I
    const/4 v3, 0x0

    .line 1076
    .local v3, in:Ljava/io/InputStream;
    const-string v9, "RewindApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    new-array v0, v8, [B

    .line 1081
    .local v0, bytes:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 1082
    iget-object v9, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->addJpeg([B)V
    invoke-static {v9, v0}, Lcom/scalado/app/rewind/RewindApp;->access$3700(Lcom/scalado/app/rewind/RewindApp;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1089
    if-eqz v4, :cond_4

    .line 1091
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1067
    .end local v0           #bytes:[B
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 1093
    .local v5, ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1095
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1

    .line 1083
    .end local v0           #bytes:[B
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 1084
    .restart local v5       #ioe:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v9, "RewindApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1086
    .local v6, msg1:Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v6, Landroid/os/Message;->what:I

    .line 1087
    iget-object v9, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/scalado/app/rewind/RewindApp;->access$3600(Lcom/scalado/app/rewind/RewindApp;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1089
    if-eqz v3, :cond_2

    .line 1091
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1092
    :catch_2
    move-exception v5

    .line 1093
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1089
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v6           #msg1:Landroid/os/Message;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    .line 1091
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1095
    :cond_3
    :goto_4
    throw v9

    .line 1092
    :catch_3
    move-exception v5

    .line 1093
    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v10, "RewindApp"

    const-string v11, "Exception when closing input stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v10, "RewindApp"

    const-string v11, "Ex:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1089
    .end local v3           #in:Ljava/io/InputStream;
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 1083
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v0       #bytes:[B
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_4
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "ints"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->loadFromAssets([Ljava/lang/String;[I)V

    .line 1062
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->loadFromSD([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1053
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1151
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1053
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1148
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1053
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
