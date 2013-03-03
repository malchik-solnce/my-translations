.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;
.super Landroid/os/Handler;
.source "RecordsActivity.java"


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

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;->val$path:Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 368
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/Record;

    .line 369
    .local v0, record:Lcom/killermobile/totalrecall/s2/trial/Record;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/Record;->getCid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;->val$path:Ljava/lang/String;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->delete(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 370
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$6;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const-string v2, "Extension fixed"

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->toastMessage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$8(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/lang/String;)V

    .line 372
    return-void
.end method
