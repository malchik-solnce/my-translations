.class Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;
.super Ljava/lang/Object;
.source "WAVRecorder.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0
    .parameter "recorder"

    .prologue
    .line 98
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 6
    .parameter "recorder"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->state:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$0(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    move-result-object v1

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->RECORDING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-eq v1, v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->aRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$1(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->fWriter:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$3(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 63
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$4(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I

    move-result v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    #setter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$5(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;I)V

    .line 65
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$4(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I

    move-result v1

    const v2, 0x7fffffff

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->buffer:[B
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$2(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 66
    const-string v1, "Max wav file size reached."

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    .line 68
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$6(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSizeEnabled:Z
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$7(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->payloadSize:I
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$4(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I

    move-result v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxSize:I
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$8(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 72
    const-string v1, "Max user defined file size reached."

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    .line 74
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$6(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDurationEnabled:Z
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$9(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$10(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->framePeriod:I
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$11(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    #setter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J
    invoke-static {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$12(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;J)V

    .line 79
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->duration:J
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$10(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mMaxDuration:J
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$13(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 80
    const-string v1, "Max duration reached."

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    .line 82
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->access$6(Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Error occured in updateListener, recording is aborted"

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    goto/16 :goto_0
.end method
