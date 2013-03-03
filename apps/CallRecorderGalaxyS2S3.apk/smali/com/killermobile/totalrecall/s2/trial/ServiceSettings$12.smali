.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;
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

.field private final synthetic val$newRecMailEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;->val$newRecMailEdit:Landroid/widget/EditText;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;->val$newRecMailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecoveryMail(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$12;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dismissDialog(I)V

    .line 579
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
