.class public final enum Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
.super Ljava/lang/Enum;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Broken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/Record$Broken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

.field public static final enum EXTENSION:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

.field public static final enum MODIFIED:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

.field public static final enum NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

.field public static final enum WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    const-string v1, "EXTENSION"

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->EXTENSION:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    const-string v1, "MODIFIED"

    invoke-direct {v0, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->MODIFIED:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->NOT_FOUND:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->EXTENSION:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->MODIFIED:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    aput-object v1, v0, v5

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    .locals 2
    .parameter "broken"

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->values()[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
