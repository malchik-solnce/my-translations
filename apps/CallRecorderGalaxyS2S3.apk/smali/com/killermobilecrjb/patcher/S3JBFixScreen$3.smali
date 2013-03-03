.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;
.super Ljava/lang/Object;
.source "S3JBFixScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;->doPatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 163
    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ODEX:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->verifyInstall(Lcom/killermobilecrjb/patcher/Patcher$Verification;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher$Verification;->CHECK_ROOT:Lcom/killermobilecrjb/patcher/Patcher$Verification;

    invoke-virtual {v2, v3}, Lcom/killermobilecrjb/patcher/Patcher;->verifyInstall(Lcom/killermobilecrjb/patcher/Patcher$Verification;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v2}, Lcom/killermobilecrjb/patcher/Patcher;->progressListener()V

    .line 165
    new-instance v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {v0, v2, v5}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;)V

    .line 166
    .local v0, pm:Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;
    sget-object v2, Lcom/killermobilecrjb/patcher/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 168
    new-instance v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$3;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {v1, v2, v5}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)V

    .line 170
    .local v1, task:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;
    sget-object v2, Lcom/killermobilecrjb/patcher/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 172
    .end local v0           #pm:Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;
    .end local v1           #task:Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;
    :cond_0
    return-void
.end method
