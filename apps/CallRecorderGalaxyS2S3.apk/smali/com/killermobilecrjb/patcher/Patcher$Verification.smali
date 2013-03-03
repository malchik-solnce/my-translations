.class public final enum Lcom/killermobilecrjb/patcher/Patcher$Verification;
.super Ljava/lang/Enum;
.source "Patcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/Patcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Verification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobilecrjb/patcher/Patcher$Verification;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

.field public static final enum CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

.field private static final synthetic ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Patcher$Verification;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;

    const-string v1, "CHECK_ODEX"

    invoke-direct {v0, v1, v2}, Lcom/killermobilecrjb/patcher/Patcher$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    new-instance v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;

    const-string v1, "CHECK_ROOT"

    invoke-direct {v0, v1, v3}, Lcom/killermobilecrjb/patcher/Patcher$Verification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/killermobilecrjb/patcher/Patcher$Verification;

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Patcher$Verification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobilecrjb/patcher/Patcher$Verification;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;

    return-object v0
.end method

.method public static values()[Lcom/killermobilecrjb/patcher/Patcher$Verification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobilecrjb/patcher/Patcher$Verification;->ENUM$VALUES:[Lcom/killermobilecrjb/patcher/Patcher$Verification;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
