.class Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;
.super Landroid/os/Handler;
.source "ServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;)Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const v2, 0x7f060057

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 112
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1$1;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;)V

    invoke-virtual {v0, v2, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 121
    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->busySending:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;->access$0(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 126
    new-instance v0, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/ServiceSettings;

    invoke-direct {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1$2;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/ServiceSettings$1;)V

    invoke-virtual {v0, v2, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    .line 135
    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
