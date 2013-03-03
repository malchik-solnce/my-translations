.class public Lcom/killermobile/S3JBFix;
.super Ljava/lang/Object;
.source "S3JBFix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/S3JBFix$FixHandler;
    }
.end annotation


# static fields
.field public static final PREF_DONT_SHOW:Ljava/lang/String; = "com.killermobile.S3JbCallRec_dont_show"

.field private static final PREF_DONT_SHOW_DEF:Z = false

.field public static final PREF_FIXED:Ljava/lang/String; = "com.killermobile.S3JbCallRec_fixed"

.field private static final PREF_FIXED_DEF:Z = false

.field private static final s_warningMessage:Ljava/lang/String; = "Root privileges are required to modify your system.\n\nWarning: there is no guarantee that the procedure will work on every Samsung Galaxy SII modification or custom ROM. We are not responsible for any unwanted effects caused by this procedure - use at your own risk!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->fixNow(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->later(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-static {p0}, Lcom/killermobile/S3JBFix;->never(Landroid/content/Context;)V

    return-void
.end method

.method public static cleanPrefs(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.killermobile.S3JbCallRec_fixed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    const-string v1, "com.killermobile.S3JbCallRec_dont_show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    return-void
.end method

.method private static fixNow(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, model:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static later(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "Нет изменений, внесенных в систему"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    return-void
.end method

.method private static never(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.killermobile.S3JbCallRec_dont_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Исправление записи вызовов"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    const-string v2, "Эта функция может быть доступна снова через клавишу меню"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    const-string v2, "Закрыть"

    new-instance v3, Lcom/killermobile/S3JBFix$4;

    invoke-direct {v3}, Lcom/killermobile/S3JBFix$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 95
    return-void
.end method

.method public static showUI(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "com.killermobile.S3JbCallRec_fixed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const-string v2, "com.killermobile.S3JbCallRec_dont_show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Исправление записи вызовов"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 44
    const-string v2, "Нужны ROOT права для изменения системы.\n\nВнимание: нет никакой гарантии, что процедура будет работать на каждом модифицированном или с кастомным ROMом Samsung Galaxy S3. Мы не несем ответственность за любые нежелательные дейсвия, связанные с этой процедурой - используйте на свой страх и риск!"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 45
    const-string v2, "Исправить"

    new-instance v3, Lcom/killermobile/S3JBFix$1;

    invoke-direct {v3, p0}, Lcom/killermobile/S3JBFix$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    const-string v2, "Позже"

    new-instance v3, Lcom/killermobile/S3JBFix$2;

    invoke-direct {v3, p0}, Lcom/killermobile/S3JBFix$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    const-string v2, "Никогда"

    new-instance v3, Lcom/killermobile/S3JBFix$3;

    invoke-direct {v3, p0}, Lcom/killermobile/S3JBFix$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method
