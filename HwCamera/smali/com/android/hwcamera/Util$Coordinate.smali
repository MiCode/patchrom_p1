.class public Lcom/android/hwcamera/Util$Coordinate;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Util;

.field public xCoordinate:I

.field public yCoordinate:I


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Util;II)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/android/hwcamera/Util$Coordinate;->this$0:Lcom/android/hwcamera/Util;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2005
    iput p2, p0, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    .line 2006
    iput p3, p0, Lcom/android/hwcamera/Util$Coordinate;->yCoordinate:I

    .line 2007
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2020
    instance-of v2, p1, Lcom/android/hwcamera/Util$Coordinate;

    if-nez v2, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2023
    check-cast v0, Lcom/android/hwcamera/Util$Coordinate;

    .line 2024
    .local v0, c:Lcom/android/hwcamera/Util$Coordinate;
    iget v2, p0, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    iget v3, v0, Lcom/android/hwcamera/Util$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/hwcamera/Util$Coordinate;->yCoordinate:I

    iget v3, v0, Lcom/android/hwcamera/Util$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
