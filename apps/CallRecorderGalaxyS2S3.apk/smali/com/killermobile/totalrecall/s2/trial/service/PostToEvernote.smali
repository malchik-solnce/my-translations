.class public Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;
.super Landroid/app/IntentService;
.source "PostToEvernote.java"


# static fields
.field private static final CONSUMER_KEY:Ljava/lang/String; = "oleg-milanov"

.field private static final CONSUMER_SECRET:Ljava/lang/String; = "b037a76e4bff594e"

.field private static final EVERNOTE_HOST:Ljava/lang/String; = "www.evernote.com"

.field public static final EXTRA_DELETE_FILE:Ljava/lang/String;

.field public static final EXTRA_FILENAME:Ljava/lang/String;

.field public static final EXTRA_FORMAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_FILENAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FILENAME:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_FORMAT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FORMAT:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_DELETE_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_DELETE_FILE:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "PostToEvernote"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static checkForLoginToast(II)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    const/4 v2, 0x0

    .line 70
    const v0, 0xf69b5

    if-eq p0, v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 73
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-string v1, "Login to Evernote successful"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v0

    const-string v1, "Could not login to Evernote"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static isLoggedIn()Z
    .locals 6

    .prologue
    .line 90
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-string v2, "oleg-milanov"

    const-string v3, "b037a76e4bff594e"

    const-string v4, "www.evernote.com"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/evernote/client/oauth/android/EvernoteSession;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/evernote/client/oauth/android/EvernoteSession;

    move-result-object v0

    .line 91
    .local v0, evernoteSession:Lcom/evernote/client/oauth/android/EvernoteSession;
    invoke-virtual {v0}, Lcom/evernote/client/oauth/android/EvernoteSession;->isLoggedIn()Z

    move-result v1

    return v1
.end method

