.class public final enum Lcom/killermobile/totalrecall/s2/trial/WizardSettings;
.super Ljava/lang/Enum;
.source "WizardSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/WizardSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

.field public static final enum record_after_start_of_call:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

.field public static final enum recording_strategy:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

.field public static final enum speaker_phone:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

.field public static final enum stream_solo:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

.field public static final enum wake_lock:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    const-string v1, "recording_strategy"

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->recording_strategy:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    .line 5
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    const-string v1, "wake_lock"

    invoke-direct {v0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->wake_lock:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    .line 6
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    const-string v1, "record_after_start_of_call"

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->record_after_start_of_call:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    .line 7
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    const-string v1, "speaker_phone"

    invoke-direct {v0, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->speaker_phone:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    .line 8
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    const-string v1, "stream_solo"

    invoke-direct {v0, v1, v6}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->stream_solo:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->recording_strategy:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->wake_lock:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->record_after_start_of_call:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->speaker_phone:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->stream_solo:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    aput-object v1, v0, v6

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

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

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/WizardSettings;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/totalrecall/s2/trial/WizardSettings;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
