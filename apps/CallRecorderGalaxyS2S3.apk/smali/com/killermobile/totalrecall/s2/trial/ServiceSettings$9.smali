.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;
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

.field private final synthetic val$smsSettingsChangePassBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->val$smsSettingsChangePassBtn:Landroid/widget/Button;

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 470
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 473
    :cond_0
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 474
    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    const v2, 0x7f060022

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$1;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x2

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->lastDialog:I
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$4(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;I)V

    .line 482
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 489
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 490
    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 491
    const v2, 0x7f060046

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$2;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->val$smsSettingsChangePassBtn:Landroid/widget/Button;

    invoke-direct {v3, p0, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;Landroid/widget/Button;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 495
    const v2, 0x7f060047

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$3;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 500
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060043

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 501
    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 502
    const v2, 0x7f060046

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->val$smsSettingsChangePassBtn:Landroid/widget/Button;

    invoke-direct {v3, p0, v4}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;Landroid/widget/Button;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 506
    const v2, 0x7f060047

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$5;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto/16 :goto_0

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x3

    #setter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->lastDialog:I
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$4(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;I)V

    .line 514
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 519
    :pswitch_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$9;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->dismissDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x7f0a00c3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
