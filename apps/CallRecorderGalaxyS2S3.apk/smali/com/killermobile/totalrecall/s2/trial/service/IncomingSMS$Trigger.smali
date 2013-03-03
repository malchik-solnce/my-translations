.class Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;
.super Ljava/lang/Object;
.source "IncomingSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Trigger"
.end annotation


# instance fields
.field private final durationInSec:I

.field private final hasPass:Z

.field private final isTrigger:Z

.field private final pass:Ljava/lang/String;

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "smsBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->this$0:Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "TRK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->isTrigger:Z

    .line 37
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->isTrigger:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->hasPass:Z

    iput-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->pass:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->durationInSec:I

    .line 43
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "--"

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->access$0()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->hasPass:Z

    .line 40
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->hasPass:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->access$0()I

    move-result v0

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->access$1()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "-"

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->access$0()I

    move-result v2

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS;->access$1()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->pass:Ljava/lang/String;

    .line 41
    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->durationInSec:I

    goto :goto_1

    :cond_2
    move v2, v1

    .line 39
    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 40
    goto :goto_3
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->durationInSec:I

    return v0
.end method

.method private checkExpired(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z
    .locals 6
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getExpiration()Lcom/killermobile/regchecks/CheckResult;

    move-result-object v0

    .line 61
    .local v0, expiration:Lcom/killermobile/regchecks/CheckResult;
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/killermobile/regchecks/CheckResult;->getResult()Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v2

    sget-object v3, Lcom/killermobile/regchecks/CheckResult$Result;->LIFETIME:Lcom/killermobile/regchecks/CheckResult$Result;

    if-eq v2, v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/killermobile/regchecks/CheckResult;->getExpirationTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method allowToProceed(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z
    .locals 3
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, allow:Z
    iget-boolean v2, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->isTrigger:Z

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->checkExpired(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-boolean v1, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->hasPass:Z

    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 54
    :cond_2
    :goto_1
    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->durationInSec:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    move v1, v0

    .line 55
    goto :goto_0

    .line 51
    :cond_4
    invoke-interface {p1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Пароль не установлен, а должен быть!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_5
    invoke-interface {p1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/service/IncomingSMS$Trigger;->pass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method
