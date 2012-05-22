.class public Lcom/android/hwcamera/hwui/MenuCommon;
.super Ljava/lang/Object;
.source "MenuCommon.java"


# static fields
.field private static mFrameHeight:I

.field private static mFrameWidth:I

.field private static mMenuCollapseLength:I

.field private static mPanelContentLenght:I

.field private static mPanelSubContentLengthLandscape:I

.field private static mPanelSubContentLengthPortrait:I

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static mThirdMenuHeight:I

.field private static mThirdMenuMarginEdge:I

.field private static mThirdMenuWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    .line 6
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    .line 7
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    .line 8
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    .line 9
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    .line 10
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    .line 11
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenHeight:I

    .line 12
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    .line 13
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    .line 14
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    .line 15
    sput v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameHeight()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    return v0
.end method

.method public static getFrameWidth()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    return v0
.end method

.method public static getMenuCollapseLength()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    return v0
.end method

.method public static getPanelContentLength()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    return v0
.end method

.method public static getPanelSubContentLengthLandscape()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    return v0
.end method

.method public static getPanelSubContentLengthPortrait()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenHeight:I

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    return v0
.end method

.method public static getThirdMenuHeight()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    return v0
.end method

.method public static getThirdMenuWidth()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    return v0
.end method

.method public static getThirtMenuMarginEdge()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    return v0
.end method

.method public static setFrameHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 82
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameHeight:I

    .line 83
    return-void
.end method

.method public static setFrameWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 74
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mFrameWidth:I

    .line 75
    return-void
.end method

.method public static setMenuCollapseLength(I)V
    .locals 0
    .parameter "lenght"

    .prologue
    .line 90
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mMenuCollapseLength:I

    .line 91
    return-void
.end method

.method public static setPanelContentLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 18
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelContentLenght:I

    .line 19
    return-void
.end method

.method public static setPanelSubContentLengthLandscape(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 34
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthLandscape:I

    .line 35
    return-void
.end method

.method public static setPanelSubContentLengthPortrait(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 26
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mPanelSubContentLengthPortrait:I

    .line 27
    return-void
.end method

.method public static setScreenHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 66
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenHeight:I

    .line 67
    return-void
.end method

.method public static setScreenWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 58
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mScreenWidth:I

    .line 59
    return-void
.end method

.method public static setThirdMenuHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 42
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuHeight:I

    .line 43
    return-void
.end method

.method public static setThirdMenuMarginEdge(I)V
    .locals 0
    .parameter "margin"

    .prologue
    .line 98
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuMarginEdge:I

    .line 99
    return-void
.end method

.method public static setThirdMenuWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 50
    sput p0, Lcom/android/hwcamera/hwui/MenuCommon;->mThirdMenuWidth:I

    .line 51
    return-void
.end method
