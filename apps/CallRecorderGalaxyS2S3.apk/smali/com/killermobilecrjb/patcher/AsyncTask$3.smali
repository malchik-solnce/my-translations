.class Lcom/killermobilecrjb/patcher/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/AsyncTask;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    .local p2, $anonymous0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/AsyncTask$3;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 154
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 6

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/AsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, result:Ljava/lang/Object;,"TResult;"
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/AsyncTask$3;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    #calls: Lcom/killermobilecrjb/patcher/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Lcom/killermobilecrjb/patcher/AsyncTask;->access$3(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 172
    .end local v1           #result:Ljava/lang/Object;,"TResult;"
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "AsyncTask"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 164
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 166
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 167
    .local v0, e:Ljava/util/concurrent/CancellationException;
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/AsyncTask$3;->this$0:Lcom/killermobilecrjb/patcher/AsyncTask;

    const/4 v4, 0x0

    #calls: Lcom/killermobilecrjb/patcher/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/killermobilecrjb/patcher/AsyncTask;->access$3(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v2

    .line 169
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
