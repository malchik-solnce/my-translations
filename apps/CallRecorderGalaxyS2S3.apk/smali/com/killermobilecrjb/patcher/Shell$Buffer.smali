.class Lcom/killermobilecrjb/patcher/Shell$Buffer;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Buffer"
.end annotation


# instance fields
.field private mBuffer:Ljava/lang/StringBuffer;

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mInputStream:Ljava/io/InputStream;

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mBuffer:Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/Shell$Buffer;->start()V

    .line 109
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 124
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .local v2, reader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 126
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 135
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_1
    iget-object v3, p0, Lcom/killermobilecrjb/patcher/Shell$Buffer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->access$0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
