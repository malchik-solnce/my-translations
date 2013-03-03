.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f060023

    const v3, 0x7f060022

    .line 865
    if-eqz p2, :cond_1

    .line 867
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 869
    const-string v2, "Settings incomplete"

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 870
    const-string v2, "You will have to enter the settings for the auto upload. Proceed?"

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 871
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25$1;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;)V

    invoke-virtual {v1, v3, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 878
    invoke-virtual {v1, v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 880
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 906
    :goto_0
    return-void

    .line 884
    :cond_0
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 885
    const-string v2, "Login with a different account"

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 886
    const-string v2, "Do you want to login with a different account ?"

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 887
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25$2;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;)V

    invoke-virtual {v1, v3, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 895
    invoke-virtual {v1, v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 900
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$25;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoEvernoteUploadEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 903
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
