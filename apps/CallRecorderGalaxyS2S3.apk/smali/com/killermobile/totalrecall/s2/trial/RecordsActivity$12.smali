.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 515
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$10(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v2, "Record deleted"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->dismissDialog(I)V

    .line 522
    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v2, "Delete failed"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
