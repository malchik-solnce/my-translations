.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoTests"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$Test:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$Test()[I
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$Test:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->values()[Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->A:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->B:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->C:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->Dictaphone:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->DictaphoneWithSpeakerphone:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->dummy:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$Test:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetRecordingConditions(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 2
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 382
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->BOTH:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V

    .line 383
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMinDurationEnabled(Z)V

    .line 384
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setMaxDurationEnabled(Z)V

    .line 385
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 386
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 387
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    .line 388
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordingWakeLock(Z)V

    .line 389
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecordAfterCallStart(Z)V

    .line 390
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSpeakerPhone(Z)V

    .line 391
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setStreamSolo(Z)V

    .line 392
    invoke-interface {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setPrompt(Z)V

    .line 393
    return-void
.end method

.method static setTestConditions(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 3
    .parameter "testNumber"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->resetRecordingConditions(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V

    .line 324
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$AutoTests;->$SWITCH_TABLE$com$killermobile$totalrecall$s2$trial$RecordingSettingsWizard$Test()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$Test;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 326
    :pswitch_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    goto :goto_0

    .line 329
    :pswitch_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    goto :goto_0

    .line 332
    :pswitch_2
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    goto :goto_0

    .line 335
    :pswitch_3
    invoke-interface {p1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 336
    invoke-interface {p1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 337
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V

    goto :goto_0

    .line 340
    :pswitch_4
    invoke-interface {p1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStartRecording(Z)V

    .line 341
    invoke-interface {p1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setDictAutoStopRecording(Z)V

    .line 342
    sget-object v0, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V

    .line 343
    invoke-interface {p1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setSpeakerPhone(Z)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
