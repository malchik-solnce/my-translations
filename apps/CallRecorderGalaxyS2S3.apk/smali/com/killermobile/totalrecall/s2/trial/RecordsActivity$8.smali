.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

.field private final synthetic val$markerContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->val$markerContainer:Landroid/widget/LinearLayout;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0039

    if-ne v1, v2, :cond_0

    .line 414
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getMarked()Ljava/util/ArrayList;

    move-result-object v0

    .line 415
    .local v0, marked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/s2/trial/Record;>;"
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->delete(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$9(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/util/List;)V

    .line 418
    .end local v0           #marked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/s2/trial/Record;>;"
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->disableMarking()V

    .line 419
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$8;->val$markerContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    return-void
.end method
