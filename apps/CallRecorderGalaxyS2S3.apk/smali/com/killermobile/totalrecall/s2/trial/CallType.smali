.class public final enum Lcom/killermobile/totalrecall/s2/trial/CallType;
.super Ljava/lang/Enum;
.source "CallType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/CallType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/CallType;

.field public static final enum IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field public static final enum NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field public static final enum OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field public static final enum USER:Lcom/killermobile/totalrecall/s2/trial/CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    const-string v1, "IN"

    invoke-direct {v0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v6}, Lcom/killermobile/totalrecall/s2/trial/CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 2
    .parameter "callType"

    .prologue
    .line 9
    :try_start_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/CallType;->values()[Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    return-object v1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/CallType;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/totalrecall/s2/trial/CallType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/CallType;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
