.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

.field private final synthetic val$autoUploadMailPassword:Landroid/widget/EditText;

.field private final synthetic val$autoUploadMailRecipient:Landroid/widget/EditText;

.field private final synthetic val$autoUploadMailUsername:Landroid/widget/EditText;

.field private final synthetic val$currentPassword:Ljava/lang/String;

.field private final synthetic val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic val$saveBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailRecipient:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailUsername:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailPassword:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$currentPassword:Ljava/lang/String;

    iput-object p7, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$saveBtn:Landroid/widget/Button;

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailRecipient:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoMailUploadRecipient(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoMailUploadUsername(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1068
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/Encryption;

    invoke-direct {v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;-><init>()V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$autoUploadMailPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoMailUploadPassword(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1073
    :goto_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dismissDialog(I)V

    .line 1093
    :goto_3
    return-void

    .line 1059
    :catch_0
    move-exception v6

    .line 1060
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1064
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 1065
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1069
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 1070
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1076
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1077
    .local v2, currPass:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    const-string v1, "Enter current password"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1079
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1080
    const v8, 0x7f060022

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$currentPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;->val$saveBtn:Landroid/widget/Button;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$28;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/Button;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3
.end method
