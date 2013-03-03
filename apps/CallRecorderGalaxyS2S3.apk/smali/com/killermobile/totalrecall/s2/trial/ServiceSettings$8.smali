.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;
.super Ljava/lang/Object;
.source "ServiceSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->val$dialog:Landroid/app/Dialog;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isSmsPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getSmsPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 448
    :cond_0
    new-instance v1, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 449
    const v2, 0x7f060041

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 450
    const v2, 0x7f060042

    invoke-virtual {v1, v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 451
    const v2, 0x7f060022

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8$1;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;)V

    invoke-virtual {v1, v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 456
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSmsPasswordEnabled(Z)V

    .line 457
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 464
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSmsPasswordEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
