.class final enum Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;
.super Ljava/lang/Enum;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UID_COMMAND"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

.field private static final synthetic ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

.field public static final enum ID:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

.field public static final enum XBIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;


# instance fields
.field private mCmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    const-string v1, "ID"

    const-string v2, "id"

    invoke-direct {v0, v1, v3, v2}, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->ID:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    const-string v1, "BIN"

    const-string v2, "/system/bin/id"

    invoke-direct {v0, v1, v4, v2}, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->BIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    const-string v1, "XBIN"

    const-string v2, "/system/xbin/id"

    invoke-direct {v0, v1, v5, v2}, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->XBIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->ID:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->BIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    aput-object v1, v0, v4

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->XBIN:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    aput-object v1, v0, v5

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "cmd"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->mCmd:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    return-object v0
.end method

.method public static values()[Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->mCmd:Ljava/lang/String;

    return-object v0
.end method
