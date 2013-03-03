.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field private final synthetic val$currentPassword:Ljava/lang/String;

.field private final synthetic val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->val$currentPassword:Ljava/lang/String;

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1021
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 1022
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v0, currPass:Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1024
    const-string v2, "Enter current password"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1025
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1026
    const v2, 0x7f060022

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27$1;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->val$currentPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;->val$passwordEntered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$27;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1034
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1037
    .end local v0           #currPass:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1016
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1009
    return-void
.end method
