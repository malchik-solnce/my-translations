.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;
.super Landroid/os/Handler;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

.field private final synthetic val$newFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->val$newFileName:Ljava/lang/String;

    .line 708
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 711
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v1, "Record recovered successfully"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$10(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->val$newFileName:Ljava/lang/String;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/Record;->setPath(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$16;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v1, "Can\'t recover record: file doesn\'t match"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
