.class public Lcom/killermobile/regchecks/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/regchecks/CheckResult$Result;
    }
.end annotation


# instance fields
.field private final expirationTime:J

.field private final result:Lcom/killermobile/regchecks/CheckResult$Result;


# direct methods
.method public constructor <init>(Lcom/killermobile/regchecks/CheckResult$Result;J)V
    .locals 2
    .parameter "result"
    .parameter "expirationTime"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "creating a check result with values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/killermobile/regchecks/CheckResult$Result;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expiration time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/killermobile/regchecks/CheckResult;->result:Lcom/killermobile/regchecks/CheckResult$Result;

    .line 21
    iput-wide p2, p0, Lcom/killermobile/regchecks/CheckResult;->expirationTime:J

    .line 22
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/killermobile/regchecks/CheckResult;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckResult: fromJSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, obj:Lorg/json/JSONObject;
    new-instance v1, Lcom/killermobile/regchecks/CheckResult;

    const-string v2, "Result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobile/regchecks/CheckResult$Result;->valueOf(Ljava/lang/String;)Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v2

    const-string v3, "expirationTime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/killermobile/regchecks/CheckResult;-><init>(Lcom/killermobile/regchecks/CheckResult$Result;J)V

    return-object v1
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/killermobile/regchecks/CheckResult;->expirationTime:J

    return-wide v0
.end method

.method public getResult()Lcom/killermobile/regchecks/CheckResult$Result;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/killermobile/regchecks/CheckResult$Result;->LIFETIME:Lcom/killermobile/regchecks/CheckResult$Result;

    return-object v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "expirationTime"

    iget-wide v3, p0, Lcom/killermobile/regchecks/CheckResult;->expirationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    const-string v2, "Result"

    iget-object v3, p0, Lcom/killermobile/regchecks/CheckResult;->result:Lcom/killermobile/regchecks/CheckResult$Result;

    invoke-virtual {v3}, Lcom/killermobile/regchecks/CheckResult$Result;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckResult: toJSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
