.class Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;
.super Ljava/lang/Object;
.source "DestinationPickerDialog.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/FileView$OnSelectedListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/killermobile/totalrecall/s2/trial/FileView;Z)V
    .locals 2
    .parameter "fileView"
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 41
    if-eqz p2, :cond_1

    .line 42
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->choiceMode:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/FileView;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/FileView;->setSelected(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->selection:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/DestinationPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
