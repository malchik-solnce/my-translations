.class public Lcom/killermobile/Root;
.super Ljava/lang/Object;
.source "Root.java"


# static fields
.field static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/killermobile/Root;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/Root;->LOG_TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkRootMethod1()Z
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 28
    .local v0, buildTags:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x1

    .line 31
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkRootMethod2()Z
    .locals 2

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 42
    :goto_0
    return v1

    .line 40
    :catch_0
    move-exception v1

    .line 42
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkRootMethod3()Z
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/killermobile/ExecShell;

    invoke-direct {v0}, Lcom/killermobile/ExecShell;-><init>()V

    sget-object v1, Lcom/killermobile/ExecShell$SHELL_CMD;->check_su_binary:Lcom/killermobile/ExecShell$SHELL_CMD;

    invoke-virtual {v0, v1}, Lcom/killermobile/ExecShell;->executeCommand(Lcom/killermobile/ExecShell$SHELL_CMD;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceRooted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-static {}, Lcom/killermobile/Root;->checkRootMethod1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 20
    :cond_1
    invoke-static {}, Lcom/killermobile/Root;->checkRootMethod2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-static {}, Lcom/killermobile/Root;->checkRootMethod3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method
