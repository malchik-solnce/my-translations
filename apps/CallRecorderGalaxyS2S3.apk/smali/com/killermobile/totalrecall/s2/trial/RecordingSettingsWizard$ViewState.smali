.class final enum Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;
.super Ljava/lang/Enum;
.source "RecordingSettingsWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

.field public static final enum info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

.field public static final enum poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

.field public static final enum results:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    const-string v1, "info"

    invoke-direct {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    const-string v1, "poll"

    invoke-direct {v0, v1, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    const-string v1, "results"

    invoke-direct {v0, v1, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->results:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->results:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ENUM$VALUES:[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
