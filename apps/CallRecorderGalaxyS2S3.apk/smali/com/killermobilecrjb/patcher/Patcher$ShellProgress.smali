.class public Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;
.super Ljava/lang/Object;
.source "Patcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/Patcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShellProgress"
.end annotation


# instance fields
.field mAverages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAvgMs:F

.field private mProgressCurExcTime:I

.field public mProgressCurFile:Ljava/lang/String;

.field public mProgressCurIndex:I

.field private mProgressThread:Ljava/lang/Thread;

.field public mProgressTotalFiles:I

.field public mRemainingTime:F

.field private mRunning:Z

.field final synthetic this$0:Lcom/killermobilecrjb/patcher/Patcher;


# direct methods
.method public constructor <init>(Lcom/killermobilecrjb/patcher/Patcher;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "procedure"

    .prologue
    const/4 v3, 0x0

    .line 77
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->this$0:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressThread:Ljava/lang/Thread;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    .line 82
    const-string v0, "777"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/killermobilecrjb/patcher/Patcher;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    iput-object v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    .line 85
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z

    return v0
.end method

.method static synthetic access$1(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I

    return-void
.end method

.method static synthetic access$2(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I

    return v0
.end method

.method static synthetic access$3(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)F
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->secondsRemaining()F

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z

    return-void
.end method

.method private secondsRemaining()F
    .locals 5

    .prologue
    .line 231
    iget v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    int-to-float v3, v3

    iget v4, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 232
    .local v2, filesLeft:F
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->getMean(Ljava/util/List;)D

    move-result-wide v3

    double-to-float v0, v3

    .line 233
    .local v0, avgMsPerFile:F
    iput v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    .line 235
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->getStdDev(Ljava/util/List;)D

    move-result-wide v3

    double-to-float v1, v3

    .line 237
    .local v1, deviance:F
    iget v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    .line 239
    iget v3, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    mul-float/2addr v3, v2

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    return v3
.end method


# virtual methods
.method getMean(Ljava/util/List;)D
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v3, 0x0

    .line 244
    .local v3, sum:D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v1, v5

    .line 246
    .local v1, size:D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 248
    div-double v5, v3, v1

    return-wide v5

    .line 246
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 247
    .local v0, a:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v3, v6

    goto :goto_0
.end method

.method getStdDev(Ljava/util/List;)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->getVariance(Ljava/util/List;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method getVariance(Ljava/util/List;)D
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->getMean(Ljava/util/List;)D

    move-result-wide v1

    .line 252
    .local v1, mean:D
    const-wide/16 v5, 0x0

    .line 253
    .local v5, temp:D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    int-to-double v3, v7

    .line 254
    .local v3, size:D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 256
    div-double v7, v5, v3

    return-wide v7

    .line 254
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 255
    .local v0, a:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    sub-double v8, v1, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    sub-double v10, v1, v10

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z

    return v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z

    .line 219
    return-void
.end method

.method public setupProgressThread()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;

    invoke-direct {v1, p0}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;-><init>(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressThread:Ljava/lang/Thread;

    .line 208
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z

    .line 227
    :cond_0
    return-void
.end method
