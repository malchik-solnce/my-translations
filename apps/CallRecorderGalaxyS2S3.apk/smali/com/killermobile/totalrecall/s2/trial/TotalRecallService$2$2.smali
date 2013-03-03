.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;
.super Ljava/lang/Object;
.source "TotalRecallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->saveFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->val$fileName:Ljava/lang/String;

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 860
    new-instance v1, Lorg/apache/android/mail/GMailSender;

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v2}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v3

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$19(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 861
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v4

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$20(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-direct {v1, v2, v3}, Lorg/apache/android/mail/GMailSender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .local v1, sender:Lorg/apache/android/mail/GMailSender;
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v3

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$23(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/android/mail/GMailSender;->addAttachment(Ljava/lang/String;Z)V

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TR auto upload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Auto uploaded email from Total Recall. The attachement contains the record "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 867
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v4}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v5

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$19(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 868
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v5}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;->this$1:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-result-object v6

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$18(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 865
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/android/mail/GMailSender;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
