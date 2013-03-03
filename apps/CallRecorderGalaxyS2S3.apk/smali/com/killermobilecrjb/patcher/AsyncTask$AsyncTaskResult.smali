.class Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/killermobilecrjb/patcher/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/killermobilecrjb/patcher/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/killermobilecrjb/patcher/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>.AsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mTask:Lcom/killermobilecrjb/patcher/AsyncTask;

    .line 521
    iput-object p2, p0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 522
    return-void
.end method
