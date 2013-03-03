.class public Lcom/killermobile/totalrecall/s2/trial/WizardAPI;
.super Ljava/lang/Object;
.source "WizardAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/WizardAPI$Constants;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$WizardSettings:[I

.field private static final VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$WizardSettings()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$WizardSettings:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->values()[Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->record_after_start_of_call:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->recording_strategy:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->speaker_phone:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->stream_solo:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->wake_lock:Lcom/killermobile/totalrecall/s2/trial/WizardSettings;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$WizardSettings:[I

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

.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 185
    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$1;

    invoke-direct {v2}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$1;-><init>()V

    .line 201
    .local v2, trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 202
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 203
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    .end local v1           #sslContext:Ljavax/net/ssl/SSLContext;
    :goto_0
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$2;

    invoke-direct {v3}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI$2;-><init>()V

    sput-object v3, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, e:Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "param"
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
    .parameter "deviceModel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, connection:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v3, 0x0

    .line 78
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 79
    .local v11, writer:Ljava/io/OutputStreamWriter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v7, request:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v8, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v13, "key"

    const-string v14, "f540defbf22cf04480a153937db2652a"

    invoke-static {v7, v13, v14}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v13, "device_model"

    invoke-static {v7, v13, p0}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v13, Ljava/net/URL;

    const-string v14, "https://www.killermobilesoftware.com/settings/settings.php?act=get"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 87
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 88
    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v11           #writer:Ljava/io/OutputStreamWriter;
    .local v12, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V

    .line 92
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 96
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 98
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->hasChildNodes()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 99
    const-string v13, "setting"

    invoke-interface {v1, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 101
    .local v6, nl:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-lt v4, v13, :cond_0

    move-object v11, v12

    .line 113
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v4           #j:I
    .end local v6           #nl:Lorg/w3c/dom/NodeList;
    .end local v12           #writer:Ljava/io/OutputStreamWriter;
    .restart local v11       #writer:Ljava/io/OutputStreamWriter;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    :goto_4
    return-object v8

    .line 102
    .end local v11           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #j:I
    .restart local v6       #nl:Lorg/w3c/dom/NodeList;
    .restart local v12       #writer:Ljava/io/OutputStreamWriter;
    :cond_0
    :try_start_5
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 103
    .local v9, setting:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 104
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "name"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, name:Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, value:Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v8, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v4           #j:I
    .end local v6           #nl:Lorg/w3c/dom/NodeList;
    .end local v9           #setting:Lorg/w3c/dom/Node;
    .end local v12           #writer:Ljava/io/OutputStreamWriter;
    .restart local v11       #writer:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v2

    .line 115
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 119
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 120
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 124
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 125
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    goto :goto_1

    .end local v11           #writer:Ljava/io/OutputStreamWriter;
    .restart local v12       #writer:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12           #writer:Ljava/io/OutputStreamWriter;
    .restart local v11       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v11           #writer:Ljava/io/OutputStreamWriter;
    .restart local v1       #doc:Lorg/w3c/dom/Document;
    .restart local v12       #writer:Ljava/io/OutputStreamWriter;
    :cond_2
    move-object v11, v12

    .end local v12           #writer:Ljava/io/OutputStreamWriter;
    .restart local v11       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method public static getDefaultSettings(Lcom/killermobile/totalrecall/s2/trial/WizardSettings;)I
    .locals 3
    .parameter "setting"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$WizardSettings()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/WizardSettings;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 60
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 214
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 215
    return-object v0
.end method

.method public static update(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 13
    .parameter "deviceModel"
    .parameter "deviceID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, connection:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v2, 0x0

    .line 136
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 137
    .local v9, writer:Ljava/io/OutputStreamWriter;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v6, request:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v7, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v11, "key"

    const-string v12, "f540defbf22cf04480a153937db2652a"

    invoke-static {v6, v11, v12}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v11, "device_model"

    invoke-static {v6, v11, p0}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v11, "device_id"

    invoke-static {v6, v11, p1}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 148
    new-instance v11, Ljava/net/URL;

    const-string v12, "https://www.killermobilesoftware.com/settings/settings.php?act=update"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 149
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 150
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v9           #writer:Ljava/io/OutputStreamWriter;
    .local v10, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->flush()V

    .line 154
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 156
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 157
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    .local v5, r:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 160
    .local v4, l:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-nez v4, :cond_1

    move-object v9, v10

    .line 164
    .end local v4           #l:Ljava/lang/String;
    .end local v5           #r:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v10           #writer:Ljava/io/OutputStreamWriter;
    .restart local v9       #writer:Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 174
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    :goto_5
    return-object v7

    .line 145
    :cond_0
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v6, v3, v11}, Lcom/killermobile/totalrecall/s2/trial/WizardAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v3           #key:Ljava/lang/String;
    :catchall_0
    move-exception v11

    goto :goto_2

    .line 160
    .end local v9           #writer:Ljava/io/OutputStreamWriter;
    .restart local v4       #l:Ljava/lang/String;
    .restart local v5       #r:Ljava/io/BufferedReader;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #writer:Ljava/io/OutputStreamWriter;
    :cond_1
    :try_start_6
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .end local v4           #l:Ljava/lang/String;
    .end local v5           #r:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10           #writer:Ljava/io/OutputStreamWriter;
    .restart local v9       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 175
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 176
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
