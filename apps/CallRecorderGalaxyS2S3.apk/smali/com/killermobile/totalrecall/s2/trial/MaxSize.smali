.class public Lcom/killermobile/totalrecall/s2/trial/MaxSize;
.super Ljava/lang/Object;
.source "MaxSize.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    .line 9
    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    return-wide v0
.end method

.method public setK(D)V
    .locals 2
    .parameter "k"

    .prologue
    .line 12
    const-wide/high16 v0, 0x4090

    mul-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    .line 13
    return-void
.end method

.method public setM(D)V
    .locals 4
    .parameter "k"

    .prologue
    const-wide/high16 v2, 0x4090

    .line 16
    mul-double v0, p1, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    .line 17
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 28
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%.2f"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " МБ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%.2f"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " кБ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->size:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Б"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
