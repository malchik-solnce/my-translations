.class public Lcom/killermobile/totalrecall/s2/trial/WizardState;
.super Ljava/lang/Object;
.source "WizardState.java"


# static fields
.field public static CURRENTLY_RECORDING:Z

.field public static attachedBTHeadsets:I


# instance fields
.field private final binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

.field private final service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

.field private stream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 1
    .parameter "service"
    .parameter "binder"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    .line 51
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    .line 52
    iput-object p2, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/WizardState;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    return-object v0
.end method

.method private stopWAVRecord()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->stop()V

    .line 308
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->release()V

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public startNewRecord(Ljava/lang/String;I)V
    .locals 26
    .parameter "phone"
    .parameter "type"

    .prologue
    .line 60
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v11

    .line 62
    .local v11, app:Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;
    invoke-virtual {v11}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getExpiration()Lcom/killermobile/regchecks/CheckResult;

    move-result-object v15

    .line 64
    .local v15, expiration:Lcom/killermobile/regchecks/CheckResult;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/killermobile/regchecks/CheckResult;->getResult()Lcom/killermobile/regchecks/CheckResult$Result;

    move-result-object v2

    sget-object v3, Lcom/killermobile/regchecks/CheckResult$Result;->LIFETIME:Lcom/killermobile/regchecks/CheckResult$Result;

    if-eq v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v15}, Lcom/killermobile/regchecks/CheckResult;->getExpirationTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v3, "Эта демо-запись будет остановлена через 1 минуту"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 66
    new-instance v24, Landroid/content/Intent;

    const-string v2, "action_stop_demo_rec"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v24, stopRecIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    .line 68
    .local v25, stopRecPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 69
    .local v10, alarmManager:Landroid/app/AlarmManager;
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    move-object/from16 v0, v25

    invoke-virtual {v10, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 73
    .end local v10           #alarmManager:Landroid/app/AlarmManager;
    .end local v24           #stopRecIntent:Landroid/content/Intent;
    .end local v25           #stopRecPendingIntent:Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isDontRecordWithBTHeadset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getInstance()Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v9

    .line 75
    .local v9, a:Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/killermobile/totalrecall/s2/trial/WizardState;->attachedBTHeadsets:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_3

    .line 184
    .end local v9           #a:Landroid/media/AudioManager;
    :cond_2
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v14

    .line 78
    .local v14, e1:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    .end local v14           #e1:Landroid/os/RemoteException;
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v20

    .line 82
    .local v20, newCallType:Lcom/killermobile/totalrecall/s2/trial/CallType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingWakeLock:Z

    if-eqz v2, :cond_4

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "sh"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v23

    .line 86
    .local v23, process:Ljava/lang/Process;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    .line 87
    .local v22, po:Ljava/io/OutputStream;
    const-string v2, "echo TRCALLRECORDWAKELOCK > sys/power/wake_lock\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 88
    const-string v2, "exit\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    .end local v22           #po:Ljava/io/OutputStream;
    .end local v23           #process:Ljava/lang/Process;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->speakerPhone:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 97
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 98
    const/16 v17, 0x0

    .line 100
    .local v17, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v21, path:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 104
    new-instance v16, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getFileName(Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 108
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 109
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .local v18, fos:Ljava/io/FileOutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isRecording:Z

    .line 111
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    const/16 v3, 0xfa4

    if-ne v2, v3, :cond_e

    const/16 v19, 0x1

    .line 116
    .local v19, isWav:Z
    :goto_3
    if-eqz v19, :cond_f

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v5, v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getFileName(Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->prepareWAVRecord(ILjava/lang/String;)V

    .line 126
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->streamSolo:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 128
    :cond_6
    const/4 v12, 0x0

    .line 129
    .local v12, attachListener:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    if-eqz v2, :cond_7

    if-nez v19, :cond_7

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 131
    const/4 v12, 0x1

    .line 133
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    if-eqz v2, :cond_8

    if-nez v19, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J

    long-to-int v3, v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 135
    const/4 v12, 0x1

    .line 137
    :cond_8
    if-eqz v12, :cond_9

    if-nez v19, :cond_9

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->onInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 140
    :cond_9
    if-eqz v19, :cond_10

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v3, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v4, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v5, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v7, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->startWAVRecord(ZZJJ)V

    .line 147
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStart:J

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    iput v3, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentFormat:I

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentPhone:Ljava/lang/String;

    .line 154
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    if-eqz v2, :cond_a

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V

    .line 159
    :cond_a
    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    if-eqz v2, :cond_b

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V

    .line 164
    :cond_b
    const/4 v2, 0x1

    sput-boolean v2, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isToastsAllowed()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v3, "Запись разговора..."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.killermobile.totalrecall.QuickRecorderWidget.FORCE_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 172
    .end local v12           #attachListener:Z
    .end local v19           #isWav:Z
    :catch_1
    move-exception v13

    move-object/from16 v17, v18

    .line 174
    .end local v16           #file:Ljava/io/File;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v21           #path:Ljava/io/File;
    .local v13, e:Ljava/lang/IllegalStateException;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :goto_6
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v13

    .line 91
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 112
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #file:Ljava/io/File;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #path:Ljava/io/File;
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecorderAudioSource()I

    move-result v2

    goto/16 :goto_2

    .line 114
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 119
    .restart local v19       #isWav:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v3, v3, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 175
    .end local v19           #isWav:Z
    :catch_3
    move-exception v13

    move-object/from16 v17, v18

    .line 177
    .end local v16           #file:Ljava/io/File;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v21           #path:Ljava/io/File;
    .local v13, e:Ljava/io/IOException;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :goto_7
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 143
    .end local v13           #e:Ljava/io/IOException;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #attachListener:Z
    .restart local v16       #file:Ljava/io/File;
    .restart local v18       #fos:Ljava/io/FileOutputStream;
    .restart local v19       #isWav:Z
    .restart local v21       #path:Ljava/io/File;
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v2, v2, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_5

    .line 178
    .end local v12           #attachListener:Z
    .end local v19           #isWav:Z
    :catch_4
    move-exception v13

    move-object/from16 v17, v18

    .line 179
    .end local v16           #file:Ljava/io/File;
    .end local v18           #fos:Ljava/io/FileOutputStream;
    .end local v21           #path:Ljava/io/File;
    .local v13, e:Ljava/lang/Exception;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :goto_8
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    .end local v13           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v13

    goto :goto_8

    .line 175
    :catch_6
    move-exception v13

    goto :goto_7

    .line 172
    :catch_7
    move-exception v13

    goto/16 :goto_6
.end method

.method public startWAVRecord(ZZJJ)V
    .locals 7
    .parameter "maxSizeEnabled"
    .parameter "maxDurationEnabled"
    .parameter "maxSize"
    .parameter "maxDuration"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->setRestrictions(ZZJJ)V

    .line 188
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->setHandler(Landroid/os/Handler;)V

    .line 189
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->prepare()V

    .line 190
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->start()V

    .line 191
    return-void
.end method

.method public stopRecording(Z)V
    .locals 10
    .parameter "forceQuickStop"

    .prologue
    const/4 v9, 0x0

    .line 195
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    if-eqz v6, :cond_0

    .line 197
    :try_start_0
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9

    .line 201
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 206
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    if-eqz v6, :cond_1

    .line 208
    :try_start_2
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    .line 212
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    .line 218
    :cond_1
    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 221
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "sh"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 222
    .local v3, process:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 223
    .local v2, po:Ljava/io/OutputStream;
    const-string v6, "echo TRCALLRECORDWAKELOCK > sys/power/wake_unlock\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 224
    const-string v6, "exit\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 225
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 233
    .end local v2           #po:Ljava/io/OutputStream;
    .end local v3           #process:Ljava/lang/Process;
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->speakerPhone:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 237
    :cond_3
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->streamSolo:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioManager:Landroid/media/AudioManager;

    iget v7, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    invoke-virtual {v6, v7, v9}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 239
    :cond_4
    const/high16 v6, -0x8000

    iput v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stream:I

    .line 241
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isRecording:Z

    if-eqz v6, :cond_6

    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, msg:Ljava/lang/String;
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStop:J

    .line 246
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    const/16 v7, 0xfa4

    if-ne v6, v7, :cond_7

    .line 247
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stopWAVRecord()V

    .line 256
    :goto_5
    if-eqz p1, :cond_8

    const-string v1, "Ручная запись была остановлена - пожалуйста, перезагрузите после вызова"

    .line 260
    :goto_6
    :try_start_6
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    invoke-interface {v6}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->isToastsAllowed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 261
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 268
    :cond_5
    :goto_7
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean v9, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isRecording:Z

    .line 270
    .end local v1           #msg:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    if-nez v6, :cond_9

    .line 301
    :goto_8
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 231
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #msg:Ljava/lang/String;
    :cond_7
    :try_start_8
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->stop()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 253
    :goto_9
    :try_start_9
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->reset()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 254
    :catch_2
    move-exception v6

    goto :goto_5

    .line 257
    :cond_8
    const-string v1, "Запись остановлена"

    goto :goto_6

    .line 263
    :catch_3
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 274
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_c

    :try_start_a
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->USER:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-ne v6, v7, :cond_c

    .line 275
    :cond_a
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 276
    .local v5, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_b

    .line 277
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-virtual {v6}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->promptForSave()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4

    .line 295
    .end local v5           #telMgr:Landroid/telephony/TelephonyManager;
    :cond_b
    :goto_a
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    sget-object v7, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    iput-object v7, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 297
    sput-boolean v9, Lcom/killermobile/totalrecall/s2/trial/WizardState;->CURRENTLY_RECORDING:Z

    .line 299
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.killermobile.totalrecall.QuickRecorderWidget.FORCE_REFRESH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 279
    :cond_c
    :try_start_b
    iget-object v6, p0, Lcom/killermobile/totalrecall/s2/trial/WizardState;->service:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    if-eqz v6, :cond_b

    .line 280
    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;

    invoke-direct {v4, p0}, Lcom/killermobile/totalrecall/s2/trial/WizardState$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/WizardState;)V

    .line 289
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_a

    .line 292
    .end local v4           #t:Ljava/lang/Thread;
    :catch_4
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_a

    .line 251
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #msg:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto :goto_9

    .line 213
    .end local v1           #msg:Ljava/lang/String;
    :catch_6
    move-exception v6

    goto/16 :goto_3

    .line 209
    :catch_7
    move-exception v6

    goto/16 :goto_2

    .line 202
    :catch_8
    move-exception v6

    goto/16 :goto_1

    .line 198
    :catch_9
    move-exception v6

    goto/16 :goto_0
.end method
