.class abstract Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 510
    .local p0, this:Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;,"Lcom/killermobilecrjb/patcher/AsyncTask<TParams;TProgress;TResult;>.WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/AsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
