.class public Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;
.super Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;
.source "RecordingSettingsWizard.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AudioDialog;,
        Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;,
        Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;,
        Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;,
        Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$ViewState:[I

.field private static currentView:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

.field private static firstStart:Z


# instance fields
.field private callNumber:Landroid/widget/EditText;

.field private info:Landroid/widget/TextView;

.field private lastCreated:J

.field private poll:Landroid/widget/RadioGroup;

.field private pollListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private previous:Landroid/widget/Button;

.field private reset:Landroid/widget/Button;

.field private results:Landroid/widget/Button;

.field private skip:Landroid/widget/Button;

.field private skipPoll:Z

.field private test:Landroid/widget/Button;

.field private testNumber:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$ViewState()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$ViewState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->results:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$ViewState:[I

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
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->info:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->currentView:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->firstStart:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z

    .line 184
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;

    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->pollListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 649
    invoke-direct {p0, p1, p2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->setTestResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->test()V

    return-void
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->currentView:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    return-void
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->resetTestResult()V

    return-void
.end method

.method static synthetic access$4(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z

    return-void
.end method

.method static synthetic access$5(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->lastCreated:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->lastCreated:J

    return-void
.end method

.method static synthetic access$7(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skipPoll:Z

    return v0
.end method

.method private resetTestResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;

    invoke-direct {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;-><init>()V

    .line 646
    .local v0, res:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setTestResults(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private setTestResult(ILjava/lang/String;)V
    .locals 4
    .parameter "test"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getTestResults()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, json:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->fromJSON(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;

    move-result-object v1

    .line 655
    .local v1, res:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    const-string v2, "yes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setYes(I)V

    .line 656
    :cond_0
    const-string v2, "no"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setNo(I)V

    .line 657
    :cond_1
    const-string v2, "maybe"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setMaybe(I)V

    .line 659
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seting in service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setTestResults(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private setViewState()V
    .locals 14

    .prologue
    const v11, 0x7f0600bb

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 433
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$ViewState()[I

    move-result-object v9

    sget-object v10, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->currentView:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    invoke-virtual {v10}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 506
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v13}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 437
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->check(I)V

    .line 438
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->info:Landroid/widget/TextView;

    const v10, 0x7f0600c0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 439
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->info:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    const/4 v5, 0x1

    .line 444
    .local v5, nextTest:I
    :try_start_0
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v9}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getNextTestNumber()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 451
    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v9}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getTestNumber()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, n:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->callNumber:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v10}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getTestNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    .end local v4           #n:Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->testNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "##"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "**"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 453
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 455
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 463
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #nextTest:I
    :pswitch_1
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v12}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 464
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->info:Landroid/widget/TextView;

    const v10, 0x7f0600b8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 466
    const/4 v6, 0x1

    .line 469
    .local v6, nt:I
    :try_start_2
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v9}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getNextTestNumber()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 475
    :goto_3
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->testNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "##"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "**"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 470
    :catch_2
    move-exception v0

    .line 472
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 482
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v6           #nt:I
    :pswitch_2
    :try_start_3
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v9}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getTestResults()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, json:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "loading: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 489
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->fromJSON(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;

    move-result-object v7

    .line 491
    .local v7, res:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    const-string v8, ""

    .line 492
    .local v8, yes:Ljava/lang/String;
    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->access$0(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;)Ljava/util/SortedSet;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 493
    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 495
    :cond_1
    const-string v3, ""

    .line 496
    .local v3, maybe:Ljava/lang/String;
    #getter for: Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;
    invoke-static {v7}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->access$1(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;)Ljava/util/SortedSet;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 497
    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 499
    :cond_2
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v13}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 501
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->testNumber:Landroid/widget/TextView;

    const v10, 0x7f0600c8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object v9, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->info:Landroid/widget/TextView;

    const v10, 0x7f0600c7

    invoke-virtual {p0, v10}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "##"

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "**"

    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 484
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #maybe:Ljava/lang/String;
    .end local v7           #res:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    .end local v8           #yes:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 485
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 492
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #json:Ljava/lang/String;
    .restart local v7       #res:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    .restart local v8       #yes:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, i:Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 496
    .end local v1           #i:Ljava/lang/Integer;
    .restart local v3       #maybe:Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #i:Ljava/lang/Integer;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private test()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getNextTestNumber()I

    move-result v1

    .line 230
    .local v1, nextTest:I
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-static {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->setTestConditions(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, call:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->callNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setNextTestNumber(I)V

    .line 238
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->callNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setTestNumber(Ljava/lang/String;)V

    .line 241
    :cond_0
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;->poll:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    sput-object v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->currentView:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$ViewState;

    .line 243
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->updateUI()V

    .line 244
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;Z)V

    .line 79
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->setContentView(I)V

    .line 81
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->testNumber:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->callNumber:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->test:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->test:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->results:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->results:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$3;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$3;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->previous:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skip:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->reset:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->previous:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$4;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->reset:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$5;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->skip:Landroid/widget/Button;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$6;

    invoke-direct {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$6;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->info:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    .line 175
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->poll:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->pollListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->application:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->removeRecordsListener(Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication$AvailableRecordsListener;)V

    .line 181
    invoke-super {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallServiceActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onListChanged([Lcom/killermobile/totalrecall/s2/trial/Record;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 399
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;

    invoke-direct {v0, p0, p1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$8;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;[Lcom/killermobile/totalrecall/s2/trial/Record;)V

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    return-void
.end method

.method protected updateUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 248
    const-string v2, "update ui"

    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->setViewState()V

    .line 252
    sget-boolean v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->firstStart:Z

    if-eqz v2, :cond_1

    .line 253
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, model:Ljava/lang/String;
    const-string v2, "x10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "i9100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "i9000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hero"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "streak"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, num:Landroid/widget/EditText;
    const-string v2, "Введите номер для проверки"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 259
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 261
    new-instance v2, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v2, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600c3

    invoke-virtual {p0, v3}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "##"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setTitleText(Ljava/lang/String;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 262
    invoke-virtual {v2, v1}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setView(Landroid/view/View;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 263
    const-string v3, "Тест"

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;

    invoke-direct {v4, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$7;-><init>(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    .line 297
    const-string v3, "Отмена"

    invoke-virtual {v2, v3, v6}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    .line 305
    .end local v0           #model:Ljava/lang/String;
    .end local v1           #num:Landroid/widget/EditText;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;->firstStart:Z

    .line 307
    return-void

    .line 299
    .restart local v0       #model:Ljava/lang/String;
    :cond_2
    const-string v2, "droid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "milestone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_3
    new-instance v2, Lorg/appforce/ui/DialogBuilder$AlertDialog;

    invoke-direct {v2, p0}, Lorg/appforce/ui/DialogBuilder$AlertDialog;-><init>(Landroid/content/Context;)V

    .line 301
    const v3, 0x7f0600b6

    invoke-virtual {v2, v3}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setMsg(I)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3, v6}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lorg/appforce/ui/DialogBuilder$AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appforce/ui/DialogBuilder$AlertDialog;->show()V

    goto :goto_0
.end method
