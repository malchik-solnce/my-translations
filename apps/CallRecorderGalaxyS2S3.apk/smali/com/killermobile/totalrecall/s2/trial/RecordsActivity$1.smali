.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$1;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->refreshHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_0
    return-void
.end method
