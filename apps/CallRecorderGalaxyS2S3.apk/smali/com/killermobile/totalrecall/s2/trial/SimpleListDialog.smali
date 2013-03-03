.class public Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;
.super Landroid/app/ListActivity;
.source "SimpleListDialog.java"


# static fields
.field public static final EXTRA_DESCRIPTION_TXT:Ljava/lang/String; = "EXTRA_DESCRIPTION_TXT"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "EXTRA_REQUEST_TYPE"

.field public static final EXTRA_TITLE_TXT:Ljava/lang/String; = "EXTRA_TITLE_TXT"

.field public static final REQUEST_TYPE_CONTACT:I = 0x1

.field public static final REQUEST_TYPE_FROM_LOGS:I = 0x2

.field public static final SELECTED_ITEMS:Ljava/lang/String; = "SELECTED_ITEMS"


# instance fields
.field private adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

.field private contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

.field private descripitonTextView:Landroid/widget/TextView;

.field private di:Landroid/app/ProgressDialog;

.field private search:Landroid/widget/AutoCompleteTextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->search:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Lcom/killermobile/totalrecall/contacts/ContactsManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 53
    .local v3, thisIntent:Landroid/content/Intent;
    const-string v5, "EXTRA_REQUEST_TYPE"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, request:I
    if-gez v2, :cond_0

    .line 148
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getContactsManager()Lcom/killermobile/totalrecall/contacts/ContactsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 59
    const-string v5, "EXTRA_TITLE_TXT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, titleText:Ljava/lang/String;
    const-string v5, "EXTRA_DESCRIPTION_TXT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, descText:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->requestWindowFeature(I)Z

    .line 64
    const v5, 0x7f03000a

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->setContentView(I)V

    .line 66
    const v5, 0x7f0a0073

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    sget-object v6, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v5, v6, v7}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 68
    const v5, 0x7f0a0074

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->titleTextView:Landroid/widget/TextView;

    .line 69
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_1
    const v5, 0x7f0a0075

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->descripitonTextView:Landroid/widget/TextView;

    .line 73
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->descripitonTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_2
    const v5, 0x7f0a0076

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->search:Landroid/widget/AutoCompleteTextView;

    .line 79
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->search:Landroid/widget/AutoCompleteTextView;

    new-instance v6, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;

    invoke-direct {v6, p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 91
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->search:Landroid/widget/AutoCompleteTextView;

    invoke-direct {v5, p0, v6, v7}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    .line 92
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    const v5, 0x7f0a0077

    invoke-virtual {p0, v5}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, ok:Landroid/widget/Button;
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;

    invoke-direct {v5, p0}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    .line 108
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    const v6, 0x7f060030

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 109
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    const v6, 0x7f060033

    invoke-virtual {p0, v6}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 112
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;

    invoke-direct {v6, p0, v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 70
    .end local v1           #ok:Landroid/widget/Button;
    :cond_1
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 74
    :cond_2
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->descripitonTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->di:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    invoke-virtual {v0, p3}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->toggle(I)V

    .line 162
    return-void
.end method
