.class Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;
.super Lcom/killermobilecrjb/patcher/AsyncTask;
.source "S3JBFixScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobilecrjb/patcher/S3JBFixScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/killermobilecrjb/patcher/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public taskNoErrors:Z

.field final synthetic this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;


# direct methods
.method private constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-direct {p0}, Lcom/killermobilecrjb/patcher/AsyncTask;-><init>()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)V

    return-void
.end method

.method static synthetic access$4(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)Lcom/killermobilecrjb/patcher/S3JBFixScreen;
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v3, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    new-instance v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$1;

    invoke-direct {v2, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$1;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)V

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    :goto_0
    sget-boolean v1, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    if-eqz v1, :cond_1

    .line 408
    sput-boolean v5, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    .line 410
    sget v1, Lcom/killermobilecrjb/patcher/Patcher;->DIALOG_RESULT:I

    if-ne v1, v3, :cond_2

    .line 411
    const-string v1, "Installation cancelled by user."

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 412
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 533
    :cond_0
    :goto_1
    return-object v8

    .line 405
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    new-instance v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;

    invoke-direct {v2, p0}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask$2;-><init>(Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;)V

    invoke-virtual {v1, v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    :goto_2
    sget-boolean v1, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    if-eqz v1, :cond_3

    .line 457
    sput-boolean v5, Lcom/killermobilecrjb/patcher/Patcher;->ACK_DIALOG:Z

    .line 459
    sget v1, Lcom/killermobilecrjb/patcher/Patcher;->DIALOG_RESULT:I

    if-ne v1, v3, :cond_4

    .line 460
    const-string v1, "Installation cancelled by user."

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 461
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 454
    :cond_3
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 465
    :cond_4
    iput-boolean v6, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 467
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->isACPower(Landroid/content/Context;)Z

    .line 469
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-boolean v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->gotBatteryInfo:Z

    if-eqz v1, :cond_5

    .line 470
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel:I

    const/16 v2, 0x28

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->isACPower(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 471
    iput-boolean v5, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Battery level to low: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\nPlease charge your battery\nor connect a charger."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const-string v2, "/data"

    #calls: Lcom/killermobilecrjb/patcher/S3JBFixScreen;->memSize(Ljava/lang/String;)J
    invoke-static {v1, v2}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->access$0(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    .line 477
    iput-boolean v5, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough internal phone storage space. (Mount /data - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const-string v3, "/data"

    #calls: Lcom/killermobilecrjb/patcher/S3JBFixScreen;->memSize(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->access$0(Lcom/killermobilecrjb/patcher/S3JBFixScreen;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MB free.)\nPlease try to free up some memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/killermobilecrjb/patcher/Patcher;->Log(Ljava/lang/String;)V

    .line 481
    :cond_6
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_7

    .line 482
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->putResources()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 483
    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 487
    :cond_7
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_8

    .line 488
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->removeSmalis()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 489
    new-array v1, v6, [Ljava/lang/Integer;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 493
    :cond_8
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_9

    .line 494
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->backupSystem()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 495
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 498
    :cond_9
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_a

    .line 499
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->DEXNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "secphone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v1, v2, v3, v4}, Lcom/killermobilecrjb/patcher/Patcher;->baksmali(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 500
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 503
    :cond_a
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_b

    .line 505
    new-instance v0, Lcom/killermobilecrjb/patcher/SmaliEdit;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "spoofer.patch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/killermobilecrjb/patcher/SmaliEdit;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, smaliEdit:Lcom/killermobilecrjb/patcher/SmaliEdit;
    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/SmaliEdit;->patch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 508
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 512
    .end local v0           #smaliEdit:Lcom/killermobilecrjb/patcher/SmaliEdit;
    :cond_b
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_c

    .line 513
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "secphone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/killermobilecrjb/patcher/Patcher;->KM_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "dex/secphone/classes.dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x180

    invoke-virtual {v1, v2, v3, v4}, Lcom/killermobilecrjb/patcher/Patcher;->smali(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 514
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 517
    :cond_c
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_d

    .line 518
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->createNewJars()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 519
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 522
    :cond_d
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_e

    .line 524
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->writeNewServices()Z

    move-result v1

    iput-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    .line 525
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    .line 528
    :cond_e
    iget-boolean v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v1, v1, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/Patcher;->createSfv()V

    .line 530
    new-array v1, v7, [Ljava/lang/Integer;

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .parameter "result"

    .prologue
    const v5, 0x7f050005

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    iput-boolean v3, v0, Lcom/killermobilecrjb/patcher/Patcher;->isPatching:Z

    .line 572
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 574
    iget-boolean v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->taskNoErrors:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 576
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 577
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget v1, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    #calls: Lcom/killermobilecrjb/patcher/S3JBFixScreen;->fadeIn()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->access$1(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setOverallPct(I)V

    .line 589
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->success:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 591
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Success!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :goto_1
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 581
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Failed)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/killermobilecrjb/patcher/Patcher;->LAST_INSTALL_ERROR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    invoke-virtual {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 601
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setupCheck:Landroid/widget/CheckBox;

    const-string v1, "Install Failed!"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v2, v2, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nCould not complete installation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->installingCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    #calls: Lcom/killermobilecrjb/patcher/S3JBFixScreen;->fadeIn()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->access$1(Lcom/killermobilecrjb/patcher/S3JBFixScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 540
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setOverallPct(I)V

    .line 541
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Updating .. "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x1

    .line 545
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->setOverallPct(I)V

    .line 547
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 548
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 549
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Updating ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->patcher:Lcom/killermobilecrjb/patcher/Patcher;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/Patcher;->mShellProgress:Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;

    invoke-virtual {v0}, Lcom/killermobilecrjb/patcher/Patcher$ShellProgress;->kill()V

    .line 552
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Updating ...."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 553
    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 554
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Writing new data..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    :cond_3
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 556
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Writing system ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 557
    :cond_4
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 558
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Unpacking (1/1) ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 559
    :cond_5
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 560
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Unpacking (2/2) ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    :cond_6
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 562
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Repackaging (1/1) ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 563
    :cond_7
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->this$0:Lcom/killermobilecrjb/patcher/S3JBFixScreen;

    iget-object v0, v0, Lcom/killermobilecrjb/patcher/S3JBFixScreen;->progressText:Landroid/widget/TextView;

    const-string v1, "Repackaging (2/2) ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/killermobilecrjb/patcher/S3JBFixScreen$InstallTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
