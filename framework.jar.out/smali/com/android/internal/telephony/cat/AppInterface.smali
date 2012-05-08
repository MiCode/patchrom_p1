.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final BROWSER_TERMINATE_ACTION:Ljava/lang/String; = "android.intent.action.stk.browser_terminate_action"

.field public static final BROWSER_TERMINATION_CAUSE:Ljava/lang/String; = "browser_termination_cause"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.action.stk.check_screen_idle"

.field public static final STK_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"


# virtual methods
.method public abstract getLanguageNotificationCode()Ljava/lang/String;
.end method

.method public abstract getLanguageSelectionStateAvailable()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract sendLanguageSelection(II)V
.end method

.method public abstract setLanguageSelectionStateAvailable(Z)V
.end method
