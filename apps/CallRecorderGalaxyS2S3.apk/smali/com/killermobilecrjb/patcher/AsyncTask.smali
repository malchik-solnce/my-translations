.class public abstract Lcom/killermobilecrjb/patcher/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;,
        Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;,
        Lcom/killermobilecrjb/patcher/AsyncTask$Status;,
        Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$AsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$AsyncTask$Status()[I
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->$SWITCH_TABLE$com$killermobilecrjb$patcher$AsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->values()[Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->FINISHED:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->PENDING:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->RUNNING:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->$SWITCH_TABLE$com$killermobilecrjb$patcher$AsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 48
    new-instance v0, Lcom/killermobilecrjb/patcher/AsyncTask$1;

    invoke-direct {v0}, Lcom/killermobilecrjb/patcher/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 56
    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    .line 64
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/killermobilecrjb/patcher/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/killermobilecrjb/patcher/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 63
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 62
    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;)V

    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sHandler:Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

    .line 78
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->PENDING:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance v0, Lcom/killermobilecrjb/patcher/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/killermobilecrjb/patcher/AsyncTask$2;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mWorker:Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;

    .line 154
    new-instance v0, Lcom/killermobilecrjb/patcher/AsyncTask$3;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mWorker:Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/killermobilecrjb/patcher/AsyncTask$3;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 174
    return-void
.end method

.method static synthetic access$0(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/killermobilecrjb/patcher/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 460
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 490
    :goto_0
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->FINISHED:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    .line 491
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sHandler:Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 134
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 184
    sget-object v1, Lcom/killermobilecrjb/patcher/AsyncTask;->sHandler:Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

    .line 185
    new-instance v2, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v1, v5, v2}, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 178
    .local v0, wasTaskInvoked:Z
    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 138
    sput-object p0, Lcom/killermobilecrjb/patcher/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 139
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 333
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/killermobilecrjb/patcher/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/killermobilecrjb/patcher/AsyncTask;
    .locals 2
    .parameter "exec"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/killermobilecrjb/patcher/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    sget-object v1, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->PENDING:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 434
    invoke-static {}, Lcom/killermobilecrjb/patcher/AsyncTask;->$SWITCH_TABLE$com$killermobilecrjb$patcher$AsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 445
    :cond_0
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask$Status;->RUNNING:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    .line 447
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;->onPreExecute()V

    .line 449
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mWorker:Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 452
    return-object p0

    .line 436
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 348
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 368
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/killermobilecrjb/patcher/AsyncTask$Status;
    .locals 1

    .prologue
    .line 196
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mStatus:Lcom/killermobilecrjb/patcher/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 300
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 287
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;->onCancelled()V

    .line 272
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 224
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    sget-object v0, Lcom/killermobilecrjb/patcher/AsyncTask;->sHandler:Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 480
    new-instance v2, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;-><init>(Lcom/killermobilecrjb/patcher/AsyncTask;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v0, v1, v2}, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    :cond_0
    return-void
.end method
