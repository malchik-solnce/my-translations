.class Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;
.super Ljava/lang/Object;
.source "SimpleListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->access$1(Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->select(Ljava/lang/String;)V

    .line 185
    return-void
.end method
