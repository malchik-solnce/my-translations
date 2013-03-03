.class public Lcom/killermobile/totalrecall/contacts/AfterDonut;
.super Ljava/lang/Object;
.source "AfterDonut.java"

# interfaces
.implements Lcom/killermobile/totalrecall/contacts/ContactsResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;
    }
.end annotation


# static fields
.field private static final PROJECTION_PHONE:[Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 53
    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 54
    const-string v2, "data1"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobile/totalrecall/contacts/AfterDonut;->contentResolver:Landroid/content/ContentResolver;

    .line 48
    new-instance v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;

    invoke-direct {v0, p1}, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    .line 49
    return-void
.end method

.method private getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_ASSISTANT:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_CALLBACK:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_CAR:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_3
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_COMPANY_MAIN:Ljava/lang/String;

    goto :goto_0

    .line 81
    :pswitch_4
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_FAX_HOME:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_5
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_FAX_WORK:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_6
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_HOME:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_7
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_ISDN:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_8
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MAIN:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_9
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MMS:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_a
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_MOBILE:Ljava/lang/String;

    goto :goto_0

    .line 88
    :pswitch_b
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_OTHER:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_c
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_OTHER_FAX:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_d
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_PAGER:Ljava/lang/String;

    goto :goto_0

    .line 91
    :pswitch_e
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_RADIO:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_f
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_TELEX:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_10
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_TTY_TDD:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_11
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_12
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK_MOBILE:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_13
    sget-object v0, Lcom/killermobile/totalrecall/contacts/AfterDonut$PhoneTypes;->TYPE_WORK_PAGER:Ljava/lang/String;

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_11
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_9
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
    const/4 v4, 0x0

    .line 59
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/AfterDonut;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/killermobile/totalrecall/contacts/AfterDonut;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 72
    :goto_0
    return-object v8

    .line 65
    :cond_0
    new-instance v7, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-direct {v7}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>()V

    .line 66
    .local v7, item:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTitle(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 67
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setNumber(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 68
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/contacts/AfterDonut;->getPhoneType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setType(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 69
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v7           #item:Lcom/killermobile/totalrecall/contacts/ContactItem;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
