.class Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;
.super Ljava/lang/Object;
.source "SimpleListDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$1(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->select(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
