.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

.field private final synthetic val$enterMailSettPass:Landroid/widget/EditText;

.field private final synthetic val$enterMailSettUsername:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->val$enterMailSettUsername:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->val$enterMailSettPass:Landroid/widget/EditText;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 647
    new-instance v9, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 648
    .local v9, rnd:Ljava/util/Random;
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x6

    if-lt v8, v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$6(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/app/ProgressDialog;)V

    .line 653
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 654
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Sending..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 657
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->sendRecoveryMailHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$7(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 658
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->val$enterMailSettUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->val$enterMailSettPass:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 659
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->sendRecoveryMailHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$7(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$17;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->sendRecoveryMailHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$7(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/os/Handler;

    move-result-object v6

    const/4 v10, 0x4

    invoke-static {v6, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 658
    invoke-direct/range {v0 .. v6}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;)V

    .line 660
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$SendRecoveryMail;->start()V

    .line 662
    return-void

    .line 650
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {v9, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
