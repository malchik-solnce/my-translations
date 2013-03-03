.class Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;
.super Ljava/lang/Object;
.source "RecordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const v7, 0x7f060081

    const v8, 0x7f060082

    .line 891
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    invoke-virtual {v1, v8}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 892
    .local v4, isDescAction:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 933
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 894
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getData()[Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v2

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;IZLandroid/widget/AutoCompleteTextView;)V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v9, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    .line 896
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 897
    check-cast p1, Landroid/widget/Button;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    if-eqz v4, :cond_1

    move v0, v7

    :goto_1
    invoke-virtual {v2, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordsListSortOrder(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v6

    .line 902
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    move v0, v8

    .line 897
    goto :goto_1

    .line 907
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getData()[Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;IZLandroid/widget/AutoCompleteTextView;)V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v9, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    .line 909
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 910
    check-cast p1, Landroid/widget/Button;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v1, v7}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 912
    :try_start_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordsListSortOrder(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 913
    :catch_1
    move-exception v6

    .line 915
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    move v7, v8

    .line 910
    goto :goto_2

    .line 920
    .restart local p1
    :pswitch_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;->getData()[Lcom/killermobile/totalrecall/s2/trial/Record;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->search:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;-><init>(Landroid/content/Context;[Lcom/killermobile/totalrecall/s2/trial/Record;IZLandroid/widget/AutoCompleteTextView;)V

    #setter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v9, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$2(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;)V

    .line 922
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->listRecords:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$3(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->adapter:Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->access$4(Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;)Lcom/killermobile/totalrecall/s2/trial/RecordAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 923
    check-cast p1, Landroid/widget/Button;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    const v2, 0x7f060080

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v1, v7}, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 925
    :try_start_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/RecordsActivity;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordsListSortOrder(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 926
    :catch_2
    move-exception v6

    .line 928
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    move v7, v8

    .line 923
    goto :goto_3

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0034
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
