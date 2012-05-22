.class Lcom/android/hwcamera/DefaultHashMap;
.super Ljava/util/HashMap;
.source "DefaultHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TValue;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, value:Ljava/lang/Object;,"TValue;"
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .end local v0           #value:Ljava/lang/Object;,"TValue;"
    :cond_0
    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)TKey;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    .local p1, toCheck:Ljava/lang/Object;,"TValue;"
    invoke-virtual {p0}, Lcom/android/hwcamera/DefaultHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TKey;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, key:Ljava/lang/Object;,"TKey;"
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, value:Ljava/lang/Object;,"TValue;"
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    .end local v1           #key:Ljava/lang/Object;,"TKey;"
    .end local v2           #value:Ljava/lang/Object;,"TValue;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putDefault(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TValue;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/android/hwcamera/DefaultHashMap;,"Lcom/android/hwcamera/DefaultHashMap<TKey;TValue;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TValue;"
    iput-object p1, p0, Lcom/android/hwcamera/DefaultHashMap;->mDefaultValue:Ljava/lang/Object;

    .line 15
    return-void
.end method
