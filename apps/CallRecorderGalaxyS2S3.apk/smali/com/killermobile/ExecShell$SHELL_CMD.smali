.class public final enum Lcom/killermobile/ExecShell$SHELL_CMD;
.super Ljava/lang/Enum;
.source "Root.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/ExecShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SHELL_CMD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/ExecShell$SHELL_CMD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/ExecShell$SHELL_CMD;

.field public static final enum check_su_binary:Lcom/killermobile/ExecShell$SHELL_CMD;


# instance fields
.field command:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/killermobile/ExecShell$SHELL_CMD;

    const-string v1, "check_su_binary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/killermobile/ExecShell$SHELL_CMD;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/killermobile/ExecShell$SHELL_CMD;->check_su_binary:Lcom/killermobile/ExecShell$SHELL_CMD;

    .line 63
    new-array v0, v5, [Lcom/killermobile/ExecShell$SHELL_CMD;

    sget-object v1, Lcom/killermobile/ExecShell$SHELL_CMD;->check_su_binary:Lcom/killermobile/ExecShell$SHELL_CMD;

    aput-object v1, v0, v4

    sput-object v0, Lcom/killermobile/ExecShell$SHELL_CMD;->ENUM$VALUES:[Lcom/killermobile/ExecShell$SHELL_CMD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "command"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/killermobile/ExecShell$SHELL_CMD;->command:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/ExecShell$SHELL_CMD;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/ExecShell$SHELL_CMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/ExecShell$SHELL_CMD;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/ExecShell$SHELL_CMD;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/ExecShell$SHELL_CMD;->ENUM$VALUES:[Lcom/killermobile/ExecShell$SHELL_CMD;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/ExecShell$SHELL_CMD;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
