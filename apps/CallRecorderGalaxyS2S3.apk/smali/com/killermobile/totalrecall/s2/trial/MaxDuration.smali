.class public Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
.super Ljava/lang/Object;
.source "MaxDuration.java"


# static fields
.field private static final HOUR:J = 0xe10L

.field private static final MINUTE:J = 0x3cL

.field private static final SECOND:J = 0x1L


# instance fields
.field private duration:J

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "h"
    .parameter "m"
    .parameter "s"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(III)V

    .line 18
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    .line 14
    return-void
.end method

.method private updateString()V
    .locals 10

    .prologue
    .line 96
    iget-wide v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 97
    .local v0, hrs:J
    iget-wide v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 98
    .local v2, min:J
    iget-wide v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v0

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long v4, v6, v8

    .line 100
    .local v4, sec:J
    const-string v6, ""

    iput-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    .line 101
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ч "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    .line 102
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "м "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    .line 103
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "с "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    .line 104
    :cond_2
    return-void
.end method


# virtual methods
.method public decHour()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setHours(I)V

    .line 77
    return-void
.end method

.method public decMin()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setMinutes(I)V

    .line 85
    return-void
.end method

.method public decSec()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getSeconds()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setSeconds(I)V

    .line 93
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    return-wide v0
.end method

.method public getHours()I
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMinutes()I
    .locals 7

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    .line 44
    .local v0, hrs:I
    iget-wide v1, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    int-to-long v3, v0

    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method public getSeconds()I
    .locals 8

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    .line 56
    .local v0, hrs:I
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v1

    .line 57
    .local v1, min:I
    iget-wide v2, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    int-to-long v4, v0

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    int-to-long v4, v1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public incHour()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setHours(I)V

    .line 73
    return-void
.end method

.method public incMin()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setMinutes(I)V

    .line 81
    return-void
.end method

.method public incSec()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getSeconds()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setSeconds(I)V

    .line 89
    return-void
.end method

.method public setDuration(III)V
    .locals 6
    .parameter "h"
    .parameter "m"
    .parameter "s"

    .prologue
    .line 68
    int-to-long v0, p1

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    .line 69
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->duration:J

    .line 27
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->updateString()V

    .line 29
    return-void
.end method

.method public setHours(I)V
    .locals 8
    .parameter "hours"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    const/16 v2, 0x63

    if-le p1, v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v0

    .line 38
    .local v0, min:I
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getSeconds()I

    move-result v1

    .line 39
    .local v1, sec:I
    int-to-long v2, p1

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    int-to-long v4, v0

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    goto :goto_0
.end method

.method public setMinutes(I)V
    .locals 8
    .parameter "minutes"

    .prologue
    .line 48
    if-ltz p1, :cond_0

    const/16 v2, 0x3c

    if-le p1, v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    .line 50
    .local v0, hrs:I
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getSeconds()I

    move-result v1

    .line 51
    .local v1, sec:I
    int-to-long v2, v0

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    goto :goto_0
.end method

.method public setSeconds(I)V
    .locals 8
    .parameter "seconds"

    .prologue
    .line 61
    if-ltz p1, :cond_0

    const/16 v2, 0x3c

    if-le p1, v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getHours()I

    move-result v0

    .line 63
    .local v0, hrs:I
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getMinutes()I

    move-result v1

    .line 64
    .local v1, min:I
    int-to-long v2, v0

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    int-to-long v4, v1

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->setDuration(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->string:Ljava/lang/String;

    return-object v0
.end method
