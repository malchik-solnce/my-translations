.class public Lcom/killermobilecrjb/patcher/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobilecrjb/patcher/Shell$Buffer;,
        Lcom/killermobilecrjb/patcher/Shell$OUTPUT;,
        Lcom/killermobilecrjb/patcher/Shell$SU_COMMAND;,
        Lcom/killermobilecrjb/patcher/Shell$ShellException;,
        Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$Shell$OUTPUT:[I

.field private static final EOL:Ljava/lang/String;

.field private static final EXIT:Ljava/lang/String;

.field private static mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

.field private static sOStream:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

.field private static sShell:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobilecrjb$patcher$Shell$OUTPUT()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lcom/killermobilecrjb/patcher/Shell;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Shell$OUTPUT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->values()[Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->NONE:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDERR:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDOUT:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/killermobilecrjb/patcher/Shell;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Shell$OUTPUT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell;->mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

    .line 21
    sget-object v0, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->STDOUT:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell;->sOStream:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    .line 57
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell;->EOL:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/killermobilecrjb/patcher/Shell;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/killermobilecrjb/patcher/Shell;->EXIT:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/killermobilecrjb/patcher/Shell;->EOL:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    .line 329
    const-class v0, Lcom/killermobilecrjb/patcher/Shell;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/killermobilecrjb/patcher/Shell;->nativeExec(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getBuffer(Ljava/lang/Process;)Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .locals 4
    .parameter "proc"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->$SWITCH_TABLE$com$killermobilecrjb$patcher$Shell$OUTPUT()[I

    move-result-object v2

    sget-object v3, Lcom/killermobilecrjb/patcher/Shell;->sOStream:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;

    invoke-virtual {v3}, Lcom/killermobilecrjb/patcher/Shell$OUTPUT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v1, v0

    .line 256
    .end local v0           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .local v1, buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    :goto_0
    return-object v1

    .line 242
    .end local v1           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .restart local v0       #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    :pswitch_0
    new-instance v2, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    .line 243
    new-instance v2, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v1, v0

    .line 256
    .end local v0           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .restart local v1       #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    goto :goto_0

    .line 246
    .end local v1           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .restart local v0       #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    :pswitch_1
    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    .end local v0           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    .line 247
    .restart local v0       #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    new-instance v2, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    sput-object v2, Lcom/killermobilecrjb/patcher/Shell;->mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

    goto :goto_1

    .line 250
    :pswitch_2
    new-instance v0, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    .end local v0           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    .line 251
    .restart local v0       #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    new-instance v2, Lcom/killermobilecrjb/patcher/Shell$Buffer;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/killermobilecrjb/patcher/Shell$Buffer;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getLastErrStream()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v2, Lcom/killermobilecrjb/patcher/Shell;->mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/killermobilecrjb/patcher/Shell;->mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

    invoke-virtual {v2}, Lcom/killermobilecrjb/patcher/Shell$Buffer;->getOutput()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, result:Ljava/lang/String;
    sput-object v1, Lcom/killermobilecrjb/patcher/Shell;->mErrBuffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;

    .line 69
    :goto_0
    return-object v0

    .end local v0           #result:Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static isRootUid()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->values()[Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    .local v0, output:Ljava/lang/String;
    .local v2, uid:Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;
    :goto_0
    if-lt v5, v7, :cond_1

    move v3, v4

    .line 228
    :cond_0
    return v3

    .line 216
    :cond_1
    aget-object v2, v6, v5

    .line 217
    invoke-virtual {v2}, Lcom/killermobilecrjb/patcher/Shell$UID_COMMAND;->getCommand()Ljava/lang/String;

    .end local v0           #output:Ljava/lang/String;
    move-result-object v8

    invoke-static {v8}, Lcom/killermobilecrjb/patcher/Shell;->sudo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0       #output:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 219
    const-string v8, "^uid=(\\d+).*?"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 221
    .local v1, regex:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 222
    const-string v8, "0"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 216
    .end local v1           #regex:Ljava/util/regex/Matcher;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static nativeExec(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, proc:Ljava/lang/Process;
    const/4 v0, 0x0

    .line 156
    .local v0, buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 157
    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Shell;->getBuffer(Ljava/lang/Process;)Lcom/killermobilecrjb/patcher/Shell$Buffer;

    move-result-object v0

    .line 158
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 159
    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Shell$Buffer;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/killermobilecrjb/patcher/Shell$ShellException;

    invoke-direct {v3}, Lcom/killermobilecrjb/patcher/Shell$ShellException;-><init>()V

    throw v3
.end method

.method public static declared-synchronized setOutputStream(Lcom/killermobilecrjb/patcher/Shell$OUTPUT;)V
    .locals 2
    .parameter "ostream"

    .prologue
    .line 271
    const-class v0, Lcom/killermobilecrjb/patcher/Shell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/killermobilecrjb/patcher/Shell;->sOStream:Lcom/killermobilecrjb/patcher/Shell$OUTPUT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit v0

    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setShell(Ljava/lang/String;)V
    .locals 2
    .parameter "shell"

    .prologue
    .line 281
    const-class v0, Lcom/killermobilecrjb/patcher/Shell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit v0

    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setSuShell()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell$SU_COMMAND;->values()[Lcom/killermobilecrjb/patcher/Shell$SU_COMMAND;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    .local v0, cmd:Lcom/killermobilecrjb/patcher/Shell$SU_COMMAND;
    :goto_0
    if-lt v1, v3, :cond_1

    .line 206
    const/4 v1, 0x0

    sput-object v1, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;

    .line 207
    :cond_0
    return-void

    .line 200
    :cond_1
    aget-object v0, v2, v1

    .line 201
    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Shell$SU_COMMAND;->getCommand()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->isRootUid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized su()Z
    .locals 3

    .prologue
    .line 290
    const-class v2, Lcom/killermobilecrjb/patcher/Shell;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 292
    :try_start_1
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->setSuShell()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/killermobilecrjb/patcher/Shell$ShellException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .local v0, e:Lcom/killermobilecrjb/patcher/Shell$ShellException;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v2

    return v1

    .line 293
    .end local v0           #e:Lcom/killermobilecrjb/patcher/Shell$ShellException;
    :catch_0
    move-exception v0

    .line 294
    .restart local v0       #e:Lcom/killermobilecrjb/patcher/Shell$ShellException;
    const/4 v1, 0x0

    :try_start_3
    sput-object v1, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 297
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static suExec(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Lcom/killermobilecrjb/patcher/Shell;->sShell:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 176
    .local v2, proc:Ljava/lang/Process;
    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Shell;->getBuffer(Ljava/lang/Process;)Lcom/killermobilecrjb/patcher/Shell$Buffer;

    move-result-object v0

    .line 177
    .local v0, buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    new-instance v3, Ljava/io/DataOutputStream;

    .line 178
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 177
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v3, shell:Ljava/io/DataOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/killermobilecrjb/patcher/Shell;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 183
    sget-object v4, Lcom/killermobilecrjb/patcher/Shell;->EXIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 185
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 187
    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Shell$Buffer;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 189
    .end local v0           #buffer:Lcom/killermobilecrjb/patcher/Shell$Buffer;
    .end local v2           #proc:Ljava/lang/Process;
    .end local v3           #shell:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lcom/killermobilecrjb/patcher/Shell$ShellException;

    invoke-direct {v4}, Lcom/killermobilecrjb/patcher/Shell$ShellException;-><init>()V

    throw v4
.end method

.method public static declared-synchronized sudo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/killermobilecrjb/patcher/Shell$ShellException;
        }
    .end annotation

    .prologue
    .line 311
    const-class v2, Lcom/killermobilecrjb/patcher/Shell;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/killermobilecrjb/patcher/Shell;->su()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-static {p0}, Lcom/killermobilecrjb/patcher/Shell;->suExec(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 315
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
