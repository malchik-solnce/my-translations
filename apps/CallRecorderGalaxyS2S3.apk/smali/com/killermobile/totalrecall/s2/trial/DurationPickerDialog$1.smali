.class Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;
.super Ljava/lang/Object;
.source "DurationPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #calls: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->updateUI()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)V

    .line 73
    return-void

    .line 32
    :pswitch_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->incHour()V

    goto :goto_0

    .line 36
    :pswitch_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->decHour()V

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->incMin()V

    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->decMin()V

    goto :goto_0

    .line 48
    :pswitch_5
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->incSec()V

    goto :goto_0

    .line 52
    :pswitch_6
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->decSec()V

    goto :goto_0

    .line 57
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.killermobile.totalrecall.DURATION"

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->setResult(ILandroid/content/Intent;)V

    .line 61
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->finish()V

    goto :goto_0

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_8
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->setResult(I)V

    .line 68
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;->finish()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00d9
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
