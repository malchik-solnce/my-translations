.class Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;
.super Ljava/lang/Object;
.source "SizePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 34
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->value:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 36
    .local v1, val:D
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->units:Landroid/widget/RadioGroup;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 46
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.killermobile.totalrecall.SIZE"

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->access$2(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->getSize()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->setResult(ILandroid/content/Intent;)V

    .line 50
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->finish()V

    goto :goto_0

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #val:D
    :catch_0
    move-exception v3

    goto :goto_0

    .line 38
    .restart local v1       #val:D
    :pswitch_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->access$2(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->setK(D)V

    goto :goto_1

    .line 42
    :pswitch_2
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->access$2(Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->setM(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    .end local v1           #val:D
    :pswitch_3
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->setResult(I)V

    .line 60
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;->finish()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0119
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 36
    :pswitch_data_1
    .packed-switch 0x7f0a0117
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
