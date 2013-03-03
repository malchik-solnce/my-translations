.class public Lcom/killermobile/totalrecall/contacts/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"

# interfaces
.implements Lcom/killermobile/totalrecall/contacts/ContactsResolver;


# static fields
.field private static final CALL_LOGS_PROJECTION_NUMBER_TYPE_NAME:[Ljava/lang/String;

.field private static contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;


# instance fields
.field private final app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

.field private final contactsResolver:Lcom/killermobile/totalrecall/contacts/ContactsResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 34
    const-string v2, "name"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->CALL_LOGS_PROJECTION_NUMBER_TYPE_NAME:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/killermobile/totalrecall/contacts/BeforeDonut;

    invoke-direct {v0, p1}, Lcom/killermobile/totalrecall/contacts/BeforeDonut;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    :goto_0
    iput-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsResolver:Lcom/killermobile/totalrecall/contacts/ContactsResolver;

    .line 39
    sput-object p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 40
    iput-object p1, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/killermobile/totalrecall/contacts/AfterDonut;

    invoke-direct {v0, p1}, Lcom/killermobile/totalrecall/contacts/AfterDonut;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    goto :goto_0
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "source"
    .parameter "data"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static get()Lcom/killermobile/totalrecall/contacts/ContactsManager;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 94
    :goto_0
    return-object v0

    .line 93
    :cond_0
    new-instance v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/killermobile/totalrecall/contacts/ContactsManager;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;)V

    sput-object v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    .line 94
    sget-object v0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsManager:Lcom/killermobile/totalrecall/contacts/ContactsManager;

    goto :goto_0
.end method

.method private getCallLogsType(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_0

    .line 76
    const-string v0, ""

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const v1, 0x7f0600e8

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static numberBasedRecordingAllowed(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "service"
    .parameter "number"
    .parameter "incoming"

    .prologue
    const/4 v7, 0x1

    .line 103
    :try_start_0
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecordingNumbersApplyFor()I

    move-result v8

    invoke-static {v8}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 105
    .local v0, applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    if-nez p1, :cond_1

    .line 130
    .end local v0           #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :cond_0
    :goto_0
    return v7

    .line 106
    .restart local v0       #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    :cond_1
    sget-object v8, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0, v8}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    if-eqz p2, :cond_2

    sget-object v8, Lcom/killermobile/totalrecall/s2/trial/CallType;->OUT:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0, v8}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 108
    :cond_2
    if-nez p2, :cond_3

    sget-object v8, Lcom/killermobile/totalrecall/s2/trial/CallType;->IN:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0, v8}, Lcom/killermobile/totalrecall/s2/trial/CallType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    :cond_3
    new-instance v8, Lorg/json/JSONArray;

    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getRecordingNumbersJson()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/killermobile/totalrecall/s2/trial/Utils;->jsonToContactItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 112
    .local v5, nums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 113
    invoke-interface {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isRecordingNumbersRecordSelected()Z

    move-result v6

    .line 114
    .local v6, recordSelected:Z
    const/4 v4, 0x0

    .line 115
    .local v4, found:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 122
    :goto_1
    if-eqz v6, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 115
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 116
    .local v1, ci:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {v1}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_4

    .line 117
    const/4 v4, 0x1

    .line 118
    goto :goto_1

    .line 125
    .end local v0           #applyFor:Lcom/killermobile/totalrecall/s2/trial/CallType;
    .end local v1           #ci:Lcom/killermobile/totalrecall/contacts/ContactItem;
    .end local v4           #found:Z
    .end local v5           #nums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    .end local v6           #recordSelected:Z
    :catch_0
    move-exception v3

    .line 126
    .local v3, e1:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v3           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 128
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkNumberMatch(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, nums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, num:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContactItems()Ljava/util/ArrayList;
    .locals 1
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
    .line 45
    iget-object v0, p0, Lcom/killermobile/totalrecall/contacts/ContactsManager;->contactsResolver:Lcom/killermobile/totalrecall/contacts/ContactsResolver;

    invoke-interface {v0}, Lcom/killermobile/totalrecall/contacts/ContactsResolver;->getContactItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLogItems()Ljava/util/ArrayList;
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

    .line 50
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v7, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/killermobile/totalrecall/contacts/ContactsManager;->CALL_LOGS_PROJECTION_NUMBER_TYPE_NAME:[Ljava/lang/String;

    .line 52
    const-string v5, "date DESC"

    move-object v4, v3

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 64
    :goto_0
    return-object v3

    .line 57
    :cond_0
    new-instance v8, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-direct {v8}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>()V

    .line 58
    .local v8, pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTitle(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 59
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setNumber(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 60
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/contacts/ContactsManager;->getCallLogsType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setType(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 61
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v8           #pojo:Lcom/killermobile/totalrecall/contacts/ContactItem;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 64
    goto :goto_0
.end method
