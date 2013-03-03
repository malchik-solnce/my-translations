.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;)Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;

    iget v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->successes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;

    iget v2, v2, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$9;->fails:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    return-void
.end method
