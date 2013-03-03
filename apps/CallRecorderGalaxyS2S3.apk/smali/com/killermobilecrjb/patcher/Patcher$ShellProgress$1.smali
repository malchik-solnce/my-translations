.class Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;
.super Ljava/lang/Object;
.source "Patcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->setupProgressThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;


# direct methods
.method constructor <init>(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 95
    new-instance v10, Ljava/lang/String;

    const-string v15, "/data/kmobile/baksmali.progress"

    invoke-direct {v10, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    .local v10, progressFile:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, file:Ljava/io/File;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    #getter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z
    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$0(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 206
    return-void

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    .line 107
    const-wide/16 v15, 0xbb8

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v4

    .line 199
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v15, "Need to set a permission on this file as it\'s been recreated"

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_1
    const/4 v9, 0x0

    .line 113
    .local v9, lineCount:I
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 114
    .local v6, fis:Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v11, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 117
    .local v3, curLine:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, buffer:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 124
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 125
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 130
    const-string v15, "WriteCount\\[(\\d+)"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 131
    .local v12, regex:Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 133
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 135
    .local v13, temp:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    if-eq v15, v13, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iput v13, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    .line 142
    .end local v13           #temp:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    add-int/lit8 v16, v9, -0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, curIndex:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "sf\\["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\]\\:\\s(.*?)\\,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 147
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurFile:Ljava/lang/String;

    .line 155
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "sf\\["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\]\\:.*?\\,\\stime\\:\\s(\\d+)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 156
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    #setter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I
    invoke-static/range {v15 .. v16}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$1(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;I)V

    .line 163
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget-object v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    if-eqz v15, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget-object v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v17, v0

    #getter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I
    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$2(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v16, v0

    #calls: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->secondsRemaining()F
    invoke-static/range {v16 .. v16}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$3(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRemainingTime:F

    .line 192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAvgMs:F

    float-to-int v15, v15

    int-to-long v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 201
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v2           #curIndex:Ljava/lang/String;
    .end local v3           #curLine:Ljava/lang/String;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v9           #lineCount:I
    .end local v11           #reader:Ljava/io/BufferedReader;
    .end local v12           #regex:Ljava/util/regex/Matcher;
    :catch_1
    move-exception v4

    .line 202
    .local v4, e:Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ShellProgress: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x0

    #setter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRunning:Z
    invoke-static/range {v15 .. v16}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$4(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;Z)V

    goto/16 :goto_0

    .line 120
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v3       #curLine:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v9       #lineCount:I
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 150
    .restart local v2       #curIndex:Ljava/lang/String;
    .restart local v12       #regex:Ljava/util/regex/Matcher;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const-string v16, "Unknown File"

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurFile:Ljava/lang/String;

    goto/16 :goto_2

    .line 159
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    const/16 v16, 0x0

    #setter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I
    invoke-static/range {v15 .. v16}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$1(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;I)V

    goto/16 :goto_3

    .line 168
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    .line 170
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    if-lt v7, v15, :cond_8

    .line 175
    const-string v15, "sf\\[.*?\\]\\:.*?\\,\\stime\\:\\s(\\d+)"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 177
    const/4 v8, 0x0

    .line 178
    .local v8, j:I
    :goto_6
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget-object v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v17, v0

    #getter for: Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurExcTime:I
    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->access$2(Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 171
    .end local v8           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget-object v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 179
    .restart local v8       #j:I
    :cond_9
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 180
    .local v14, value:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress$1;->this$1:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    iget-object v15, v15, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mAverages:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method
