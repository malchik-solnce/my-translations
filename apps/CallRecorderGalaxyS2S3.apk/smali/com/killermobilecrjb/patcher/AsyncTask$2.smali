.class Lcom/killermobilecrjb/patcher/AsyncTask$2;
.super Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/AsyncTask;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/AsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/AsyncTask$2;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask$2;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    #getter for: Lcom/killermobilecrjb/patcher/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/killermobilecrjb/patcher/AsyncTask;->access$1(Lcom/killermobilecrjb/patcher/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 150
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask$2;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/AsyncTask$2;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/killermobilecrjb/patcher/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/killermobilecrjb/patcher/AsyncTask;->access$2(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
