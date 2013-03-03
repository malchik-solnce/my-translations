.class Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$newFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->val$newFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->val$handler:Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->access$0(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->val$newFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->inCallType:I
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->saveFile(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PromptForSaveActivity$2;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
