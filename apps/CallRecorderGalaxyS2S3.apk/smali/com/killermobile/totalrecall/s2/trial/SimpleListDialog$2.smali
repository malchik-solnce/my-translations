.class Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;
.super Ljava/lang/Object;
.source "SimpleListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 99
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->getResultData()Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    .local v0, resItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, resultIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    const-string v4, "SELECTED_ITEMS"

    invoke-virtual {v2, v3, v4, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->setResult(ILandroid/content/Intent;)V

    .line 103
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->finish()V

    .line 104
    return-void
.end method
