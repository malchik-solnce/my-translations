.class Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;
.super Landroid/os/Handler;
.source "PromptForSaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->displayProgress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$newFileName:Ljava/lang/String;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$pd:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$newFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$context:Landroid/app/Activity;

    .line 101
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Запись сохранена в "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$newFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$1;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method