.method public static login()V
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-string v2, "oleg-milanov"

    const-string v3, "b037a76e4bff594e"

    const-string v4, "www.evernote.com"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/evernote/client/oauth/android/EvernoteSession;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/evernote/client/oauth/android/EvernoteSession;

    move-result-object v0

    .line 60
    .local v0, session:Lcom/evernote/client/oauth/android/EvernoteSession;
    invoke-virtual {v0}, Lcom/evernote/client/oauth/android/EvernoteSession;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/client/oauth/android/EvernoteSession;->authenticate(Landroid/content/Context;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static logout()V
    .locals 6

    .prologue
    .line 64
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-string v2, "oleg-milanov"

    const-string v3, "b037a76e4bff594e"

    const-string v4, "www.evernote.com"

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/evernote/client/oauth/android/EvernoteSession;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/evernote/client/oauth/android/EvernoteSession;

    move-result-object v0

    .line 65
    .local v0, session:Lcom/evernote/client/oauth/android/EvernoteSession;
    invoke-virtual {v0}, Lcom/evernote/client/oauth/android/EvernoteSession;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/client/oauth/android/EvernoteSession;->logOut(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "filename"
    .parameter "format"
    .parameter "deleteFile"

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    const-class v2, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FILENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_DELETE_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method private upload(Ljava/lang/String;IZ)V
    .locals 17
    .parameter "filename"
    .parameter "format"
    .parameter "deleteFile"

    .prologue
    .line 96
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v12

    const-string v13, "oleg-milanov"

    const-string v14, "b037a76e4bff594e"

    const-string v15, "www.evernote.com"

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/evernote/client/oauth/android/EvernoteSession;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/evernote/client/oauth/android/EvernoteSession;

    move-result-object v6

    .line 97
    .local v6, evernoteSession:Lcom/evernote/client/oauth/android/EvernoteSession;
    invoke-virtual {v6}, Lcom/evernote/client/oauth/android/EvernoteSession;->isLoggedIn()Z

    move-result v12

    if-nez v12, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v7, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 104
    .local v3, createdNote:Lcom/evernote/edam/type/Note;
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v8, in:Ljava/io/InputStream;
    new-instance v4, Lcom/evernote/client/conn/mobile/FileData;

    invoke-static {v8}, Lcom/evernote/client/oauth/android/EvernoteUtil;->hash(Ljava/io/InputStream;)[B

    move-result-object v12

    invoke-direct {v4, v12, v7}, Lcom/evernote/client/conn/mobile/FileData;-><init>([BLjava/io/File;)V

    .line 106
    .local v4, data:Lcom/evernote/client/conn/mobile/FileData;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 108
    new-instance v11, Lcom/evernote/edam/type/Resource;

    invoke-direct {v11}, Lcom/evernote/edam/type/Resource;-><init>()V

    .line 109
    .local v11, resource:Lcom/evernote/edam/type/Resource;
    invoke-virtual {v11, v4}, Lcom/evernote/edam/type/Resource;->setData(Lcom/evernote/edam/type/Data;)V

    .line 111
    const-string v9, "audio/wav"

    .line 113
    .local v9, mime:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 128
    :goto_1
    new-instance v1, Lcom/evernote/edam/type/ResourceAttributes;

    invoke-direct {v1}, Lcom/evernote/edam/type/ResourceAttributes;-><init>()V

    .line 129
    .local v1, attributes:Lcom/evernote/edam/type/ResourceAttributes;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/evernote/edam/type/ResourceAttributes;->setFileName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v11, v1}, Lcom/evernote/edam/type/Resource;->setAttributes(Lcom/evernote/edam/type/ResourceAttributes;)V

    .line 132
    new-instance v10, Lcom/evernote/edam/type/Note;

    invoke-direct {v10}, Lcom/evernote/edam/type/Note;-><init>()V

    .line 133
    .local v10, note:Lcom/evernote/edam/type/Note;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/evernote/edam/type/Note;->setTitle(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v10, v11}, Lcom/evernote/edam/type/Note;->addToResources(Lcom/evernote/edam/type/Resource;)V

    .line 137
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\"><en-note><p>Call recording audio upload, uploaded on: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "</p>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 139
    invoke-static {v11}, Lcom/evernote/client/oauth/android/EvernoteUtil;->createEnMediaTag(Lcom/evernote/edam/type/Resource;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 140
    const-string v13, "</en-note>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, content:Ljava/lang/String;
    invoke-virtual {v10, v2}, Lcom/evernote/edam/type/Note;->setContent(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6}, Lcom/evernote/client/oauth/android/EvernoteSession;->createNoteStore()Lcom/evernote/edam/notestore/NoteStore$Client;

    move-result-object v12

    invoke-virtual {v6}, Lcom/evernote/client/oauth/android/EvernoteSession;->getAuthToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 150
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    .end local v1           #attributes:Lcom/evernote/edam/type/ResourceAttributes;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #data:Lcom/evernote/client/conn/mobile/FileData;
    .end local v8           #in:Ljava/io/InputStream;
    .end local v9           #mime:Ljava/lang/String;
    .end local v10           #note:Lcom/evernote/edam/type/Note;
    .end local v11           #resource:Lcom/evernote/edam/type/Resource;
    :catch_0
    move-exception v5

    .line 154
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 115
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #data:Lcom/evernote/client/conn/mobile/FileData;
    .restart local v8       #in:Ljava/io/InputStream;
    .restart local v9       #mime:Ljava/lang/String;
    .restart local v11       #resource:Lcom/evernote/edam/type/Resource;
    :sswitch_0
    :try_start_1
    const-string v9, "audio/3gpp"

    .line 116
    goto :goto_1

    .line 118
    :sswitch_1
    const-string v9, "video/mp4"

    .line 119
    goto :goto_1

    .line 121
    :sswitch_2
    const-string v9, "audio/amr"

    .line 122
    goto :goto_1

    .line 124
    :sswitch_3
    const-string v9, "audio/wav"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xfa4 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 81
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FILENAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, filename:Ljava/lang/String;
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_FORMAT:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    .local v2, format:I
    sget-object v3, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->EXTRA_DELETE_FILE:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, deleteFile:Z
    invoke-direct {p0, v1, v2, v0}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->upload(Ljava/lang/String;IZ)V

    .line 87
    return-void
.end method
