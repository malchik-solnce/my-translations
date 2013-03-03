.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7$1;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;)Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7$1;->this$1:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$7;)Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    move-result-object v1

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getData()[Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->delete(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$9(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Ljava/util/List;)V

    .line 404
    return-void
.end method
