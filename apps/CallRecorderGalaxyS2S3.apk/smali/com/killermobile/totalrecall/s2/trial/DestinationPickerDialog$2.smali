.class Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;
.super Ljava/lang/Object;
.source "DestinationPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 60
    .local v2, sel:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v0, data:Landroid/content/Intent;
    const-string v3, "com.killermobile.totalrecall.DestinationPickerDialog.SELECTION"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->setResult(ILandroid/content/Intent;)V

    .line 67
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->finish()V

    goto :goto_0

    .line 61
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/killermobile/totalrecall/s2/trial/FileView;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/FileView;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v1           #i:I
    .end local v2           #sel:[Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->finish()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0089
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
