.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f060023

    const v6, 0x7f060022

    const/4 v5, 0x1

    .line 914
    if-eqz p2, :cond_2

    .line 915
    const/4 v2, 0x0

    .local v2, mailRecipient:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, mailUsername:Ljava/lang/String;
    const/4 v1, 0x0

    .line 918
    .local v1, mailPassword:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadRecipient()Ljava/lang/String;

    move-result-object v2

    .line 919
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadUsername()Ljava/lang/String;

    move-result-object v3

    .line 920
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getAutoMailUploadPassword()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 925
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 927
    :cond_0
    new-instance v4, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 928
    const-string v5, "Settings incomplete"

    invoke-virtual {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 929
    const-string v5, "You will have to enter the settings for the auto upload. Proceed?"

    invoke-virtual {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 930
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$1;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;)V

    invoke-virtual {v4, v6, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 937
    invoke-virtual {v4, v7, v8}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 939
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 963
    .end local v1           #mailPassword:Ljava/lang/String;
    .end local v2           #mailRecipient:Ljava/lang/String;
    .end local v3           #mailUsername:Ljava/lang/String;
    :goto_1
    return-void

    .line 921
    .restart local v1       #mailPassword:Ljava/lang/String;
    .restart local v2       #mailRecipient:Ljava/lang/String;
    .restart local v3       #mailUsername:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 943
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v4, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 944
    const-string v5, "Change the settings"

    invoke-virtual {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 945
    const-string v5, "Do you want to change your current settings?"

    invoke-virtual {v4, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 946
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$2;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;)V

    invoke-virtual {v4, v6, v5}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    .line 953
    invoke-virtual {v4, v7, v8}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 958
    .end local v1           #mailPassword:Ljava/lang/String;
    .end local v2           #mailRecipient:Ljava/lang/String;
    .end local v3           #mailUsername:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$26;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v4, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setAutoMailUploadEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 959
    :catch_1
    move-exception v0

    .line 961
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
