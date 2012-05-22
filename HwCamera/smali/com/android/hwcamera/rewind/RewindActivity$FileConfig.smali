.class Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;
.super Ljava/lang/Object;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileConfig"
.end annotation


# instance fields
.field private mImgs:[Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPreviewEnabled:Z

.field private mPreviewEnabledSet:Z

.field private mRewindMode:I

.field private mRewindModeSet:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabledSet:Z

    .line 672
    iput-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z

    .line 675
    iput-object p1, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPath:Ljava/lang/String;

    .line 676
    iput-object p2, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mName:Ljava/lang/String;

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->fromFile(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->filename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabledSet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->numImages()I

    move-result v0

    return v0
.end method

.method private allJpegs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 735
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 737
    const/4 v1, 0x0

    .line 754
    :cond_0
    return-object v1

    .line 739
    :cond_1
    new-instance v2, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig$1;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig$1;-><init>(Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;)V

    .line 748
    .local v2, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, names:[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 750
    array-length v5, v4

    new-array v1, v5, [Ljava/lang/String;

    .line 751
    .local v1, files:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private filename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fromFile(Ljava/lang/String;)V
    .locals 11
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 681
    const-string v5, "RewindActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading config from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v3, Ljava/util/Scanner;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 684
    .local v3, scanner:Ljava/util/Scanner;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 685
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, line:Ljava/lang/String;
    const-string v5, "\\s*[=]\\s*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 688
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "preview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabledSet:Z

    .line 690
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 691
    const-string v5, "RewindActivity"

    const-string v6, "* Disabling preview."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 730
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    throw v5

    .line 693
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    const-string v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 694
    const-string v5, "RewindActivity"

    const-string v6, "* Enabling preview."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPreviewEnabled:Z

    goto :goto_0

    .line 697
    :cond_2
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "images"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 698
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "\\s*[,]\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, imgTokens:[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v10, :cond_4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 702
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->allJpegs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    goto/16 :goto_0

    .line 704
    :cond_4
    array-length v5, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 706
    iget-object v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    .end local v0           #i:I
    .end local v1           #imgTokens:[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "BurstSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 711
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 712
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 713
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindMode:I

    .line 714
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z

    .line 715
    const-string v5, "RewindActivity"

    const-string v6, "Rewind mode = \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 717
    :cond_6
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 718
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindMode:I

    .line 719
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mRewindModeSet:Z

    .line 720
    const-string v5, "RewindActivity"

    const-string v6, "Rewind mode = \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 723
    :cond_7
    const-string v5, "RewindActivity"

    const-string v6, "Illegal rewind mode: \'%s\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v4, v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 730
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 732
    return-void
.end method

.method private numImages()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/rewind/RewindActivity$FileConfig;->mImgs:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
