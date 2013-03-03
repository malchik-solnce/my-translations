.class Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;
.super Ljava/lang/Object;
.source "SimpleListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;

.field private final synthetic val$cPojos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;->val$cPojos:Ljava/util/ArrayList;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;)Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    move-result-object v0

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;->val$cPojos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 123
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;)Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    move-result-object v0

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$3(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    return-void
.end method
