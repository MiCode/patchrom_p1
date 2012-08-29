.class public Landroid/telephony/CallerInfoHW;
.super Ljava/lang/Object;
.source "CallerInfoHW.java"

# interfaces
.implements Landroid/telephony/TelephonyInterfacesHW;


# static fields
.field public static final MIN_MATCH:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CallerInfo"


# instance fields
.field private NUM_LONG:I

.field private NUM_SHORT:I

.field private configMatchNum:I

.field private configMatchNumShort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v1, "ro.config.hwft_MatchNum"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    .line 35
    iget v1, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    if-ge v1, v0, :cond_0

    :goto_0
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 37
    const-string/jumbo v0, "ro.config.hwft_MatchNumShort"

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    .line 38
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    :goto_1
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    return-void

    .line 35
    :cond_0
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    goto :goto_1
.end method


# virtual methods
.method public compareNums(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "num1"
    .parameter "num2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x7

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, num1Len:I
    const/4 v1, 0x0

    .line 46
    .local v1, num2Len:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 90
    :goto_0
    return v4

    .line 49
    :cond_1
    const-string v6, "CallerInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compareNums, num1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", num2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v6, "ro.config.hwft_MatchNum"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 62
    const-string v5, "gsm.hw.matchnum"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 63
    .local v2, numMatch:I
    const-string v5, "gsm.hw.matchnum.short"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 64
    .local v3, numMatchShort:I
    if-ge v2, v4, :cond_2

    move v2, v4

    .end local v2           #numMatch:I
    :cond_2
    iput v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 65
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .end local v3           #numMatchShort:I
    :cond_3
    iput v3, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 66
    const-string v4, "CallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerIndex(), after setprop NUM_LONG = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", NUM_SHORT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 73
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    iget v5, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-ge v4, v5, :cond_5

    .line 74
    const-string v4, "CallerInfo"

    const-string v5, "compareNums, NUM_SHORT have been set! Only do full compare."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v0, v4, :cond_6

    .line 82
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_6
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v1, v4, :cond_7

    .line 86
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v4, v1, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    :cond_7
    const-string v4, "CallerInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareNums, new num1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new num2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "cursor"
    .parameter "compNum"

    .prologue
    .line 95
    const-string/jumbo v0, "number"

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .parameter "cursor"
    .parameter "compNum"
    .parameter "columnName"

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, compNumShort:Ljava/lang/String;
    const/4 v4, 0x0

    .line 100
    .local v4, compNumLong:Ljava/lang/String;
    const/4 v14, 0x0

    .line 101
    .local v14, tmpNum:Ljava/lang/String;
    const/16 v17, 0x0

    .line 102
    .local v17, tmpNumShort:Ljava/lang/String;
    const/16 v16, 0x0

    .line 104
    .local v16, tmpNumLong:Ljava/lang/String;
    const/4 v11, -0x1

    .line 105
    .local v11, numShortID:I
    const/4 v8, -0x1

    .line 106
    .local v8, numLongID:I
    const/4 v6, -0x1

    .line 109
    .local v6, fixedIndex:I
    const/16 v12, 0x3e7

    .line 110
    .local v12, relativelyLength:I
    const/4 v13, 0x0

    .line 120
    .local v13, tempRelativelyLength:I
    const-string/jumbo v18, "ro.config.hwft_MatchNum"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_2

    .line 122
    const-string v18, "gsm.hw.matchnum"

    const/16 v19, 0x7

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 123
    .local v9, numMatch:I
    const-string v18, "gsm.hw.matchnum.short"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 124
    .local v10, numMatchShort:I
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    const/4 v9, 0x7

    .end local v9           #numMatch:I
    :cond_0
    move-object/from16 v0, p0

    iput v9, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .end local v10           #numMatchShort:I
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 129
    :cond_2
    if-nez p2, :cond_4

    .line 132
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_3

    .line 134
    const/4 v6, 0x0

    .line 136
    :cond_3
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CallerInfoHW(),null == compNum!fixedIndex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 329
    .end local v6           #fixedIndex:I
    .local v7, fixedIndex:I
    :goto_0
    return v7

    .line 141
    .end local v7           #fixedIndex:I
    .restart local v6       #fixedIndex:I
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 144
    .local v3, compNumLen:I
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCallerIndex(), NUM_LONG = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", NUM_SHORT = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "compNum: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "compNumLen"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eqz p1, :cond_7

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v3, v0, :cond_d

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    sub-int v18, v3, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v3, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 161
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    .line 167
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 168
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 172
    .local v15, tmpNumLen:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 178
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_6

    .line 180
    if-le v3, v15, :cond_8

    sub-int v13, v3, v15

    .line 181
    :goto_1
    if-le v12, v13, :cond_6

    .line 183
    move v12, v13

    .line 184
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 213
    :cond_6
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_5

    .line 215
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v8, :cond_b

    .line 216
    move v6, v8

    .line 327
    .end local v2           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_7
    :goto_3
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fixedIndex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 329
    .end local v6           #fixedIndex:I
    .restart local v7       #fixedIndex:I
    goto/16 :goto_0

    .line 180
    .end local v7           #fixedIndex:I
    .restart local v2       #columnIndex:I
    .restart local v6       #fixedIndex:I
    .restart local v15       #tmpNumLen:I
    :cond_8
    sub-int v13, v15, v3

    goto :goto_1

    .line 191
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 197
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_6

    .line 199
    if-le v3, v15, :cond_a

    sub-int v13, v3, v15

    .line 200
    :goto_4
    if-le v12, v13, :cond_6

    .line 202
    move v12, v13

    .line 203
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    goto :goto_2

    .line 199
    :cond_a
    sub-int v13, v15, v3

    goto :goto_4

    .line 217
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v11, :cond_c

    .line 218
    move v6, v11

    goto :goto_3

    .line 220
    :cond_c
    const/4 v6, -0x1

    goto :goto_3

    .line 224
    .end local v2           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v3, v0, :cond_15

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v3, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 231
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 233
    .restart local v2       #columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    .line 237
    :cond_e
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 238
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 239
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 241
    .restart local v15       #tmpNumLen:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_11

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 247
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 249
    if-le v3, v15, :cond_10

    sub-int v13, v3, v15

    .line 251
    :goto_5
    if-le v12, v13, :cond_f

    .line 253
    move v12, v13

    .line 254
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 283
    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_e

    .line 285
    :goto_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v11, :cond_13

    .line 286
    move v6, v11

    goto/16 :goto_3

    .line 249
    :cond_10
    sub-int v13, v15, v3

    goto :goto_5

    .line 260
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_f

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 266
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 268
    if-le v3, v15, :cond_12

    sub-int v13, v3, v15

    .line 269
    :goto_7
    if-le v12, v13, :cond_f

    .line 271
    move v12, v13

    .line 272
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    .line 273
    goto :goto_6

    .line 268
    :cond_12
    sub-int v13, v15, v3

    goto :goto_7

    .line 287
    :cond_13
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v8, :cond_14

    .line 288
    move v6, v8

    goto/16 :goto_3

    .line 290
    :cond_14
    const/4 v6, -0x1

    goto/16 :goto_3

    .line 296
    .end local v2           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 298
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 300
    .restart local v2       #columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    .line 304
    :cond_16
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 305
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 306
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 308
    .restart local v15       #tmpNumLen:I
    if-ne v15, v3, :cond_17

    .line 310
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_17

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_17

    .line 312
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 313
    goto/16 :goto_3

    .line 321
    :cond_17
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_16

    goto/16 :goto_3
.end method
