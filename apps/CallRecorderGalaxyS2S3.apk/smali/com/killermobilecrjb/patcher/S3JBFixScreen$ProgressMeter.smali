.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;
.super Lcom/killermobilecrjb/patcher/AsyncTask;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressMeter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/killermobilecrjb/patcher/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method private constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 29
    .parameter "params"

    .prologue
    .line 226
    const/16 v19, 0x0

    .line 228
    .local v19, smaliActive:Z
    const-string v12, "unk"

    .line 230
    .local v12, prevFile:Ljava/lang/String;
    const/4 v6, 0x0

    .line 232
    .local v6, cd:Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
    new-instance v10, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v10}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 233
    .local v10, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 235
    .local v3, activityManager:Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->isActive()Z

    move-result v24

    if-nez v24, :cond_1

    .line 325
    const/16 v24, 0x0

    return-object v24

    .line 237
    :cond_1
    const-wide/16 v24, 0x64

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurIndex:I

    .line 240
    .local v7, cur:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mRemainingTime:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v15, v0

    .line 242
    .local v15, remaining:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressTotalFiles:I

    move/from16 v23, v0

    .line 244
    .local v23, total:I
    int-to-float v0, v7

    move/from16 v24, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    const/high16 v25, 0x42c8

    mul-float v13, v24, v25

    .line 246
    .local v13, progressBar:F
    if-lez v15, :cond_7

    .line 248
    const/16 v19, 0x1

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->mProgressCurFile:Ljava/lang/String;

    .line 251
    const-string v20, "Processing file: "

    .line 253
    .local v20, subStr:Ljava/lang/String;
    const-string v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_8

    .line 254
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    const-string v26, "."

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 258
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x28

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    const/16 v24, 0x0

    const/16 v25, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 260
    :cond_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%04d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "%04d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 262
    .local v21, text:Ljava/lang/String;
    const-string v22, ""

    .line 266
    .local v22, time:Ljava/lang/String;
    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 267
    iget-wide v0, v10, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x100000

    div-long v4, v24, v26

    .line 268
    .local v4, availableMegs:J
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "M RAM free"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 271
    .local v14, ramLeftMegs:Ljava/lang/String;
    div-int/lit8 v17, v23, 0x8

    .line 273
    .local v17, sampleRate:I
    move/from16 v0, v17

    if-le v7, v0, :cond_6

    if-lez v15, :cond_6

    .line 275
    if-nez v6, :cond_3

    .line 276
    new-instance v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;

    .end local v6           #cd:Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v6, v0, v15}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;I)V

    .line 277
    .restart local v6       #cd:Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
    invoke-virtual {v6}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->start()V

    .line 280
    :cond_3
    iget v0, v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    move/from16 v24, v0

    sub-int v8, v15, v24

    .line 284
    .local v8, diff:I
    const/16 v24, 0xa

    move/from16 v0, v24

    if-gt v8, v0, :cond_4

    const/16 v24, -0xa

    move/from16 v0, v24

    if-ge v8, v0, :cond_5

    .line 286
    :cond_4
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    .line 287
    new-instance v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;

    .end local v6           #cd:Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v6, v0, v15}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;I)V

    .line 288
    .restart local v6       #cd:Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;
    invoke-virtual {v6}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->start()V

    .line 292
    :cond_5
    iget v0, v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 293
    const/4 v6, 0x0

    .line 311
    .end local v8           #diff:I
    :cond_6
    :goto_2
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object v14, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->publishProgress([Ljava/lang/Object;)V

    .line 316
    .end local v4           #availableMegs:J
    .end local v14           #ramLeftMegs:Ljava/lang/String;
    .end local v17           #sampleRate:I
    .end local v20           #subStr:Ljava/lang/String;
    .end local v21           #text:Ljava/lang/String;
    .end local v22           #time:Ljava/lang/String;
    :cond_7
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ge v15, v0, :cond_0

    .line 318
    if-eqz v19, :cond_d

    .line 319
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "Please wait, processing new data ..."

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "0.0"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, ""

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 256
    .restart local v20       #subStr:Ljava/lang/String;
    :cond_8
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 295
    .restart local v4       #availableMegs:J
    .restart local v8       #diff:I
    .restart local v14       #ramLeftMegs:Ljava/lang/String;
    .restart local v17       #sampleRate:I
    .restart local v21       #text:Ljava/lang/String;
    .restart local v22       #time:Ljava/lang/String;
    :cond_9
    iget v0, v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    move/from16 v24, v0

    rem-int/lit8 v18, v24, 0x3c

    .line 296
    .local v18, seconds:I
    iget v0, v6, Lcom/killermobilecrjb/patcher/S3JBFixScreen$Countdown;->count:I

    move/from16 v24, v0

    div-int/lit8 v11, v24, 0x3c

    .line 298
    .local v11, minutes:I
    const/16 v24, 0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    const-string v16, "s"

    .line 299
    .local v16, s:Ljava/lang/String;
    :goto_3
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v11, v0, :cond_b

    const-string v9, "s "

    .line 301
    .local v9, m:Ljava/lang/String;
    :goto_4
    if-lez v11, :cond_c

    .line 302
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " - Est. time remaining: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " min"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " second"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 298
    .end local v9           #m:Ljava/lang/String;
    .end local v16           #s:Ljava/lang/String;
    :cond_a
    const-string v16, ""

    goto :goto_3

    .line 299
    .restart local v16       #s:Ljava/lang/String;
    :cond_b
    const-string v9, " "

    goto :goto_4

    .line 304
    .restart local v9       #m:Ljava/lang/String;
    :cond_c
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " - Est. time remaining: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " second"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 321
    .end local v4           #availableMegs:J
    .end local v8           #diff:I
    .end local v9           #m:Ljava/lang/String;
    .end local v11           #minutes:I
    .end local v14           #ramLeftMegs:Ljava/lang/String;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #sampleRate:I
    .end local v18           #seconds:I
    .end local v20           #subStr:Ljava/lang/String;
    .end local v21           #text:Ljava/lang/String;
    .end local v22           #time:Ljava/lang/String;
    :cond_d
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "0.0"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, ""

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setFilePct(I)V

    .line 332
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->ramFree:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->ramFree:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setFilePct(I)V

    .line 339
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->processingText:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 348
    .local v0, val:F
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setFilePct(I)V

    .line 350
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$ProgressMeter;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->ramFree:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method
