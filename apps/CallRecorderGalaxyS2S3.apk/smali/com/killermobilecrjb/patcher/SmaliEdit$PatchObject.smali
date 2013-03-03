.class Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;
.super Ljava/lang/Object;
.source "SmaliEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/SmaliEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatchObject"
.end annotation


# instance fields
.field public mBlockCount:I

.field private mBlockData:[Ljava/lang/String;

.field private mBuffer:Ljava/lang/String;

.field public mFunctions:[Ljava/lang/String;

.field private mHasData:Z

.field public mPathDirs:[Ljava/lang/String;

.field public mPathTargets:[Ljava/lang/String;

.field public mVersions:[Ljava/lang/String;

.field final synthetic this$0:Lcom/killermobilecrjb/patcher/SmaliEdit;


# direct methods
.method public constructor <init>(Lcom/killermobilecrjb/patcher/SmaliEdit;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "pathPatchFile"

    .prologue
    const/4 v1, 0x0

    .line 66
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->this$0:Lcom/killermobilecrjb/patcher/SmaliEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mHasData:Z

    .line 72
    invoke-direct {p0, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->readPatchFile(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->construct()V

    .line 74
    return-void
.end method

.method private build(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "pattern"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, data:[Ljava/lang/String;
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 111
    .local v3, regex:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 112
    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    if-lez v1, :cond_0

    .line 118
    new-array v0, v1, [Ljava/lang/String;

    .line 119
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    :cond_0
    return-object v0

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method private readPatchFile(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 136
    .local v0, curLine:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 149
    .end local v0           #curLine:Ljava/lang/String;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 140
    .restart local v0       #curLine:Ljava/lang/String;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->read(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0           #curLine:Ljava/lang/String;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/io/IOException;
    const-string v4, "KMPatcher"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setBlockCount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    const-string v2, "(\\{\\{)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 85
    .local v0, regex:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const-string v2, "(\\}\\})"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, temp:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    iget v2, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    if-eq v1, v2, :cond_0

    .line 98
    iput v4, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    .line 99
    iput-boolean v4, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mHasData:Z

    .line 101
    const-string v2, "Mismatched blocks in patch file!"

    invoke-static {v2}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void

    .line 86
    .end local v1           #temp:I
    :cond_1
    iget v2, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    goto :goto_0

    .line 94
    .restart local v1       #temp:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public construct()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mHasData:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->setBlockCount()V

    .line 154
    const-string v0, "#target[\\s]+(.+)"

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->build(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mPathTargets:[Ljava/lang/String;

    .line 155
    const-string v0, "#dir[\\s]+(.+)"

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->build(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mPathDirs:[Ljava/lang/String;

    .line 156
    const-string v0, "#function[\\s]+(.+)"

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->build(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mFunctions:[Ljava/lang/String;

    .line 157
    const-string v0, "#version[\\s]+(.+)"

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->build(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mVersions:[Ljava/lang/String;

    .line 158
    const-string v0, "\\@begin([\\W\\w]+?)\\@end"

    invoke-direct {p0, v0}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->build(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockData:[Ljava/lang/String;

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "Cannot construct edit data!"

    invoke-static {v0}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getTasks()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v11, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;>;"
    const/4 v10, 0x0

    .line 168
    .local v10, regex:Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 170
    .local v8, version:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mHasData:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockCount:I

    if-lt v9, v0, :cond_1

    .line 203
    .end local v9           #i:I
    :cond_0
    return-object v11

    .line 176
    .restart local v9       #i:I
    :cond_1
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mPathTargets:[Ljava/lang/String;

    aget-object v5, v0, v9

    .line 179
    .local v5, target:Ljava/lang/String;
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mFunctions:[Ljava/lang/String;

    aget-object v6, v0, v9

    .line 182
    .local v6, function:Ljava/lang/String;
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mPathDirs:[Ljava/lang/String;

    aget-object v7, v0, v9

    .line 185
    .local v7, dir:Ljava/lang/String;
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mVersions:[Ljava/lang/String;

    aget-object v8, v0, v9

    .line 187
    const-string v0, "\\.([\\w\\W]+?)\\{([\\w\\W]+?)\\}[\\s]+?\\<\\<([\\w\\W]+?)\\>\\>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBlockData:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 192
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, job:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, param:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, data:Ljava/lang/String;
    new-instance v0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->this$0:Lcom/killermobilecrjb/patcher/SmaliEdit;

    invoke-direct/range {v0 .. v8}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;-><init>(Lcom/killermobilecrjb/patcher/SmaliEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .parameter "line"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mBuffer:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->mHasData:Z

    .line 79
    return-void
.end method
