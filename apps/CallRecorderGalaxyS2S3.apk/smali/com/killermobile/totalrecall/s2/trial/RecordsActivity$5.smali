.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;
.super Landroid/os/Handler;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 331
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 335
    .local v0, record:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getBroken()Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    move-result-object v1

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/Record$Broken;->WORKING:Lcom/killermobile/totalrecall/s2/trial/Record$Broken;

    if-ne v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v2, "Record reported OK"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$5;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v2, "The record can\'t be reported OK"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
