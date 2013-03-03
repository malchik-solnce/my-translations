.class public Lcom/killermobile/totalrecall/contacts/BeforeDonut;
.super Ljava/lang/Object;
.source "BeforeDonut.java"

# interfaces
.implements Lcom/killermobile/totalrecall/contacts/ContactsResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 38
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 39
    const-string v2, "number"

    aput-object v2, v0, v1

    .line 36
    sput-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/contacts/BeforeDonut;->contentResolver:Landroid/content/ContentResolver;

    .line 18
    new-instance v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;

    invoke-direct {v0, p1}, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    .line 19
    return-void
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->CUSTOM:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->FAX_HOME:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_2
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->FAX_WORK:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_3
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->HOME:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_4
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->MOBILE:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_5
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->OTHER:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_6
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->PAGER:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_7
    sget-object v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut$PhoneTypes;->WORK:Ljava/lang/String;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getContactItems()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/BeforeDonut;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/killermobile/totalrecall/contacts/BeforeDonut;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 57
    :goto_0
    return-object v8

    .line 50
    :cond_0
    new-instance v7, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-direct {v7}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>()V

    .line 51
    .local v7, item:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTitle(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 52
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setNumber(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 53
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/contacts/BeforeDonut;->getPhoneType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setType(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 54
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v7           #item:Lcom/killermobile/totalrecall/contacts/ContactItem;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
