.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;
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

.field private final synthetic val$newName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->val$newName:Landroid/widget/EditText;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 485
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->dismissDialog(I)V

    .line 486
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$10(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, file:Ljava/io/File;
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->selectedEntry:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$10(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getRecordName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->val$newName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 491
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v4, "Record renamed"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$10;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v4, "Rename failed"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
