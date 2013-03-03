.class public final enum Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
.super Ljava/lang/Enum;
.source "WAVRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field public static final enum ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field public static final enum INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field public static final enum READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field public static final enum RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

.field public static final enum STOPPED:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const-string v1, "ИНИЦИАЛИЗАЦИЯ"

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const-string v1, "ОЖИДАНИЕ"

    invoke-direct {v0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const-string v1, "ЗАПИСЬ"

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const-string v1, "ОШИБКА"

    invoke-direct {v0, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const-string v1, "ОСТАНОВЛЕНО"

    invoke-direct {v0, v1, v6}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->STOPPED:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->READY:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ERROR:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->STOPPED:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
