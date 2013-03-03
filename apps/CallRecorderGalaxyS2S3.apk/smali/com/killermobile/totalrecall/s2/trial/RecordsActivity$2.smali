.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;
.super Landroid/os/Handler;
.source "RecordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 160
    const/4 v3, 0x3

    .line 163
    .local v3, sort:I
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecordsListSortOrder()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 164
    if-nez v3, :cond_0

    const/4 v3, 0x3

    .line 169
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/killermobile/totalrecall/s2/trial/Record;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;IZLandroid/widget/AutoCompleteTextView;)V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v7, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    return-void

    .line 165
    :catch_0
    move-exception v6

    .line 166
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
