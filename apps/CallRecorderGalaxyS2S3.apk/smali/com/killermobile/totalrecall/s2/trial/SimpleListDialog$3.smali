.class Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;
.super Ljava/lang/Object;
.source "SimpleListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$request:I


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    iput p2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->val$request:I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;)Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->val$request:I

    packed-switch v2, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$2(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/contacts/ContactsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->getContactItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    .local v0, cPojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;

    invoke-direct {v3, p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    .end local v0           #cPojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    :pswitch_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->access$2(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/contacts/ContactsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->getLogItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    .local v1, lPojos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$2;

    invoke-direct {v3, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
