.class public Lcom/killermobile/S2CallRec;
.super Ljava/lang/Object;
.source "S2CallRec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/S2CallRec$FixHandler;
    }
.end annotation


# static fields
.field public static final PREF_DONT_SHOW:Ljava/lang/String; = "com.killermobile.S2CallRec_dont_show"

.field private static final PREF_DONT_SHOW_DEF:Z = false

.field public static final PREF_FIXED:Ljava/lang/String; = "com.killermobile.S2CallRec_fixed"

.field private static final PREF_FIXED_DEF:Z = false

.field private static final s_warningMessage:Ljava/lang/String; = "Root privileges are required to modify your system.\n\nWarning: there is no guarantee that the procedure will work on every Samsung Galaxy SII modification or custom ROM. We are not responsible for any unwanted effects caused by this procedure - use at your own risk!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->fixNow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->later(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Lcom/killermobile/S2CallRec;->never(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/killermobile/S2CallRec;->fixCallRecording(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cleanPrefs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.killermobile.S2CallRec_fixed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    const-string v1, "com.killermobile.S2CallRec_dont_show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method private static native fixCallRecording(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private static fixNow(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 75
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, model:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 79
    :cond_0
    new-instance v0, Lcom/killermobile/S2CallRec$FixHandler;

    invoke-direct {v0, v4}, Lcom/killermobile/S2CallRec$FixHandler;-><init>(Lcom/killermobile/S2CallRec$FixHandler;)V

    .line 80
    .local v0, handler:Lcom/killermobile/S2CallRec$FixHandler;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/killermobile/S2CallRec$4;

    invoke-direct {v3, p0, v0}, Lcom/killermobile/S2CallRec$4;-><init>(Landroid/content/Context;Lcom/killermobile/S2CallRec$FixHandler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 91
    .end local v0           #handler:Lcom/killermobile/S2CallRec$FixHandler;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 93
    new-instance v0, Lcom/killermobile/S2CallRec$FixHandler;

    invoke-direct {v0, v4}, Lcom/killermobile/S2CallRec$FixHandler;-><init>(Lcom/killermobile/S2CallRec$FixHandler;)V

    .line 94
    .restart local v0       #handler:Lcom/killermobile/S2CallRec$FixHandler;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/killermobile/S2CallRec$5;

    invoke-direct {v3, p0, v0}, Lcom/killermobile/S2CallRec$5;-><init>(Landroid/content/Context;Lcom/killermobile/S2CallRec$FixHandler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 108
    .end local v0           #handler:Lcom/killermobile/S2CallRec$FixHandler;
    :cond_2
    return-void
.end method

.method private static later(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    const-string v0, "Нет изменений, внесенных в систему"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method

.method private static never(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.killermobile.S2CallRec_dont_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Испр. записи вызовов"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    const-string v2, "Эта функция может быть доступна снова через клавишу меню"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 120
    const-string v2, "Закрыть"

    new-instance v3, Lcom/killermobile/S2CallRec$6;

    invoke-direct {v3}, Lcom/killermobile/S2CallRec$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    return-void
.end method

.method public static restoreCallRecording(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "s2callrec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/S2CallRec;->undoFix(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static showUI(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 37
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "com.killermobile.S2CallRec_fixed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string v2, "com.killermobile.S2CallRec_dont_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Испр. записи вызовов"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 49
    const-string v2, "Нужны ROOT права для изменения системы.\n\nВнимание: нет никакой гарантии, что процедура будет работать на каждом модифицированном или с кастомным ROMом Samsung Galaxy SII. Мы не несем ответственность за любые нежелательные дейсвия, связанные с этой процедурой - используйте на свой страх и риск!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 50
    const-string v2, "Исправить"

    new-instance v3, Lcom/killermobile/S2CallRec$1;

    invoke-direct {v3, p0}, Lcom/killermobile/S2CallRec$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    const-string v2, "Позже"

    new-instance v3, Lcom/killermobile/S2CallRec$2;

    invoke-direct {v3, p0}, Lcom/killermobile/S2CallRec$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    const-string v2, "Никогда"

    new-instance v3, Lcom/killermobile/S2CallRec$3;

    invoke-direct {v3, p0}, Lcom/killermobile/S2CallRec$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static native undoFix(Ljava/lang/String;)Z
.end method
