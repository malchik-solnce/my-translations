.class Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;
.super Ljava/lang/Object;
.source "PhonesPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;

.field private final synthetic val$arg2:I


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;

    iput p2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;->val$arg2:I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;)Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;->val$arg2:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->this$0:Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;->access$0(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;)Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
