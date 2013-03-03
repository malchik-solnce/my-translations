.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-virtual {v2, v5}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->showDialog(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, contactsIntent:Landroid/content/Intent;
    const-string v2, "EXTRA_REQUEST_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v2, "EXTRA_TITLE_TXT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const v4, 0x7f06009c

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "EXTRA_DESCRIPTION_TXT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const v4, 0x7f06009d

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-virtual {v2, v0, v5}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 246
    .end local v0           #contactsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, logsIntent:Landroid/content/Intent;
    const-string v2, "EXTRA_REQUEST_TYPE"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v2, "EXTRA_TITLE_TXT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const v4, 0x7f06009e

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "EXTRA_DESCRIPTION_TXT"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const v4, 0x7f06009f

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    invoke-virtual {v2, v1, v6}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f0a0016
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
