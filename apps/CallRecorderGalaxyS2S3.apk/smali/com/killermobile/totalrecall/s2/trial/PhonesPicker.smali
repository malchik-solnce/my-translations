.class public Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "PhonesPicker.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I = null

.field private static final DIALOG_ADD_MANUAL:I = 0x1

.field private static final REQUEST_CODE_PICK_CONTACTS:I = 0x1

.field private static final REQUEST_CODE_PICK_LOGS:I = 0x2

.field private static final SAVED_INSTANCE_STATE:Ljava/lang/String; = "SAVED_INSTANCE_STATE"


# instance fields
.field private adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

.field private applyForIn:Landroid/widget/CheckBox;

.field private final applyForListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private applyForOut:Landroid/widget/CheckBox;

.field private btnAddCallLogs:Landroid/widget/Button;

.field private btnAddContacts:Landroid/widget/Button;

.field private btnAddManual:Landroid/widget/Button;

.field private final btnsListener:Landroid/view/View$OnClickListener;

.field private contactItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

.field private listView:Landroid/widget/ListView;

.field private final recordNumbersCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private recordTheseGroup:Landroid/widget/RadioGroup;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/CallType;->values()[Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnsListener:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 284
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordNumbersCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 136
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    const-string v5, "SELECTED_ITEMS"

    invoke-virtual {v3, v4, v5, v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 141
    .local v1, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 146
    .end local v1           #selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const-class v4, Lcom/killermobile/totalrecall/s2/trial/SimpleListDialog;

    const-string v5, "SELECTED_ITEMS"

    invoke-virtual {v3, v4, v5, v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 147
    .local v2, selectedLogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 148
    .local v0, log:Lcom/killermobile/totalrecall/contacts/ContactItem;
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->setContentView(I)V

    .line 62
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {v2, v3, v5}, Lorg/appforce/ui/ThemedViews;->changeViewGroupTheme(Landroid/view/ViewGroup;Lorg/appforce/ui/ThemedViews$Theme;Z)V

    .line 64
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getContactsManager()Lcom/killermobile/totalrecall/contacts/ContactsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 66
    const v2, 0x7f0a0021

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->listView:Landroid/widget/ListView;

    .line 68
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordTheseGroup:Landroid/widget/RadioGroup;

    .line 70
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    .line 71
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    .line 73
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddManual:Landroid/widget/Button;

    .line 74
    const v2, 0x7f0a0016

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddContacts:Landroid/widget/Button;

    .line 75
    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddCallLogs:Landroid/widget/Button;

    .line 77
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddManual:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddContacts:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnAddCallLogs:Landroid/widget/Button;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->btnsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/AutoCompleteTextView;)V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    .line 82
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->disableSelection()V

    .line 83
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;

    invoke-direct {v3, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    const v2, 0x7f0a0020

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 103
    .local v1, save:Landroid/widget/Button;
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    .local v0, clearSelection:Landroid/widget/Button;
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;

    invoke-direct {v2, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    if-eqz p1, :cond_0

    const-string v2, "SAVED_INSTANCE_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const-string v4, "SAVED_INSTANCE_STATE"

    invoke-virtual {v2, v3, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getTempStuff(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    .line 130
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 155
    new-instance v0, Lorg/appforce/ui/ThemedDialog;

    invoke-direct {v0, p0}, Lorg/appforce/ui/ThemedDialog;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    const-string v1, "Доб. в ручную"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-super {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 219
    instance-of v4, p2, Lorg/appforce/ui/ThemedDialog;

    if-eqz v4, :cond_0

    .line 220
    check-cast p2, Lorg/appforce/ui/ThemedDialog;

    .end local p2
    sget-object v4, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    invoke-static {p2, v4}, Lorg/appforce/ui/ThemedViews;->changeDialogTheme(Lorg/appforce/ui/ThemedDialog;Lorg/appforce/ui/ThemedViews$Theme;)V

    .line 222
    :cond_0
    return-void

    .line 174
    .restart local p2
    :pswitch_0
    const v4, 0x7f0a008c

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 175
    .local v1, addManualName:Landroid/widget/EditText;
    const v4, 0x7f0a008d

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 177
    .local v2, addManualNumber:Landroid/widget/EditText;
    const v4, 0x7f0a008e

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 178
    .local v3, addManualSave:Landroid/widget/Button;
    const v4, 0x7f0a008f

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 180
    .local v0, addManualCancel:Landroid/widget/Button;
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;

    invoke-direct {v4, p0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$8;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$8;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;

    invoke-direct {v4, p0, v3, v2}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker$9;-><init>(Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;

    const-string v2, "SAVED_INSTANCE_STATE"

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addTempStuff(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    const-string v0, "SAVED_INSTANCE_STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method protected updateUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 312
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecordingNumbersJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/Utils;->jsonToContactItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    .line 313
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->adapter:Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/SimpleListAdapter;->dataChanged(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordTheseGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 322
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 323
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    :try_start_1
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordTheseGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordingNumbersRecordSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a001a

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 328
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecordingNumbersApplyFor()I

    move-result v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 330
    .local v0, applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$CallType()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v2, :pswitch_data_0

    .line 351
    .end local v0           #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :goto_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordTheseGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->recordNumbersCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 352
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->contactItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 326
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const v2, 0x7f0a001b

    goto :goto_1

    .line 335
    .restart local v0       #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 347
    .end local v0           #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :catch_1
    move-exception v1

    .line 349
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 338
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 341
    :pswitch_2
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForIn:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/PhonesPicker;->applyForOut:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
