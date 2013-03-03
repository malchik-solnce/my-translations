.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;
.super Ljava/lang/Object;
.source "TotalRecallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->startNewRecord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

.field private final synthetic val$phone:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    iput p2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->val$type:I

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->val$phone:Ljava/lang/String;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 783
    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 784
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v0

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->m_startRecordingHandler:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$83(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

    move-result-object v0

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->val$type:I

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;->val$phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 785
    return-void
.end method
