.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;
.super Ljava/lang/Thread;
.source "ServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRecoveryMail"
.end annotation


# instance fields
.field private final fail:Landroid/os/Message;

.field private final newPass:Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final success:Landroid/os/Message;

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

.field private final user:Ljava/lang/String;

.field private final userPass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "user"
    .parameter "userPass"
    .parameter "newPass"
    .parameter "success"
    .parameter "fail"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    const v0, 0x7f060058

    invoke-virtual {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->subject:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->user:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->userPass:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->newPass:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->success:Landroid/os/Message;

    .line 77
    iput-object p6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->fail:Landroid/os/Message;

    .line 78
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lorg/apache/android/mail/GMailSender;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->userPass:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/android/mail/GMailSender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v1, sender:Lorg/apache/android/mail/GMailSender;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->subject:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->newPass:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->user:Ljava/lang/String;

    .line 86
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v5, v5, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v5}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecoveryMail()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/android/mail/GMailSender;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->newPass:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSmsPassword(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->success:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #sender:Lorg/apache/android/mail/GMailSender;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->fail:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
