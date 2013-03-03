.class public Lcom/killermobilecrjb/patcher/SmaliEdit;
.super Ljava/lang/Object;
.source "SmaliEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;,
        Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;
    }
.end annotation


# instance fields
.field private mPatchObject:Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pathPatchFile"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;

    invoke-direct {v0, p0, p1}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;-><init>(Lcom/killermobilecrjb/patcher/SmaliEdit;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/killermobilecrjb/patcher/SmaliEdit;->mPatchObject:Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;

    .line 209
    return-void
.end method

.method private before(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I
    .locals 9
    .parameter "buffer"
    .parameter "task"

    .prologue
    const/4 v6, -0x1

    .line 353
    const/4 v4, -0x1

    .line 354
    .local v4, start:I
    const-string v7, "#before[\\s]+\\@(.*?)\\@"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getParam()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 356
    .local v2, regex:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, pattern:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getFunction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, index:I
    if-gez v0, :cond_0

    .line 365
    const-string v7, "Failed to find function in \'before\' search pattern."

    invoke-static {v7}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 393
    .end local v0           #index:I
    .end local v1           #pattern:Ljava/lang/String;
    :goto_0
    return v6

    .line 370
    .restart local v0       #index:I
    .restart local v1       #pattern:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v0

    add-int/lit8 v3, v7, -0x1

    .line 371
    .local v3, remaining:I
    add-int v7, v0, v3

    invoke-virtual {p1, v0, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, subseq:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 379
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int v4, v6, v0

    move v6, v4

    .line 393
    goto :goto_0

    .line 382
    :cond_1
    const-string v7, "Failed to locate pattern specified by \'before\'."

    invoke-static {v7}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v0           #index:I
    .end local v1           #pattern:Ljava/lang/String;
    .end local v3           #remaining:I
    .end local v5           #subseq:Ljava/lang/String;
    :cond_2
    const-string v7, "Could not find before pattern."

    invoke-static {v7}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copy(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I
    .locals 11
    .parameter "buffer"
    .parameter "task"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    .line 222
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getParam()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, param:Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, start:I
    const/4 v1, 0x0

    .line 226
    .local v1, end:I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 229
    .local v0, copy:Ljava/lang/String;
    const-string v9, "#copy\\s+?(.*?\\))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 230
    .local v4, regex:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 231
    .local v3, pattern:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 232
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 235
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 238
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int v1, v6, v9

    .line 243
    const-string v9, "#copy_replace_register\\s+([pv\\d]+)\\,([pv\\d]+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, replace:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, with:Ljava/lang/String;
    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p1, v6, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5           #replace:Ljava/lang/String;
    .end local v7           #with:Ljava/lang/String;
    :cond_0
    move v8, v6

    .line 262
    :goto_0
    return v8

    .line 250
    :cond_1
    const-string v9, "Failed on edit command: copy_insertbefore_registersafe (missing or bad directive)"

    invoke-static {v9}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    const-string v9, "Failed on edit command: copy_insertbefore_registersafe (could not find data to copy!)"

    invoke-static {v9}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private edit(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Z
    .locals 13
    .parameter "buffer"
    .parameter "task"

    .prologue
    .line 398
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getJob()Ljava/lang/String;

    move-result-object v10

    const-string v11, "after"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 401
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getFunction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 402
    .local v3, index:I
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getParam()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, param:Ljava/lang/String;
    const-string v10, "#search"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 407
    const-string v10, "#search[\\s]+(.+)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 409
    .local v7, regex:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 411
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, pattern:Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 414
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 415
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int v3, v10, v11

    .line 434
    .end local v6           #pattern:Ljava/lang/String;
    .end local v7           #regex:Ljava/util/regex/Matcher;
    .end local v8           #result:Ljava/lang/String;
    :goto_0
    if-lez v3, :cond_4

    .line 435
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getData()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, data:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, entry:Ljava/lang/String;
    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #entry:Ljava/lang/String;
    .end local v3           #index:I
    .end local v5           #param:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getJob()Ljava/lang/String;

    move-result-object v10

    const-string v11, "copy_insertbefore_registersafe"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->copy(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I

    move-result v9

    .line 450
    .local v9, start:I
    if-gez v9, :cond_5

    .line 451
    const/4 v10, 0x0

    .line 538
    .end local v9           #start:I
    :goto_1
    return v10

    .line 418
    .restart local v3       #index:I
    .restart local v5       #param:Ljava/lang/String;
    .restart local v6       #pattern:Ljava/lang/String;
    .restart local v7       #regex:Ljava/util/regex/Matcher;
    :cond_1
    const-string v10, "Failed to find pattern in buffer."

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 419
    const/4 v10, 0x0

    goto :goto_1

    .line 423
    .end local v6           #pattern:Ljava/lang/String;
    :cond_2
    const-string v10, "Error finding pattern for #search!"

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 424
    const/4 v10, 0x0

    goto :goto_1

    .line 431
    .end local v7           #regex:Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {p1, v5, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int v3, v10, v11

    goto :goto_0

    .line 441
    :cond_4
    const-string v10, "Failed on edit command: after"

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 442
    const/4 v10, 0x0

    goto :goto_1

    .line 454
    .end local v3           #index:I
    .end local v5           #param:Ljava/lang/String;
    .restart local v9       #start:I
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->verifyAccessor(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .restart local v1       #data:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #start:I
    :cond_6
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getJob()Ljava/lang/String;

    move-result-object v10

    const-string v11, "replace_verify"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->before(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I

    move-result v9

    .line 467
    .restart local v9       #start:I
    const/4 v4, -0x1

    .line 469
    .local v4, len:I
    if-gez v9, :cond_8

    .line 471
    const/4 v10, 0x0

    goto :goto_1

    .line 460
    .end local v4           #len:I
    .restart local v1       #data:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 474
    .end local v1           #data:Ljava/lang/String;
    .restart local v4       #len:I
    :cond_8
    const-string v10, "#before[\\s]+\\@(.*?)\\@"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getParam()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 476
    .restart local v7       #regex:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 478
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .restart local v6       #pattern:Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 481
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 483
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, beforeStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 488
    .end local v0           #beforeStr:Ljava/lang/String;
    .end local v6           #pattern:Ljava/lang/String;
    :cond_9
    const/4 v10, -0x1

    if-ne v4, v10, :cond_a

    .line 490
    const-string v10, "Error getting text length from pattern \'before\'."

    invoke-static {v10}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 491
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 495
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->verifyAccessor(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .restart local v1       #data:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 499
    add-int v10, v9, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #len:I
    .end local v7           #regex:Ljava/util/regex/Matcher;
    .end local v9           #start:I
    :cond_b
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getJob()Ljava/lang/String;

    move-result-object v10

    const-string v11, "insert_before_verify"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->before(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I

    move-result v9

    .line 510
    .restart local v9       #start:I
    if-gez v9, :cond_d

    .line 512
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 501
    .restart local v1       #data:Ljava/lang/String;
    .restart local v4       #len:I
    .restart local v7       #regex:Ljava/util/regex/Matcher;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 516
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #len:I
    .end local v7           #regex:Ljava/util/regex/Matcher;
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->verifyAccessor(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1       #data:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 520
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #start:I
    :cond_e
    invoke-virtual {p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getJob()Ljava/lang/String;

    move-result-object v10

    const-string v11, "copy_replace_registersafe"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->copy(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)I

    move-result v9

    .line 532
    .restart local v9       #start:I
    if-gez v9, :cond_10

    .line 534
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 522
    .restart local v1       #data:Ljava/lang/String;
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 538
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #start:I
    :cond_10
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private verifyAccessor(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Ljava/lang/String;
    .locals 21
    .parameter "buffer"
    .parameter "task"

    .prologue
    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getParam()Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, param:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getData()Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, data:Ljava/lang/String;
    const-string v17, "#verify-synthetic-accessor(\\d+)\\s+?(.*?)\\s+?\\@(.*?)\\@"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 282
    .local v14, regex:Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 285
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, compare:Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getDir()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/killermobilecrjb/patcher/SmaliEdit;->findFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v16

    .line 288
    .local v16, verifyLoc:Ljava/io/File;
    if-eqz v16, :cond_4

    .line 292
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 293
    .local v10, fis:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 296
    .local v13, reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v5, buffer2:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, temp:Ljava/lang/String;
    if-nez v15, :cond_1

    .line 302
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 303
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 305
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, pat:Ljava/lang/String;
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 310
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 311
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, accessor:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 316
    const-string v17, "access\\$([\\d]+)"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 318
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 320
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, dataAccessor:Ljava/lang/String;
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .end local v4           #accessor:Ljava/lang/String;
    .end local v5           #buffer2:Ljava/lang/StringBuilder;
    .end local v6           #compare:Ljava/lang/String;
    .end local v8           #dataAccessor:Ljava/lang/String;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v12           #pat:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v15           #temp:Ljava/lang/String;
    .end local v16           #verifyLoc:Ljava/io/File;
    :cond_0
    move-object/from16 v17, v7

    .line 348
    :goto_1
    return-object v17

    .line 299
    .restart local v5       #buffer2:Ljava/lang/StringBuilder;
    .restart local v6       #compare:Ljava/lang/String;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    .restart local v15       #temp:Ljava/lang/String;
    .restart local v16       #verifyLoc:Ljava/io/File;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v5           #buffer2:Ljava/lang/StringBuilder;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v15           #temp:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 339
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 340
    const/16 v17, 0x0

    goto :goto_1

    .line 327
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #accessor:Ljava/lang/String;
    .restart local v5       #buffer2:Ljava/lang/StringBuilder;
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v12       #pat:Ljava/lang/String;
    .restart local v13       #reader:Ljava/io/BufferedReader;
    .restart local v15       #temp:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v17, "Failed to find accessor string in data to replace"

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 328
    const/16 v17, 0x0

    goto :goto_1

    .line 333
    .end local v4           #accessor:Ljava/lang/String;
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Failed to find pattern: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    const/16 v17, 0x0

    goto :goto_1

    .line 343
    .end local v5           #buffer2:Ljava/lang/StringBuilder;
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v12           #pat:Ljava/lang/String;
    .end local v13           #reader:Ljava/io/BufferedReader;
    .end local v15           #temp:Ljava/lang/String;
    :cond_4
    const-string v17, "Failed to locate accessor verification file"

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 344
    const/16 v17, 0x0

    goto :goto_1
.end method


# virtual methods
.method public findFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .locals 6
    .parameter "fileName"
    .parameter "dir"
    .parameter "maxDeep"

    .prologue
    .line 543
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 545
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 546
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    .line 559
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    .line 546
    :cond_2
    aget-object v0, v1, v3

    .line 547
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 549
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, p3, -0x1

    if-lez v5, :cond_4

    .line 551
    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, p1, v0, v5}, Lcom/killermobilecrjb/patcher/SmaliEdit;->findFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 553
    .local v2, temp:Ljava/io/File;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v2

    .line 554
    goto :goto_1

    .line 546
    .end local v2           #temp:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public patch()Z
    .locals 21

    .prologue
    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/SmaliEdit;->mPatchObject:Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchObject;->getTasks()Ljava/util/List;

    move-result-object v14

    .line 565
    .local v14, tasks:Ljava/util/List;,"Ljava/util/List<Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 627
    const/16 v17, 0x1

    :goto_1
    return v17

    .line 565
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;

    .line 569
    .local v13, task:Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;
    const/4 v10, 0x0

    .line 572
    .local v10, success:Z
    :try_start_0
    invoke-virtual {v13}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 575
    .local v11, target:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getDir()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Lcom/killermobilecrjb/patcher/SmaliEdit;->findFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v12

    .line 577
    .local v12, targetFile:Ljava/io/File;
    if-nez v12, :cond_2

    .line 578
    const-string v17, "Error in findFile: null"

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 579
    const/16 v17, 0x0

    goto :goto_1

    .line 582
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, path:Ljava/lang/String;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 586
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 589
    .local v9, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .local v3, buffer:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, temp:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 595
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 596
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 599
    invoke-virtual {v13}, Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;->getVersion()Ljava/lang/String;

    move-result-object v16

    .line 600
    .local v16, version:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-gtz v18, :cond_0

    .line 606
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/killermobilecrjb/patcher/SmaliEdit;->edit(Ljava/lang/StringBuilder;Lcom/killermobilecrjb/patcher/SmaliEdit$PatchTask;)Z

    move-result v10

    .line 608
    if-eqz v10, :cond_4

    .line 609
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v7, outFile:Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 614
    .local v6, fo:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 615
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 620
    .end local v3           #buffer:Ljava/lang/StringBuilder;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #fo:Ljava/io/FileOutputStream;
    .end local v7           #outFile:Ljava/io/File;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v11           #target:Ljava/lang/String;
    .end local v12           #targetFile:Ljava/io/File;
    .end local v15           #temp:Ljava/lang/String;
    .end local v16           #version:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 621
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 622
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 592
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #buffer:Ljava/lang/StringBuilder;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v8       #path:Ljava/lang/String;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    .restart local v11       #target:Ljava/lang/String;
    .restart local v12       #targetFile:Ljava/io/File;
    .restart local v15       #temp:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 617
    .restart local v16       #version:Ljava/lang/String;
    :cond_4
    const-string v17, "Could not apply edits."

    invoke-static/range {v17 .. v17}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 618
    const/16 v17, 0x0

    goto/16 :goto_1
.end method
