.class public final enum Lcom/killermobilecrjb/patcher/Shell$OUTPUT;
.super Ljava/lang/Enum;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OUTPUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobilecrjb/patcher/Shell$OUTPUT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

.field public static final enum NONE:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

.field public static final enum STDERR:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

.field public static final enum STDOUT:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->NONE:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    const-string v1, "STDOUT"

    invoke-direct {v0, v1, v3}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDOUT:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    const-string v1, "STDERR"

    invoke-direct {v0, v1, v4}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDERR:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->NONE:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDOUT:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDERR:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobilecrjb/patcher/Shell$OUTPUT;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    return-object v0
.end method

.method public static values()[Lcom/killermobilecrjb/patcher/Shell$OUTPUT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
