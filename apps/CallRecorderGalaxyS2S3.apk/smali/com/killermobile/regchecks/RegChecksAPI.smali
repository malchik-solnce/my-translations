.class public Lcom/killermobile/regchecks/RegChecksAPI;
.super Ljava/lang/Object;
.source "RegChecksAPI.java"


# static fields
.field public static final APP_CODE:Ljava/lang/String; = "TRAN"

.field public static final PARAM_APP_CODE:Ljava/lang/String; = "app"

.field public static final PARAM_FORCE_EXTEND:Ljava/lang/String; = "ForceExtend"

.field public static final PARAM_IMEI:Ljava/lang/String; = "IMEI"

.field public static final SERVER_URL:Ljava/lang/String; = "https://www.killermobilesoftware.com/for/devices/license-check/"

.field private static final VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 176
    new-instance v2, Lcom/killermobile/regchecks/RegChecksAPI$1;

    invoke-direct {v2}, Lcom/killermobile/regchecks/RegChecksAPI$1;-><init>()V

    .line 192
    .local v2, trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 193
    .local v1, sslContext:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 194
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    .end local v1           #sslContext:Ljavax/net/ssl/SSLContext;
    :goto_0
    new-instance v3, Lcom/killermobile/regchecks/RegChecksAPI$2;

    invoke-direct {v3}, Lcom/killermobile/regchecks/RegChecksAPI$2;-><init>()V

    sput-object v3, Lcom/killermobile/regchecks/RegChecksAPI;->VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 198
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
    .line 216
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/killermobile/regchecks/CheckResult;
    .locals 23
    .parameter "IMEI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, connection:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v9, 0x0

    .line 49
    .local v9, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 50
    .local v3, bufferedInputStream:Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 51
    .local v17, writer:Ljava/io/OutputStreamWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v10, request:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 57
    .local v11, res:Lcom/killermobile/regchecks/CheckResult;
    :try_start_0
    const-string v19, "IMEI"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v10, v0, v1}, Lcom/killermobile/regchecks/RegChecksAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v19, "app"

    const-string v20, "TRAN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v10, v0, v1}, Lcom/killermobile/regchecks/RegChecksAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v19, Ljava/net/URL;

    const-string v20, "https://www.killermobilesoftware.com/for/devices/license-check/"

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/killermobile/regchecks/RegChecksAPI;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v5

    .line 61
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 62
    new-instance v18, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v17           #writer:Ljava/io/OutputStreamWriter;
    .local v18, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V

    .line 66
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 68
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 69
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .local v4, bufferedInputStream:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v19, Ljava/util/Scanner;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v12

    .line 81
    .local v12, scanner:Ljava/util/Scanner;
    const/16 v16, -0x1

    .local v16, type:I
    const/4 v13, -0x1

    .line 83
    .local v13, secondsLeft:I
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 84
    invoke-virtual {v12}, Ljava/util/Scanner;->nextInt()I

    move-result v16

    .line 88
    :cond_0
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 89
    invoke-virtual {v12}, Ljava/util/Scanner;->nextInt()I

    move-result v13

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 95
    .local v14, time:J
    int-to-long v0, v13

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    mul-long v19, v19, v21

    add-long v7, v14, v19

    .line 97
    .local v7, exp:J
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 98
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_3

    .line 99
    new-instance v11, Lcom/killermobile/regchecks/CheckResult;

    .end local v11           #res:Lcom/killermobile/regchecks/CheckResult;
    sget-object v19, Lcom/killermobile/regchecks/CheckResult$Result;->LIFETIME:Lcom/killermobile/regchecks/CheckResult$Result;

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/killermobile/regchecks/CheckResult;-><init>(Lcom/killermobile/regchecks/CheckResult$Result;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    .restart local v11       #res:Lcom/killermobile/regchecks/CheckResult;
    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    :goto_1
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 121
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 127
    :goto_3
    return-object v11

    .line 102
    :cond_3
    :try_start_6
    new-instance v11, Lcom/killermobile/regchecks/CheckResult;

    .end local v11           #res:Lcom/killermobile/regchecks/CheckResult;
    sget-object v19, Lcom/killermobile/regchecks/CheckResult$Result;->TRIAL:Lcom/killermobile/regchecks/CheckResult$Result;

    move-object/from16 v0, v19

    invoke-direct {v11, v0, v7, v8}, Lcom/killermobile/regchecks/CheckResult;-><init>(Lcom/killermobile/regchecks/CheckResult$Result;J)V

    .restart local v11       #res:Lcom/killermobile/regchecks/CheckResult;
    goto :goto_0

    .line 105
    :cond_4
    if-nez v16, :cond_2

    .line 106
    new-instance v11, Lcom/killermobile/regchecks/CheckResult;

    .end local v11           #res:Lcom/killermobile/regchecks/CheckResult;
    sget-object v19, Lcom/killermobile/regchecks/CheckResult$Result;->EXPIRED:Lcom/killermobile/regchecks/CheckResult$Result;

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v11, v0, v1, v2}, Lcom/killermobile/regchecks/CheckResult;-><init>(Lcom/killermobile/regchecks/CheckResult$Result;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .restart local v11       #res:Lcom/killermobile/regchecks/CheckResult;
    goto :goto_0

    .line 109
    .end local v4           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v7           #exp:J
    .end local v12           #scanner:Ljava/util/Scanner;
    .end local v13           #secondsLeft:I
    .end local v14           #time:J
    .end local v16           #type:I
    .end local v18           #writer:Ljava/io/OutputStreamWriter;
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v17       #writer:Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v19

    .line 111
    .end local v11           #res:Lcom/killermobile/regchecks/CheckResult;
    :goto_4
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 116
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 121
    :goto_6
    :try_start_9
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 125
    :goto_7
    throw v19

    .line 112
    :catch_0
    move-exception v6

    .line 113
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 117
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 118
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 122
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 123
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 112
    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v17           #writer:Ljava/io/OutputStreamWriter;
    .restart local v4       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v7       #exp:J
    .restart local v11       #res:Lcom/killermobile/regchecks/CheckResult;
    .restart local v12       #scanner:Ljava/util/Scanner;
    .restart local v13       #secondsLeft:I
    .restart local v14       #time:J
    .restart local v16       #type:I
    .restart local v18       #writer:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v6

    .line 113
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v6           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 118
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 123
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 109
    .end local v4           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #exp:J
    .end local v12           #scanner:Ljava/util/Scanner;
    .end local v13           #secondsLeft:I
    .end local v14           #time:J
    .end local v16           #type:I
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v19

    move-object/from16 v17, v18

    .end local v18           #writer:Ljava/io/OutputStreamWriter;
    .restart local v17       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .end local v11           #res:Lcom/killermobile/regchecks/CheckResult;
    .end local v17           #writer:Ljava/io/OutputStreamWriter;
    .restart local v4       #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v18       #writer:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v19

    move-object/from16 v17, v18

    .end local v18           #writer:Ljava/io/OutputStreamWriter;
    .restart local v17       #writer:Ljava/io/OutputStreamWriter;
    move-object v3, v4

    .end local v4           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    goto :goto_4
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
    .line 204
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 205
    .local v0, conn:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v1, Lcom/killermobile/regchecks/RegChecksAPI;->VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 206
    return-object v0
.end method

.method public static requestNewTrial(Ljava/lang/String;)V
    .locals 8
    .parameter "IMEI"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 134
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 135
    .local v4, writer:Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v3, request:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "IMEI"

    invoke-static {v3, v6, p0}, Lcom/killermobile/regchecks/RegChecksAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "app"

    const-string v7, "TRAN"

    invoke-static {v3, v6, v7}, Lcom/killermobile/regchecks/RegChecksAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v6, "ForceExtend"

    const-string v7, "true"

    invoke-static {v3, v6, v7}, Lcom/killermobile/regchecks/RegChecksAPI;->addPostParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v6, Ljava/net/URL;

    const-string v7, "https://www.killermobilesoftware.com/for/devices/license-check/"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/killermobile/regchecks/RegChecksAPI;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 144
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 145
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .local v5, writer:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 149
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v4, v5

    .line 156
    .end local v5           #writer:Ljava/io/OutputStreamWriter;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 170
    :goto_3
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 162
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 163
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 168
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    goto :goto_0

    .end local v4           #writer:Ljava/io/OutputStreamWriter;
    .restart local v5       #writer:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #writer:Ljava/io/OutputStreamWriter;
    .restart local v4       #writer:Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method
