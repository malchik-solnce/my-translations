.class Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/AsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 497
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;

    .line 498
    .local v0, result:Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v1, v0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mTask:Lcom/killermobilecrjb/patcher/AsyncTask;

    iget-object v2, v0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lcom/killermobilecrjb/patcher/AsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/killermobilecrjb/patcher/AsyncTask;->access$0(Lcom/killermobilecrjb/patcher/AsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v1, v0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mTask:Lcom/killermobilecrjb/patcher/AsyncTask;

    iget-object v2, v0, Lcom/killermobilecrjb/patcher/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
